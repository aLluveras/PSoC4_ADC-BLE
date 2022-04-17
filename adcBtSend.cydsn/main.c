
#include "project.h"
#include "stdio.h"
#include "stdlib.h"      
#include "string.h"
 
uint8 number_read = 0;
uint8 number_write = 0;
uint8 number_notify[2];
uint8 number_indicate = 0;
uint8 notification_enabled = 0; 
uint8 indication_enabled = 0; 


int16 entero;

CYBLE_GATT_HANDLE_VALUE_PAIR_T update;


void BLECallBack(uint32 event, void *eventParam)
{
    CYBLE_GATTS_WRITE_REQ_PARAM_T *wrReqParam;
    
    switch (event)
    {
        /*Handle Connection Events*/ 
        case CYBLE_EVT_STACK_ON:
		{
	        CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST); // Start advertising 
            break; 
        }
        
        case CYBLE_EVT_GAP_DEVICE_DISCONNECTED:
        {
           CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);  // Restart advertising
           break; 
        }
        
        case CYBLE_EVT_GAP_DEVICE_CONNECTED:
        { 
          CyBle_GappStopAdvertisement(); 

           break; 
            
        } 
        
        
        case CYBLE_EVT_GATTS_WRITE_REQ: //Write with response
	    case CYBLE_EVT_GATTS_WRITE_CMD_REQ: //Write without response
        {
            wrReqParam = (CYBLE_GATTS_WRITE_REQ_PARAM_T *) eventParam; //read in event command 
               
            if(wrReqParam->handleValPair.attrHandle == CYBLE_NUMBER_NUMBER_WRITE_CHAR_HANDLE)  //If client writes to the number_write characteristic 
    	        {
                    number_write = wrReqParam->handleValPair.value.val[0]; //Pull out the number_write value
                    if (number_write != 0) //If Client wrote anything other than 0, increment number_read++
                    { 
                        number_read++;
                        number_write =0; 
                        
                        /*update read characteristic*/ 
                        CYBLE_GATT_HANDLE_VALUE_PAIR_T Number_R;  
                        Number_R.attrHandle= CYBLE_NUMBER_NUMBER_READ_CHAR_HANDLE;  
                        Number_R.value.val = &number_read; 
                        Number_R.value.len = 1;
                        CyBle_GattsWriteAttributeValue(&Number_R, 0, &cyBle_connHandle, CYBLE_GATT_DB_LOCALLY_INITIATED); 
                        
                    } 
                     
                    
                }
                
            if(wrReqParam->handleValPair.attrHandle == CYBLE_NUMBER_NUMBER_NOTIFY_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE)
                {
                     if (0 == (wrReqParam->handleValPair.value.val[0]))
                        {
                           notification_enabled = 0;  
                        }
                        
                     else if (1 == (wrReqParam->handleValPair.value.val[0]))
                        {
                          notification_enabled = 1; 
                        
                        update.attrHandle=CYBLE_NUMBER_NUMBER_NOTIFY_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE;
                        update.value.val=&wrReqParam->handleValPair.value.val[0];
                        update.value.len=2;
                        CyBle_GattsWriteAttributeValue(&update, 0, &cyBle_connHandle, CYBLE_GATT_DB_LOCALLY_INITIATED);

                        }
                        
                     else if(4 <= (wrReqParam->handleValPair.value.val[0]))
                        {
                          //Invalid PDU, stop notifications
                          notification_enabled = 0; 
                          
                          //Inform the user
                          CYBLE_GATTS_ERR_PARAM_T error_param;

                          error_param.opcode = CYBLE_GATT_WRITE_REQ;
                          error_param.attrHandle = wrReqParam->handleValPair.attrHandle;
                          error_param.errorCode = 0x04;
                            
                          //Send Error Response 
                          (void)CyBle_GattsErrorRsp(cyBle_connHandle, &error_param);
                        
                        }
                }   
                
             if(wrReqParam->handleValPair.attrHandle == CYBLE_NUMBER_NUMBER_INDICATE_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE)
                {
                     if (0 == (wrReqParam->handleValPair.value.val[CYBLE_NUMBER_NUMBER_INDICATE_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX]))
                        {
                           indication_enabled = 0;  
                        }
                        
                     else if(1 == (wrReqParam->handleValPair.value.val[CYBLE_NUMBER_NUMBER_INDICATE_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX]))
                        {
                          indication_enabled = 1; 
                        }
                        
                     else if (4 <= (wrReqParam->handleValPair.value.val[CYBLE_NUMBER_NUMBER_INDICATE_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX]))
                        {
                          //Invalid PDU, stop notifications
                          indication_enabled = 0; 
                          
                          //Inform the user
                          CYBLE_GATTS_ERR_PARAM_T error_param;

                          error_param.opcode = CYBLE_GATT_WRITE_REQ;
                          error_param.attrHandle = wrReqParam->handleValPair.attrHandle;
                          error_param.errorCode = 0x04;
                            
                          //Send Error Response 
                          (void)CyBle_GattsErrorRsp(cyBle_connHandle, &error_param);
                        
                        }
                }   
            
            
            if (event == CYBLE_EVT_GATTS_WRITE_REQ) 
			    {
	                CyBle_GattsWriteRsp(cyBle_connHandle);
			    }             
           
            break; 
        }
        
        case CYBLE_EVT_GATTS_HANDLE_VALUE_CNF:
        {
            indication_enabled = 1; //If confirmation from GATT Client is recieved, re-enable indications. 
            break; 
        }
       
        
    }
      
}



int main(void)
{
    CyGlobalIntEnable;

    CyBle_Start(BLECallBack);
    CYBLE_GATTS_HANDLE_VALUE_NTF_T notificationHandle; 
    CYBLE_GATTS_HANDLE_VALUE_IND_T indicationHandle; 
    
    
        Opamp_Start();
        ADC_SAR_Start();
    

    for(;;)
    {
       CyBle_ProcessEvents();
    
     ADC_SAR_StartConvert();
     ADC_SAR_IsEndConversion(ADC_SAR_WAIT_FOR_RESULT);
     entero = ADC_SAR_GetResult16(0);
     ADC_SAR_StopConvert();
    
    
        if (notification_enabled == 1) //If notifications enabled, increment the number and send its value as a notification
        {
           number_notify[0]=(entero>>8);
           number_notify[1]=entero;
        
            // Update Notification handle with new data
            notificationHandle.attrHandle = CYBLE_NUMBER_NUMBER_NOTIFY_CHAR_HANDLE;
            notificationHandle.value.val = number_notify;
            notificationHandle.value.len = 2;
            
            
            // Send Notification
            CyBle_GattsNotification(cyBle_connHandle, &notificationHandle);
            CyDelay(10); //Delay to make sure the user doesn't get flooded with notifications between when they send the request to disable the notification and when GATT Server actually disables the notification
       }
        
        if (indication_enabled == 1) //If notifications enabled, increment the number and send its value as a indication
        {
            number_indicate=99; 
           //  Update Indication handle with new data
            indicationHandle.attrHandle = CYBLE_NUMBER_NUMBER_INDICATE_CHAR_HANDLE;
            indicationHandle.value.val = &number_indicate;
            indicationHandle.value.len = 1;
            
            // Send Indication
            CyBle_GattsIndication(cyBle_connHandle, &indicationHandle);
            CyDelay(10); //Short delay to make sure the user doesn't get flooded with indications between when they send the request to disable the notification and when GATT Server actually disables the notification
            
        }
        
    }
}

/* [] END OF FILE */
