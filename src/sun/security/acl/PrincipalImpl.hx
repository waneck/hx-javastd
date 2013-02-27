package sun.security.acl;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the principal interface.
*
* @author      Satish Dharmaraj
*/
extern class PrincipalImpl implements java.security.Principal
{
	/**
	* Construct a principal from a string user name.
	* @param user The string form of the principal name.
	*/
	@:overload public function new(user : String) : Void;
	
	/**
	* This function returns true if the object passed matches
	* the principal represented in this implementation
	* @param another the Principal to compare with.
	* @return true if the Principal passed is the same as that
	* encapsulated in this object, false otherwise
	*/
	@:overload public function equals(another : Dynamic) : Bool;
	
	/**
	* Prints a stringified version of the principal.
	*/
	@:overload public function toString() : String;
	
	/**
	* return a hashcode for the principal.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* return the name of the principal.
	*/
	@:overload public function getName() : String;
	
	
}
