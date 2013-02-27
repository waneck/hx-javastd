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
//// -D59166<daz> Add support for keyword/identifier collision detection.  This
////  feature is implemented here, rather than class Scanner, to allow the Parser
////  to handle the problem.
//// -F60858.1<daz> Support -corba option, level <= 2.2: identify 2.3 keywords.
//// -D62023<daz> Support -corba option, level <= 2.3, identify 2.4 keywords.
//// KMC Support -corba, level <= 3.0.  Added 3.0 keywords.
////
//// Should escaped Identifier should be a type rather than an attribute?
////
/**
* Class Token represents a lexeme appearing within an IDL source.  Every
* Token has a type.  Depending on its type and on the supported version
* of IDL, a Token will have other associated attributes, such as a name
* (identifier, e.g.), and whether it is escaped, deprecated, or is a type
* that is known to be in a future version of IDL.
**/
@:internal extern class Token
{
	/** Create a keyword token from a string.
	* Determines whether the string is an IDL keyword based on the corbaLevel.
	* Strings that are keywords at higher CORBA levels than the corbaLevel
	* argument create identifier tokens that are marked as "collidesWithKeyword", unless
	* escapedOK is FALSE, which is the case only when preprocessing is taking place.
	* In the case of the "init" keyword, which was only defined in CORBA 2.3, init is
	* marked deprecated in CORBA 2.3 since it is not supported in higher levels.
	* @param String string The string we are converting to a token.
	* @param float corbaLevel The CORBA level, currently in the interval [2.2, 3.0].
	* @param boolean escapedOK Flag set true if _ is used to escape an IDL keyword for use
	* as an identifier.
	* @param boolean[] collidesWithKeyword is an array containing one value: a flag
	* representing whether this string is an identifier that collides with a keyword.
	* This is set by this method.
	* @returns Token The resulting Token corresponding to string.
	*/
	@:overload public static function makeKeywordToken(string : String, corbaLevel : Single, escapedOK : Bool, collision : java.NativeArray<Bool>) : Token;
	
	/**
	* Get the String representation of this Token.
	* @return a String containing representation of this Token.
	**/
	@:overload public function toString() : String;
	
	/**
	* Accessor.
	* @return true iff this token is an escaped identifier.
	**/
	@:overload public function isEscaped() : Bool;
	
	/**
	* Accessor.
	* @return true iff this token is an identifier having a name matching
	* a keyword in a version of CORBA greater than the specified CORBA level,
	* or iff it matches a keyword in letter, but note case.
	**/
	@:overload public function collidesWithKeyword() : Bool;
	
	/**
	* Accessor.
	* @return true iff this token is a deprecated lexeme or lexical type with
	* respect to the specified CORBA level.
	**/
	@:overload public function isDeprecated() : Bool;
	
	@:overload public function isWide() : Bool;
	
	
}
