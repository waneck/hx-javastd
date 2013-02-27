package com.sun.jndi.ldap;
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
extern class LdapName implements javax.naming.Name
{
	/**
	* Constructs an LDAP name from the given DN.
	*
	* @param name      An LDAP DN.  To JNDI, a compound name.
	*
	* @throws InvalidNameException if a syntax violation is detected.
	*/
	@:overload public function new(name : String) : Void;
	
	@:overload public function clone() : Dynamic;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function size() : Int;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function getAll() : java.util.Enumeration<Dynamic>;
	
	@:overload public function get(pos : Int) : String;
	
	@:overload public function getPrefix(pos : Int) : javax.naming.Name;
	
	@:overload public function getSuffix(pos : Int) : javax.naming.Name;
	
	@:overload public function startsWith(n : javax.naming.Name) : Bool;
	
	@:overload public function endsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Controls whether string-values are treated as case-sensitive
	* when the string values within names are compared.  The default
	* behavior is case-insensitive comparison.
	*/
	@:overload public function setValuesCaseSensitive(caseSensitive : Bool) : Void;
	
	@:overload public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	/*
	* If "suffix" is not an LdapName, each of its components is parsed as
	* the string form of an RDN.
	*/
	@:overload public function addAll(pos : Int, suffix : javax.naming.Name) : javax.naming.Name;
	
	@:overload public function add(comp : String) : javax.naming.Name;
	
	@:overload public function add(pos : Int, comp : String) : javax.naming.Name;
	
	@:overload public function remove(pos : Int) : Dynamic;
	
	/**
	* Given the value of an attribute, returns a string suitable
	* for inclusion in a DN.  If the value is a string, this is
	* accomplished by using backslash (\) to escape the following
	* characters:
	*<ul>
	*<li>leading and trailing whitespace
	*<li><pre>, = + < > # ; " \</pre>
	*</ul>
	* If the value is a byte array, it is converted to hex
	* notation (such as "#CEB1DF80").
	*/
	@:overload public static function escapeAttributeValue(val : Dynamic) : String;
	
	/**
	* Given an attribute value formated according to RFC 2253,
	* returns the unformated value.  Returns a string value as
	* a string, and a binary value as a byte array.
	*/
	@:overload public static function unescapeAttributeValue(val : String) : Dynamic;
	
	
}
/*
* DnParser implements a recursive descent parser for a single DN.
*/
@:native('com$sun$jndi$ldap$LdapName$DnParser') @:internal extern class LdapName_DnParser
{
	
}
/*
* Class Rdn represents a set of TypeAndValue.
*/
@:native('com$sun$jndi$ldap$LdapName$Rdn') @:internal extern class LdapName_Rdn
{
	@:overload public function toString() : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	@:overload public function hashCode() : Int;
	
	
}
/*
* Class TypeAndValue represents an attribute type and its
* corresponding value.
*/
@:native('com$sun$jndi$ldap$LdapName$TypeAndValue') @:internal extern class LdapName_TypeAndValue
{
	@:overload public function toString() : String;
	
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
