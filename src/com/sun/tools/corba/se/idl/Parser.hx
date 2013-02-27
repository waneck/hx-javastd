package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
//// -D52042<daz> Allow floating-point constants to be initialized with
////  integral as well as floating-point literals.  No other variations allowed.
//// -D58058<daz> Set index array type to long rather than array element type.
//// -D56351<daz> Update computation of RepositoryIDs to CORBA 2.3 (see spec.).
//// -D57110<daz> Provide method() to set/clear ability for scoped names to
////  resolve to modules.  Allows rep. ids to be assigned to modules.
//// -D46094<daz> Prohibit exceptions from appearing wihtin structs, unions, exceptions.
//// -D46094<daz> Prohibit attributes from appearing as operation parameter types,
////  operation return types, attribute types.
//// -D59067<daz> Prohibit nested value boxes.
//// -D59166<daz> Prohibit collisions between keywords and non-escaped identifiers.
//// -D59809<daz> At Pigeonhole(), add map short name of CORBA types to long name
////  (e.g., CORBA/StringValue --> org/omg/CORBA/StringValue), which allows fully-
////  qualified CORBA type names to resolve successfully.
//// -F60858.1<daz> Support "-corba" option, level <= 2.2: issue warning for
////  keyowrd collisions;
//// -D60942<daz> Prohibit operations from appearing within parameter types.
//// -D61643<daz> Repair pigeonhole() to correctly filter bad RepIDs.
//// -D62023<daz> Support -noWarn option; Issue warnings when tokens are
////  deprecated keywords or keywords in greater release version.
//// -D61919<daz> Emit entries for modules originally opened in #include files
////  appearing at global scope and then reopened in the main IDL file.  Only
////  types appearing in the main IDL source will be emitted.
/**
*
**/
@:internal extern class Parser
{
	/**
	*
	**/
	@:overload public function isModuleLegalType() : Bool;
	
	/**
	*
	**/
	@:overload public function isModuleLegalType(b : Bool) : Void;
	
	/**
	*
	**/
	@:overload public static function overrideName(string : String) : String;
	
	/**
	*
	**/
	@:overload public static function typeOf(entry : com.sun.tools.corba.se.idl.SymtabEntry) : com.sun.tools.corba.se.idl.SymtabEntry;
	
	/**
	*
	**/
	@:overload public static function enteringInclude() : Void;
	
	/**
	*
	**/
	@:overload public static function exitingInclude() : Void;
	
	public static var unknownNamePrefix(default, null) : String;
	
	private var corbaLevel : Single;
	
	
}
