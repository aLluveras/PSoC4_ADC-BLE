/*******************************************************************************
* File Name: b.h  
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

#if !defined(CY_PINS_b_H) /* Pins b_H */
#define CY_PINS_b_H

#include "cytypes.h"
#include "cyfitter.h"
#include "b_aliases.h"


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
} b_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   b_Read(void);
void    b_Write(uint8 value);
uint8   b_ReadDataReg(void);
#if defined(b__PC) || (CY_PSOC4_4200L) 
    void    b_SetDriveMode(uint8 mode);
#endif
void    b_SetInterruptMode(uint16 position, uint16 mode);
uint8   b_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void b_Sleep(void); 
void b_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(b__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define b_DRIVE_MODE_BITS        (3)
    #define b_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - b_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the b_SetDriveMode() function.
         *  @{
         */
        #define b_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define b_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define b_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define b_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define b_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define b_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define b_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define b_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define b_MASK               b__MASK
#define b_SHIFT              b__SHIFT
#define b_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in b_SetInterruptMode() function.
     *  @{
     */
        #define b_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define b_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define b_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define b_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(b__SIO)
    #define b_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(b__PC) && (CY_PSOC4_4200L)
    #define b_USBIO_ENABLE               ((uint32)0x80000000u)
    #define b_USBIO_DISABLE              ((uint32)(~b_USBIO_ENABLE))
    #define b_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define b_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define b_USBIO_ENTER_SLEEP          ((uint32)((1u << b_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << b_USBIO_SUSPEND_DEL_SHIFT)))
    #define b_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << b_USBIO_SUSPEND_SHIFT)))
    #define b_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << b_USBIO_SUSPEND_DEL_SHIFT)))
    #define b_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(b__PC)
    /* Port Configuration */
    #define b_PC                 (* (reg32 *) b__PC)
#endif
/* Pin State */
#define b_PS                     (* (reg32 *) b__PS)
/* Data Register */
#define b_DR                     (* (reg32 *) b__DR)
/* Input Buffer Disable Override */
#define b_INP_DIS                (* (reg32 *) b__PC2)

/* Interrupt configuration Registers */
#define b_INTCFG                 (* (reg32 *) b__INTCFG)
#define b_INTSTAT                (* (reg32 *) b__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define b_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(b__SIO)
    #define b_SIO_REG            (* (reg32 *) b__SIO)
#endif /* (b__SIO_CFG) */

/* USBIO registers */
#if !defined(b__PC) && (CY_PSOC4_4200L)
    #define b_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define b_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define b_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define b_DRIVE_MODE_SHIFT       (0x00u)
#define b_DRIVE_MODE_MASK        (0x07u << b_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins b_H */


/* [] END OF FILE */
