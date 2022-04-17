/*******************************************************************************
* File Name: gnd_1.h  
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

#if !defined(CY_PINS_gnd_1_H) /* Pins gnd_1_H */
#define CY_PINS_gnd_1_H

#include "cytypes.h"
#include "cyfitter.h"
#include "gnd_1_aliases.h"


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
} gnd_1_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   gnd_1_Read(void);
void    gnd_1_Write(uint8 value);
uint8   gnd_1_ReadDataReg(void);
#if defined(gnd_1__PC) || (CY_PSOC4_4200L) 
    void    gnd_1_SetDriveMode(uint8 mode);
#endif
void    gnd_1_SetInterruptMode(uint16 position, uint16 mode);
uint8   gnd_1_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void gnd_1_Sleep(void); 
void gnd_1_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(gnd_1__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define gnd_1_DRIVE_MODE_BITS        (3)
    #define gnd_1_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - gnd_1_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the gnd_1_SetDriveMode() function.
         *  @{
         */
        #define gnd_1_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define gnd_1_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define gnd_1_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define gnd_1_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define gnd_1_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define gnd_1_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define gnd_1_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define gnd_1_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define gnd_1_MASK               gnd_1__MASK
#define gnd_1_SHIFT              gnd_1__SHIFT
#define gnd_1_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in gnd_1_SetInterruptMode() function.
     *  @{
     */
        #define gnd_1_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define gnd_1_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define gnd_1_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define gnd_1_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(gnd_1__SIO)
    #define gnd_1_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(gnd_1__PC) && (CY_PSOC4_4200L)
    #define gnd_1_USBIO_ENABLE               ((uint32)0x80000000u)
    #define gnd_1_USBIO_DISABLE              ((uint32)(~gnd_1_USBIO_ENABLE))
    #define gnd_1_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define gnd_1_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define gnd_1_USBIO_ENTER_SLEEP          ((uint32)((1u << gnd_1_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << gnd_1_USBIO_SUSPEND_DEL_SHIFT)))
    #define gnd_1_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << gnd_1_USBIO_SUSPEND_SHIFT)))
    #define gnd_1_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << gnd_1_USBIO_SUSPEND_DEL_SHIFT)))
    #define gnd_1_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(gnd_1__PC)
    /* Port Configuration */
    #define gnd_1_PC                 (* (reg32 *) gnd_1__PC)
#endif
/* Pin State */
#define gnd_1_PS                     (* (reg32 *) gnd_1__PS)
/* Data Register */
#define gnd_1_DR                     (* (reg32 *) gnd_1__DR)
/* Input Buffer Disable Override */
#define gnd_1_INP_DIS                (* (reg32 *) gnd_1__PC2)

/* Interrupt configuration Registers */
#define gnd_1_INTCFG                 (* (reg32 *) gnd_1__INTCFG)
#define gnd_1_INTSTAT                (* (reg32 *) gnd_1__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define gnd_1_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(gnd_1__SIO)
    #define gnd_1_SIO_REG            (* (reg32 *) gnd_1__SIO)
#endif /* (gnd_1__SIO_CFG) */

/* USBIO registers */
#if !defined(gnd_1__PC) && (CY_PSOC4_4200L)
    #define gnd_1_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define gnd_1_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define gnd_1_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define gnd_1_DRIVE_MODE_SHIFT       (0x00u)
#define gnd_1_DRIVE_MODE_MASK        (0x07u << gnd_1_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins gnd_1_H */


/* [] END OF FILE */
