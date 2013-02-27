package com.sun.security.auth;
/*
* Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapPrincipal implements java.security.Principal implements java.io.Serializable
{
	/**
	* Creates an LDAP principal.
	*
	* @param name The principal's string distinguished name.
	* @throws InvalidNameException If a syntax violation is detected.
	* @exception NullPointerException If the <code>name</code> is
	* <code>null</code>.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Compares this principal to the specified object.
	*
	* @param object The object to compare this principal against.
	* @return true if they are equal; false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Computes the hash code for this principal.
	*
	* @return The principal's hash code.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the name originally used to create this principal.
	*
	* @return The principal's string name.
	*/
	@:overload public function getName() : String;
	
	/**
	* Creates a string representation of this principal's name in the format
	* defined by <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>.
	* If the name has zero components an empty string is returned.
	*
	* @return The principal's string name.
	*/
	@:overload public function toString() : String;
	
	
}
