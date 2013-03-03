package sun.security.jgss.krb5;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Krb5NameElement implements sun.security.jgss.spi.GSSNameSpi
{
	@:overload @:public @:final public function getKrb5PrincipalName() : sun.security.krb5.PrincipalName;
	
	/**
	* Equal method for the GSSNameSpi objects.
	* If either name denotes an anonymous principal, the call should
	* return false.
	*
	* @param name to be compared with
	* @returns true if they both refer to the same entity, else false
	* @exception GSSException with major codes of BAD_NAMETYPE,
	*  BAD_NAME, FAILURE
	*/
	@:overload @:public public function equals(other : sun.security.jgss.spi.GSSNameSpi) : Bool;
	
	/**
	* Compares this <code>GSSNameSpi</code> object to another Object
	* that might be a <code>GSSNameSpi</code>. The behaviour is exactly
	* the same as in {@link #equals(GSSNameSpi) equals} except that
	* no GSSException is thrown; instead, false will be returned in the
	* situation where an error occurs.
	*
	* @param another the object to be compared to
	* @returns true if they both refer to the same entity, else false
	* @see #equals(GSSNameSpi)
	*/
	@:overload @:public public function equals(another : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this GSSNameSpi.
	*
	* @return a hashCode value
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the principal name in the form user@REALM or
	* host/service@REALM but with the following contraints that are
	* imposed by RFC 1964:
	* <pre>
	*  (1) all occurrences of the characters `@`,  `/`, and `\` within
	*   principal components or realm names shall be quoted with an
	*   immediately-preceding `\`.
	*
	*   (2) all occurrences of the null, backspace, tab, or newline
	*   characters within principal components or realm names will be
	*   represented, respectively, with `\0`, `\b`, `\t`, or `\n`.
	*
	*   (3) the `\` quoting character shall not be emitted within an
	*   exported name except to accomodate cases (1) and (2).
	* </pre>
	*/
	@:overload @:public public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get the mechanism type that this NameElement corresponds to.
	*
	* @return the Oid of the mechanism type
	*/
	@:overload @:public public function getMechanism() : org.ietf.jgss.Oid;
	
	/**
	* Returns a string representation for this name. The printed
	* name type can be obtained by calling getStringNameType().
	*
	* @return string form of this name
	* @see #getStringNameType()
	* @overrides Object#toString
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns the name type oid.
	*/
	@:overload @:public public function getGSSNameType() : org.ietf.jgss.Oid;
	
	/**
	* Returns the oid describing the format of the printable name.
	*
	* @return the Oid for the format of the printed name
	*/
	@:overload @:public public function getStringNameType() : org.ietf.jgss.Oid;
	
	/**
	* Indicates if this name object represents an Anonymous name.
	*/
	@:overload @:public public function isAnonymousName() : Bool;
	
	@:overload @:public public function getProvider() : java.security.Provider;
	
	
}
