package com.sun.security.auth;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <p> This class abstracts an NT security token
* and provides a mechanism to do same-process security impersonation.
*
*/
extern class NTNumericCredential
{
	/**
	* Create an <code>NTNumericCredential</code> with an integer value.
	*
	* <p>
	*
	* @param token the Windows NT security token for this user. <p>
	*
	*/
	@:overload public function new(token : haxe.Int64) : Void;
	
	/**
	* Return an integer representation of this
	* <code>NTNumericCredential</code>.
	*
	* <p>
	*
	* @return an integer representation of this
	*          <code>NTNumericCredential</code>.
	*/
	@:overload public function getToken() : haxe.Int64;
	
	/**
	* Return a string representation of this <code>NTNumericCredential</code>.
	*
	* <p>
	*
	* @return a string representation of this <code>NTNumericCredential</code>.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified Object with this <code>NTNumericCredential</code>
	* for equality.  Returns true if the given object is also a
	* <code>NTNumericCredential</code> and the two NTNumericCredentials
	* represent the same NT security token.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	*          <code>NTNumericCredential</code>.
	*
	* @return true if the specified Object is equal equal to this
	*          <code>NTNumericCredential</code>.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Return a hash code for this <code>NTNumericCredential</code>.
	*
	* <p>
	*
	* @return a hash code for this <code>NTNumericCredential</code>.
	*/
	@:overload public function hashCode() : Int;
	
	
}
