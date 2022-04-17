/*******************************************************************************
* File Name: OA1out.c  
* Version 2.20
*
* Description:
*  This file contains APIs to set up the Pins component for low power modes.
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "cytypes.h"
#include "OA1out.h"

static OA1out_BACKUP_STRUCT  OA1out_backup = {0u, 0u, 0u};


/*******************************************************************************
* Function Name: OA1out_Sleep
****************************************************************************//**
*
* \brief Stores the pin configuration and prepares the pin for entering chip 
*  deep-sleep/hibernate modes. This function applies only to SIO and USBIO pins.
*  It should not be called for GPIO or GPIO_OVT pins.
*
* <b>Note</b> This function is available in PSoC 4 only.
*
* \return 
*  None 
*  
* \sideeffect
*  For SIO pins, this function configures the pin input threshold to CMOS and
*  drive level to Vddio. This is needed for SIO pins when in device 
*  deep-sleep/hibernate modes.
*
* \funcusage
*  \snippet OA1out_SUT.c usage_OA1out_Sleep_Wakeup
*******************************************************************************/
void OA1out_Sleep(void)
{
    #if defined(OA1out__PC)
        OA1out_backup.pcState = OA1out_PC;
    #else
        #if (CY_PSOC4_4200L)
            /* Save the regulator state and put the PHY into suspend mode */
            OA1out_backup.usbState = OA1out_CR1_REG;
            OA1out_USB_POWER_REG |= OA1out_USBIO_ENTER_SLEEP;
            OA1out_CR1_REG &= OA1out_USBIO_CR1_OFF;
        #endif
    #endif
    #if defined(CYIPBLOCK_m0s8ioss_VERSION) && defined(OA1out__SIO)
        OA1out_backup.sioState = OA1out_SIO_REG;
        /* SIO requires unregulated output buffer and single ended input buffer */
        OA1out_SIO_REG &= (uint32)(~OA1out_SIO_LPM_MASK);
    #endif  
}


/*******************************************************************************
* Function Name: OA1out_Wakeup
****************************************************************************//**
*
* \brief Restores the pin configuration that was saved during Pin_Sleep(). This 
* function applies only to SIO and USBIO pins. It should not be called for
* GPIO or GPIO_OVT pins.
*
* For USBIO pins, the wakeup is only triggered for falling edge interrupts.
*
* <b>Note</b> This function is available in PSoC 4 only.
*
* \return 
*  None
*  
* \funcusage
*  Refer to OA1out_Sleep() for an example usage.
*******************************************************************************/
void OA1out_Wakeup(void)
{
    #if defined(OA1out__PC)
        OA1out_PC = OA1out_backup.pcState;
    #else
        #if (CY_PSOC4_4200L)
            /* Restore the regulator state and come out of suspend mode */
            OA1out_USB_POWER_REG &= OA1out_USBIO_EXIT_SLEEP_PH1;
            OA1out_CR1_REG = OA1out_backup.usbState;
            OA1out_USB_POWER_REG &= OA1out_USBIO_EXIT_SLEEP_PH2;
        #endif
    #endif
    #if defined(CYIPBLOCK_m0s8ioss_VERSION) && defined(OA1out__SIO)
        OA1out_SIO_REG = OA1out_backup.sioState;
    #endif
}


/* [] END OF FILE */
