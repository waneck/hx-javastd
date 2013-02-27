package sun.security.jgss.spi;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface GSSNameSpi
{
	/**
	* This interface is implemented by a mechanism specific name element. A
	* GSSName is conceptually a container class of several name elements from
	* different mechanisms.
	*
	* @author Mayank Upadhyay
	*/
	@:overload public function getProvider() : java.security.Provider;
	
	/**
	* Equals method for the GSSNameSpi objects.
	* If either name denotes an anonymous principal, the call should
	* return false.
	*
	* @param name to be compared with
	* @returns true if they both refer to the same entity, else false
	* @exception GSSException with major codes of BAD_NAMETYPE,
	*    BAD_NAME, FAILURE
	*/
	@:overload public function equals(name : GSSNameSpi) : Bool;
	
	/**
	* Returns a flat name representation for this object. The name
	* format is defined in RFC 2078.
	*
	* @return the flat name representation for this object
	* @exception GSSException with major codes NAME_NOT_MN, BAD_NAME,
	*    BAD_NAME, FAILURE.
	*/
	@:overload public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get the mechanism type that this NameElement corresponds to.
	*
	* @return the Oid of the mechanism type
	*/
	@:overload public function getMechanism() : org.ietf.jgss.Oid;
	
	/**
	* Returns the oid describing the format of the printable name.
	*
	* @return the Oid for the format of the printed name
	*/
	@:overload public function getStringNameType() : org.ietf.jgss.Oid;
	
	/**
	* Indicates if this name object represents an Anonymous name.
	*/
	@:overload public function isAnonymousName() : Bool;
	
	
}
