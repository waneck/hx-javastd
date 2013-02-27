package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
//// -F46082.51<daz> Remove -stateful feature.
//// -D56351<daz> Update computation of RepositoryIDs to CORBA 2.3 (see spec.).
//// -D59166<daz> Add escaped-id. info. to identifiers.
//// -F60858.1<daz> Add support for -corba option, levels 2.2 and 2.3: accept 2.3
////   keywords as ids.; accept ids. that match keywords in letter, but not in case.
//// -D62023<daz> Add support for -corba option, level 2.4: see keyword checking.
@:internal extern class Scanner
{
	
}
@:internal extern class ScannerData
{
	/**
	*
	**/
	@:overload public function new() : Void;
	
	/**
	*
	**/
	@:overload public function new(that : ScannerData) : Void;
	
	
}
