package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class contains static methods used to determine whether identifiers
* may appear in certain roles in XML documents.  Such methods are used
* both to parse and to create such documents.
*
* @author David Brownell
* @version 1.1, 00/08/05
*/
extern class XmlNames
{
	/**
	* Returns true if the value is a legal XML name.
	*
	* @param value the string being tested
	*/
	@:overload public static function isName(value : String) : Bool;
	
	/**
	* Returns true if the value is a legal "unqualified" XML name, as
	* defined in the XML Namespaces proposed recommendation.
	* These are normal XML names, except that they may not contain
	* a "colon" character.
	*
	* @param value the string being tested
	*/
	@:overload public static function isUnqualifiedName(value : String) : Bool;
	
	/**
	* Returns true if the value is a legal "qualified" XML name, as defined
	* in the XML Namespaces proposed recommendation.  Qualified names are
	* composed of an optional prefix (an unqualified name), followed by a
	* colon, and a required "local part" (an unqualified name).  Prefixes are
	* declared, and correspond to particular URIs which scope the "local
	* part" of the name.  (This method cannot check whether the prefix of a
	* name has been declared.)
	*
	* @param value the string being tested
	*/
	@:overload public static function isQualifiedName(value : String) : Bool;
	
	/**
	* This method returns true if the identifier is a "name token"
	* as defined in the XML specification.  Like names, these
	* may only contain "name characters"; however, they do not need
	* to have letters as their initial characters.  Attribute values
	* defined to be of type NMTOKEN(S) must satisfy this predicate.
	*
	* @param token the string being tested
	*/
	@:overload public static function isNmtoken(token : String) : Bool;
	
	/**
	* This method returns true if the identifier is a "name token" as
	* defined by the XML Namespaces proposed recommendation.
	* These are like XML "name tokens" but they may not contain the
	* "colon" character.
	*
	* @param token the string being tested
	* @see #isNmtoken
	*/
	@:overload public static function isNCNmtoken(token : String) : Bool;
	
	
}
