/****************************************************************************/
/*                                                                          */
/*                        LIEBHERR  Litronic                                */
/*                                                                          */
/****************************************************************************/
/*                                                                          */
/*                                                                          */
/*                                                                          */
/****************************************************************************/
/*                                                                          */
/*              Copyright 1995, Liebherr Werk Nenzing GmbH                  */
/*                         ALL RIGHTS RESERVED                              */
/*                                                                          */
/****************************************************************************/
/*! \file	tabdat.c
	\brief	table handling for SoftControl, empty default file

	$Author: lwnram0 $
	$Revision: 1.0 $
	$Date: 2005-08-17 09:26:41+02 $

	$Log: tabdat.c,v $
	Revision 1.0  2005-08-17 09:26:41+02  lwnram0
	Initial revision

	Revision 1.2  2002-12-12 23:27:35+01  lwnram0
	define size of table absolutely

	Revision 1.1  2001-08-16 15:27:22+02  lwnram0
	outer core 3.003

 */

/*--- Tabdat-LMB Version String ------------------------------------------*/
#define TABDAT_VERSION_STRING	"00195"

/*--- include's ----------------------------------------------------------*/
#include "tab.h"

/*--- Data ---------------------------------------------------------------*/


/* Beispiel fuer eine Tabellendefinition - Tabellen INVALID geschaltet !! */


uint32_t MaxTab = 2;            /* max. Tabellencode */


/* Tabelle 1 */

float X1[] = { 0.0  ,  10.0,  20.0,  30.0,  40.0,  50.0,  60.0 };
float Y1[] = { 100.0, 110.0, 120.0, 130.0, 140.0, 150.0, 160.0 };

/* Tabelle 2 */

float X2[] = { 100.0, 110.0, 120.0, 130.0, 140.0 };
float Y2[] = { 200.0, 210.0, 220.0, 230.0, 240.0 };



TAB_DESCRIPTOR TabArray[2] = {  1,  7, INVALID,  X1,  Y1,
                                2,  5, INVALID,  X2,  Y2 };

