/*******************************************************************************
* File Name: c.h  
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

#if !defined(CY_PINS_c_H) /* Pins c_H */
#define CY_PINS_c_H

#include "cytypes.h"
#include "cyfitter.h"
#include "c_aliases.h"


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
} c_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   c_Read(void);
void    c_Write(uint8 value);
uint8   c_ReadDataReg(void);
#if defined(c__PC) || (CY_PSOC4_4200L) 
    void    c_SetDriveMode(uint8 mode);
#endif
void    c_SetInterruptMode(uint16 position, uint16 mode);
uint8   c_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void c_Sleep(void); 
void c_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(c__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define c_DRIVE_MODE_BITS        (3)
    #define c_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - c_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the c_SetDriveMode() function.
         *  @{
         */
        #define c_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define c_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define c_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define c_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define c_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define c_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define c_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define c_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define c_MASK               c__MASK
#define c_SHIFT              c__SHIFT
#define c_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in c_SetInterruptMode() function.
     *  @{
     */
        #define c_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define c_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define c_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define c_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(c__SIO)
    #define c_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(c__PC) && (CY_PSOC4_4200L)
    #define c_USBIO_ENABLE               ((uint32)0x80000000u)
    #define c_USBIO_DISABLE              ((uint32)(~c_USBIO_ENABLE))
    #define c_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define c_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define c_USBIO_ENTER_SLEEP          ((uint32)((1u << c_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << c_USBIO_SUSPEND_DEL_SHIFT)))
    #define c_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << c_USBIO_SUSPEND_SHIFT)))
    #define c_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << c_USBIO_SUSPEND_DEL_SHIFT)))
    #define c_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(c__PC)
    /* Port Configuration */
    #define c_PC                 (* (reg32 *) c__PC)
#endif
/* Pin State */
#define c_PS                     (* (reg32 *) c__PS)
/* Data Register */
#define c_DR                     (* (reg32 *) c__DR)
/* Input Buffer Disable Override */
#define c_INP_DIS                (* (reg32 *) c__PC2)

/* Interrupt configuration Registers */
#define c_INTCFG                 (* (reg32 *) c__INTCFG)
#define c_INTSTAT                (* (reg32 *) c__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define c_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(c__SIO)
    #define c_SIO_REG            (* (reg32 *) c__SIO)
#endif /* (c__SIO_CFG) */

/* USBIO registers */
#if !defined(c__PC) && (CY_PSOC4_4200L)
    #define c_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define c_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define c_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define c_DRIVE_MODE_SHIFT       (0x00u)
#define c_DRIVE_MODE_MASK        (0x07u << c_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins c_H */


/* [] END OF FILE */
