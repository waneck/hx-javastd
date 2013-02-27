package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
//// -D56351<daz> Update Prefix pragma directive to CORBA 2.3 (see spec.).
//// -D57110<daz> Update ID pragma directive to CORBA 2.3 (see spec.).
//// -D46094<daz> Prohibit exceptions from appearing wihtin structs, unions, exceptions.
//// -D46094<daz> Prohibit attributes from appearing as operation parameter types,
////  operation return types, attribute types.
//// -D59166<daz> Prohibit identifiers form colliding with IDL keywords.
//// -F60858.1<daz> Add keyword collision warning.
//// -F60942<daz> Prohibit operations from appearing as operation parameter types.
//// -D62023<daz> Add deprecated keyword warning; cast char to byte for JDK 1.2 compatability.
@:internal extern class ParseException extends java.lang.Exception
{
	
}
