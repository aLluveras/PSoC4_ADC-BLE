/*******************************************************************************
* File Name: a.h  
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

#if !defined(CY_PINS_a_H) /* Pins a_H */
#define CY_PINS_a_H

#include "cytypes.h"
#include "cyfitter.h"
#include "a_aliases.h"


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
} a_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   a_Read(void);
void    a_Write(uint8 value);
uint8   a_ReadDataReg(void);
#if defined(a__PC) || (CY_PSOC4_4200L) 
    void    a_SetDriveMode(uint8 mode);
#endif
void    a_SetInterruptMode(uint16 position, uint16 mode);
uint8   a_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void a_Sleep(void); 
void a_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(a__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define a_DRIVE_MODE_BITS        (3)
    #define a_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - a_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the a_SetDriveMode() function.
         *  @{
         */
        #define a_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define a_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define a_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define a_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define a_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define a_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define a_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define a_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define a_MASK               a__MASK
#define a_SHIFT              a__SHIFT
#define a_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in a_SetInterruptMode() function.
     *  @{
     */
        #define a_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define a_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define a_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define a_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(a__SIO)
    #define a_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(a__PC) && (CY_PSOC4_4200L)
    #define a_USBIO_ENABLE               ((uint32)0x80000000u)
    #define a_USBIO_DISABLE              ((uint32)(~a_USBIO_ENABLE))
    #define a_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define a_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define a_USBIO_ENTER_SLEEP          ((uint32)((1u << a_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << a_USBIO_SUSPEND_DEL_SHIFT)))
    #define a_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << a_USBIO_SUSPEND_SHIFT)))
    #define a_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << a_USBIO_SUSPEND_DEL_SHIFT)))
    #define a_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(a__PC)
    /* Port Configuration */
    #define a_PC                 (* (reg32 *) a__PC)
#endif
/* Pin State */
#define a_PS                     (* (reg32 *) a__PS)
/* Data Register */
#define a_DR                     (* (reg32 *) a__DR)
/* Input Buffer Disable Override */
#define a_INP_DIS                (* (reg32 *) a__PC2)

/* Interrupt configuration Registers */
#define a_INTCFG                 (* (reg32 *) a__INTCFG)
#define a_INTSTAT                (* (reg32 *) a__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define a_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(a__SIO)
    #define a_SIO_REG            (* (reg32 *) a__SIO)
#endif /* (a__SIO_CFG) */

/* USBIO registers */
#if !defined(a__PC) && (CY_PSOC4_4200L)
    #define a_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define a_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define a_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define a_DRIVE_MODE_SHIFT       (0x00u)
#define a_DRIVE_MODE_MASK        (0x07u << a_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins a_H */


/* [] END OF FILE */
