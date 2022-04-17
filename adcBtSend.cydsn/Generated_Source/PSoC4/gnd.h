/*******************************************************************************
* File Name: gnd.h  
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

#if !defined(CY_PINS_gnd_H) /* Pins gnd_H */
#define CY_PINS_gnd_H

#include "cytypes.h"
#include "cyfitter.h"
#include "gnd_aliases.h"


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
} gnd_BACKUP_STRUCT;

/** @} structures */


/***************************************
*        Function Prototypes             
***************************************/
/**
* \addtogroup group_general
* @{
*/
uint8   gnd_Read(void);
void    gnd_Write(uint8 value);
uint8   gnd_ReadDataReg(void);
#if defined(gnd__PC) || (CY_PSOC4_4200L) 
    void    gnd_SetDriveMode(uint8 mode);
#endif
void    gnd_SetInterruptMode(uint16 position, uint16 mode);
uint8   gnd_ClearInterrupt(void);
/** @} general */

/**
* \addtogroup group_power
* @{
*/
void gnd_Sleep(void); 
void gnd_Wakeup(void);
/** @} power */


/***************************************
*           API Constants        
***************************************/
#if defined(gnd__PC) || (CY_PSOC4_4200L) 
    /* Drive Modes */
    #define gnd_DRIVE_MODE_BITS        (3)
    #define gnd_DRIVE_MODE_IND_MASK    (0xFFFFFFFFu >> (32 - gnd_DRIVE_MODE_BITS))

    /**
    * \addtogroup group_constants
    * @{
    */
        /** \addtogroup driveMode Drive mode constants
         * \brief Constants to be passed as "mode" parameter in the gnd_SetDriveMode() function.
         *  @{
         */
        #define gnd_DM_ALG_HIZ         (0x00u) /**< \brief High Impedance Analog   */
        #define gnd_DM_DIG_HIZ         (0x01u) /**< \brief High Impedance Digital  */
        #define gnd_DM_RES_UP          (0x02u) /**< \brief Resistive Pull Up       */
        #define gnd_DM_RES_DWN         (0x03u) /**< \brief Resistive Pull Down     */
        #define gnd_DM_OD_LO           (0x04u) /**< \brief Open Drain, Drives Low  */
        #define gnd_DM_OD_HI           (0x05u) /**< \brief Open Drain, Drives High */
        #define gnd_DM_STRONG          (0x06u) /**< \brief Strong Drive            */
        #define gnd_DM_RES_UPDWN       (0x07u) /**< \brief Resistive Pull Up/Down  */
        /** @} driveMode */
    /** @} group_constants */
#endif

/* Digital Port Constants */
#define gnd_MASK               gnd__MASK
#define gnd_SHIFT              gnd__SHIFT
#define gnd_WIDTH              1u

/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in gnd_SetInterruptMode() function.
     *  @{
     */
        #define gnd_INTR_NONE      ((uint16)(0x0000u)) /**< \brief Disabled             */
        #define gnd_INTR_RISING    ((uint16)(0x5555u)) /**< \brief Rising edge trigger  */
        #define gnd_INTR_FALLING   ((uint16)(0xaaaau)) /**< \brief Falling edge trigger */
        #define gnd_INTR_BOTH      ((uint16)(0xffffu)) /**< \brief Both edge trigger    */
    /** @} intrMode */
/** @} group_constants */

/* SIO LPM definition */
#if defined(gnd__SIO)
    #define gnd_SIO_LPM_MASK       (0x03u)
#endif

/* USBIO definitions */
#if !defined(gnd__PC) && (CY_PSOC4_4200L)
    #define gnd_USBIO_ENABLE               ((uint32)0x80000000u)
    #define gnd_USBIO_DISABLE              ((uint32)(~gnd_USBIO_ENABLE))
    #define gnd_USBIO_SUSPEND_SHIFT        CYFLD_USBDEVv2_USB_SUSPEND__OFFSET
    #define gnd_USBIO_SUSPEND_DEL_SHIFT    CYFLD_USBDEVv2_USB_SUSPEND_DEL__OFFSET
    #define gnd_USBIO_ENTER_SLEEP          ((uint32)((1u << gnd_USBIO_SUSPEND_SHIFT) \
                                                        | (1u << gnd_USBIO_SUSPEND_DEL_SHIFT)))
    #define gnd_USBIO_EXIT_SLEEP_PH1       ((uint32)~((uint32)(1u << gnd_USBIO_SUSPEND_SHIFT)))
    #define gnd_USBIO_EXIT_SLEEP_PH2       ((uint32)~((uint32)(1u << gnd_USBIO_SUSPEND_DEL_SHIFT)))
    #define gnd_USBIO_CR1_OFF              ((uint32)0xfffffffeu)
#endif


/***************************************
*             Registers        
***************************************/
/* Main Port Registers */
#if defined(gnd__PC)
    /* Port Configuration */
    #define gnd_PC                 (* (reg32 *) gnd__PC)
#endif
/* Pin State */
#define gnd_PS                     (* (reg32 *) gnd__PS)
/* Data Register */
#define gnd_DR                     (* (reg32 *) gnd__DR)
/* Input Buffer Disable Override */
#define gnd_INP_DIS                (* (reg32 *) gnd__PC2)

/* Interrupt configuration Registers */
#define gnd_INTCFG                 (* (reg32 *) gnd__INTCFG)
#define gnd_INTSTAT                (* (reg32 *) gnd__INTSTAT)

/* "Interrupt cause" register for Combined Port Interrupt (AllPortInt) in GSRef component */
#if defined (CYREG_GPIO_INTR_CAUSE)
    #define gnd_INTR_CAUSE         (* (reg32 *) CYREG_GPIO_INTR_CAUSE)
#endif

/* SIO register */
#if defined(gnd__SIO)
    #define gnd_SIO_REG            (* (reg32 *) gnd__SIO)
#endif /* (gnd__SIO_CFG) */

/* USBIO registers */
#if !defined(gnd__PC) && (CY_PSOC4_4200L)
    #define gnd_USB_POWER_REG       (* (reg32 *) CYREG_USBDEVv2_USB_POWER_CTRL)
    #define gnd_CR1_REG             (* (reg32 *) CYREG_USBDEVv2_CR1)
    #define gnd_USBIO_CTRL_REG      (* (reg32 *) CYREG_USBDEVv2_USB_USBIO_CTRL)
#endif    
    
    
/***************************************
* The following code is DEPRECATED and 
* must not be used in new designs.
***************************************/
/**
* \addtogroup group_deprecated
* @{
*/
#define gnd_DRIVE_MODE_SHIFT       (0x00u)
#define gnd_DRIVE_MODE_MASK        (0x07u << gnd_DRIVE_MODE_SHIFT)
/** @} deprecated */

#endif /* End Pins gnd_H */


/* [] END OF FILE */
