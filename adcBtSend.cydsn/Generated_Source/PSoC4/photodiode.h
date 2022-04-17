/*******************************************************************************
* File Name: photodiode.h  
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

#if !defined(CY_PINS_photodiode_H) /* Pins photodiode_H */
#define CY_PINS_photodiode_H

#include "cytypes.h"
#include "cyfitter.h"
#include "photodiode_aliases.h"


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
} photodiode_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   photodiode_Read(void);
void    photodiode_Write(uint8 value);
uint8   photodiode_ReadDataReg(void);
#if defined(photodiode__PC) || (CY_PSOC4_4200L) 
    void    photodiode_SetDriveMode(uint8 mode);
#endif
void    photodiode_SetInterruptMode(uint16 position, uint16 mode);
uint8   photodiode_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void photodiode_Sleep(void); 
void photodiode_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(photodiode__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define photodiode_DRIVE_MODE_BITS        (3)
    #define photodiode_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - photodiode_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the photodiode_SetDriveMode() function.
         *  @{
         */
        #define photodiode_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define photodiode_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define photodiode_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define photodiode_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define photodiode_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define photodiode_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define photodiode_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define photodiode_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define photodiode_MASK               photodiode__MASK
#define photodiode_SHIFT              photodiode__SHIFT
#define photodiode_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in photodiode_SetInterruptMode() function.
     *  @{
     */
        #define photodiode_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define photodiode_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define photodiode_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define photodiode_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(photodiode__SIO)
    #define photodiode_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(photodiode__PC) && (CY_PSOC4_4200L)
    #define photodiode_USBIO_ENABLE               ((uint32)0x80000000u)
    #define photodiode_USBIO_DISABLE              ((uint32)(~photodiode_USBIO_ENABLE))
    #define photodiode_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define photodiode_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define photodiode_USBIO_ENTER_SLEEP          ((uint32)((1u << photodiode_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << photodiode_USBIO_SUSPEND_DEL_SHIFT)))
    #define photodiode_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << photodiode_USBIO_SUSPEND_SHIFT)))
    #define photodiode_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << photodiode_USBIO_SUSPEND_DEL_SHIFT)))
    #define photodiode_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(photodiode__PC)
    /* Port Configuration */
    #define photodiode_PC                 (* (reg32 *) photodiode__PC)
#endif
/* Pin State */
#define photodiode_PS                     (* (reg32 *) photodiode__PS)
/* Data Register */
#define photodiode_DR                     (* (reg32 *) photodiode__DR)
/* Input Buffer Disable Override */
#define photodiode_INP_DIS                (* (reg32 *) photodiode__PC2)

/* Interrupt configuration Registers */
#define photodiode_INTCFG                 (* (reg32 *) photodiode__INTCFG)
#define photodiode_INTSTAT                (* (reg32 *) photodiode__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define photodiode_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(photodiode__SIO)
    #define photodiode_SIO_REG            (* (reg32 *) photodiode__SIO)
#endif /* (photodiode__SIO_CFG) */

/* USBIO registers */
#if !defined(photodiode__PC) && (CY_PSOC4_4200L)
    #define photodiode_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define photodiode_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define photodiode_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define photodiode_DRIVE_MODE_SHIFT       (0x00u)
#define photodiode_DRIVE_MODE_MASK        (0x07u << photodiode_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins photodiode_H */


/* [] END OF FILE */
