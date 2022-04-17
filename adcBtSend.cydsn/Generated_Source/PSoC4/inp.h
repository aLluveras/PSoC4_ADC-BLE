/*******************************************************************************
* File Name: inp.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_inp_H) /* Pins inp_H */
#define CY_PINS_inp_H

#include "cytypes.h"
#include "cyfitter.h"
#include "inp_aliases.h"


/***************************************
*     Data Struct Definitions
***************************************/

/**
* \addtogroup group_structures
* @{
*/
    
/* Structure for sleep mode support */
typedef struct
{
    uint32 pcState; /**< State of the port control register */
    uint32 sioState; /**< State of the SIO configuration */
    uint32 usbState; /**< State of the USBIO regulator */
} inp_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   inp_Read(void);
void    inp_Write(uint8 value);
uint8   inp_ReadDataReg(void);
#if defined(inp__PC) || (CY_PSOC4_4200L) 
    void    inp_SetDriveMode(uint8 mode);
#endif
void    inp_SetInterruptMode(uint16 position, uint16 mode);
uint8   inp_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void inp_Sleep(void); 
void inp_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(inp__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define inp_DRIVE_MODE_BITS        (3)
    #define inp_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - inp_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the inp_SetDriveMode() function.
         *  @{
         */
        #define inp_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define inp_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define inp_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define inp_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define inp_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define inp_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define inp_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define inp_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define inp_MASK               inp__MASK
#define inp_SHIFT              inp__SHIFT
#define inp_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in inp_SetInterruptMode() function.
     *  @{
     */
        #define inp_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define inp_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define inp_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define inp_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(inp__SIO)
    #define inp_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(inp__PC) && (CY_PSOC4_4200L)
    #define inp_USBIO_ENABLE               ((uint32)0x80000000u)
    #define inp_USBIO_DISABLE              ((uint32)(~inp_USBIO_ENABLE))
    #define inp_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define inp_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define inp_USBIO_ENTER_SLEEP          ((uint32)((1u << inp_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << inp_USBIO_SUSPEND_DEL_SHIFT)))
    #define inp_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << inp_USBIO_SUSPEND_SHIFT)))
    #define inp_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << inp_USBIO_SUSPEND_DEL_SHIFT)))
    #define inp_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(inp__PC)
    /* Port Configuration */
    #define inp_PC                 (* (reg32 *) inp__PC)
#endif
/* Pin State */
#define inp_PS                     (* (reg32 *) inp__PS)
/* Data Register */
#define inp_DR                     (* (reg32 *) inp__DR)
/* Input Buffer Disable Override */
#define inp_INP_DIS                (* (reg32 *) inp__PC2)

/* Interrupt configuration Registers */
#define inp_INTCFG                 (* (reg32 *) inp__INTCFG)
#define inp_INTSTAT                (* (reg32 *) inp__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define inp_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(inp__SIO)
    #define inp_SIO_REG            (* (reg32 *) inp__SIO)
#endif /* (inp__SIO_CFG) */

/* USBIO registers */
#if !defined(inp__PC) && (CY_PSOC4_4200L)
    #define inp_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define inp_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define inp_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define inp_DRIVE_MODE_SHIFT       (0x00u)
#define inp_DRIVE_MODE_MASK        (0x07u << inp_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins inp_H */


/* [] END OF FILE */
