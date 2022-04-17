/*******************************************************************************
* File Name: photodiode.h  
* Version 2.20
*
* Description:
*  This file contains the Alias definitions for Per-Pin APIs in cypins.h. 
*  Information on using these APIs can be found in the System Reference Guide.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_photodiode_ALIASES_H) /* Pins photodiode_ALIASES_H */
#define CY_PINS_photodiode_ALIASES_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"


/***************************************
*              Constants        
***************************************/
#define photodiode_0			(photodiode__0__PC)
#define photodiode_0_PS		(photodiode__0__PS)
#define photodiode_0_PC		(photodiode__0__PC)
#define photodiode_0_DR		(photodiode__0__DR)
#define photodiode_0_SHIFT	(photodiode__0__SHIFT)
#define photodiode_0_INTR	((uint16)((uint16)0x0003u << (photodiode__0__SHIFT*2u)))

#define photodiode_INTR_ALL	 ((uint16)(photodiode_0_INTR))


#endif /* End Pins photodiode_ALIASES_H */


/* [] END OF FILE */
