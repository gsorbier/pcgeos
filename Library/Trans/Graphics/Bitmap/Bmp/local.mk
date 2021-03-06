##############################################################################
#
# 	Copyright (c) GeoWorks 1992 -- All Rights Reserved
#
# PROJECT:	PC GEOS
# MODULE:	tif translation library
# FILE: 	local.mk
#
# AUTHOR: 	maryann 2/92
#
# REVISION HISTORY:
#	Name	Date		Description
#	----	----		-----------
#	jimmy	1/92	    	Initial Version	
#	maryann 2/92		copied for tif
# DESCRIPTION:
#	Special definitions required for all the graphics translation libraries
#
#	$Id: local.mk,v 1.1 97/04/07 11:26:30 newdeal Exp $
#
###############################################################################

.PATH.asm .PATH.def: ../GraphicsCommon $(INSTALL_DIR:H)/GraphicsCommon \
		     ../../../TransCommon $(INSTALL_DIR:H)/../../TransCommon

.PATH.ui: ./UI $(INSTALL_DIR)/UI

.PATH.h: ./CommonH $(INSTALL_DIR)/CommonH \
	 ../GraphicsCommonH $(INSTALL_DIR:H)/GraphicsCommonH

.PATH.c: ../GraphicsCommonC $(INSTALL_DIR:H)/GraphicsCommonC

#
# set include file path
#
-IFLAGS		+= -I./UI -I$(INSTALL_DIR)/UI \
		-I../GraphicsCommon -I$(INSTALL_DIR:H)/GraphicsCommon \
		-I../../../TransCommon -I$(INSTALL_DIR:H)/../../TransCommon

-CIFLAGS	+= -I./CommonH -I$(INSTALL_DIR)/CommonH \
		-I../GraphicsCommonH -I$(INSTALL_DIR:H)/GraphicsCommonH

PROTOCONST	= XLATLIB
LIBNAME		= bmp,xlatlib

#include	<$(SYSMAKEFILE)>
