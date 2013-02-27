package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -D57110<daz> Allow ID pragma directive to be applied to modules and update
////  feature in accordance to CORBA 2.3.
//// -D59165<daz> Enable escaped identifiers when processing pragmas.
//// -f60858.1<daz> Support -corba option, level = 2.2: Accept identifiers that
////  collide with keywords, in letter but not case, and issue a warning.
//// -d62023 <daz> support -noWarn option; suppress inappropriate warnings when
////  parsing IBM-specific pragmas (#meta <interface_name> abstract).
/**
* This class should be extended if new pragmas are desired.  If the
* preprocessor encounters a pragma name which it doesn't recognize
* (anything other than ID, prefix, or version), it calls the method
* otherPragmas.  This is the only method which need be overridden.
* The Preprocessor base class has a number of utility-like methods
* which can be used by the overridden otherPragmas method.
**/
extern class Preprocessor
{
	/**
	*
	**/
	@:overload private function clone() : Dynamic;
	
	
}
