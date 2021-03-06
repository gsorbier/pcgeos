##############################################################################
#
# 	Copyright (c) GeoWorks 1993 -- All Rights Reserved
#
# PROJECT:	PC GEOS/J
# MODULE:	Keyboard drivers -- special definitions
# FILE: 	local.mk
# AUTHOR: 	Adam de Boor, July 19, 1989
#
# REVISION HISTORY:
#	Name	Date		Description
#	----	----		-----------
#	Tera	11/19/93	Initial Revision
#
# DESCRIPTION:
#
#
#	$Id: local.mk,v 1.1 97/04/18 11:47:50 newdeal Exp $
#
###############################################################################
GEODE		= kbdt84j
NO_EC		= 1

LINKFLAGS	+= -Wunref
#ASMFLAGS	+= -Wall		Pizza
ASMFLAGS	+= -Wall -DPZ_PCGEOS_84J

#
# Look in the common module too.
#
DEPFLAGS	+= -I.. -I$(INSTALL_DIR:H:H)

.PATH.def	: ../.. $(INSTALL_DIR:H:H)
.PATH.asm	: ../.. $(INSTALL_DIR:H:H)
.PATH.ui	: ../.. $(INSTALL_DIR:H:H)

#include <pizza.mk>

#include <$(SYSMAKEFILE)>

