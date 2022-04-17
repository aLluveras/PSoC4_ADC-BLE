/*******************************************************************************
* File Name: inp.h  
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

#if !defined(CY_PINS_inp_ALIASES_H) /* Pins inp_ALIASES_H */
#define CY_PINS_inp_ALIASES_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"


/***************************************
*              Constants        
***************************************/
#define inp_0			(inp__0__PC)
#define inp_0_PS		(inp__0__PS)
#define inp_0_PC		(inp__0__PC)
#define inp_0_DR		(inp__0__DR)
#define inp_0_SHIFT	(inp__0__SHIFT)
#define inp_0_INTR	((uint16)((uint16)0x0003u << (inp__0__SHIFT*2u)))

#define inp_INTR_ALL	 ((uint16)(inp_0_INTR))


#endif /* End Pins inp_ALIASES_H */


/* [] END OF FILE */
