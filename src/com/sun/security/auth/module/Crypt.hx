package com.sun.security.auth.module;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
/*      Copyright (c) 1988 AT&T */
/*        All Rights Reserved   */
/**
* Implements the UNIX crypt(3) function, based on a direct port of the
* libc crypt function.
*
* <p>
* From the crypt man page:
* <p>
* crypt() is the password encryption routine, based on the NBS
* Data  Encryption  Standard,  with variations intended (among
* other things) to frustrate use of  hardware  implementations
* of the DES for key search.
* <p>
* The first argument to crypt() is  normally  a  user's  typed
* password.   The  second  is a 2-character string chosen from
* the set [a-zA-Z0-9./].  the  salt string is used to perturb
* the DES algorithm in one
* of 4096 different ways, after which the password is used  as
* the  key  to  encrypt  repeatedly  a  constant  string.  The
* returned value points to the encrypted password, in the same
* alphabet as the salt.  The first two characters are the salt
* itself.
*
* @author Roland Schemers
*/
@:internal extern class Crypt
{
	/**
	* Creates a new Crypt object for use with the crypt method.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Implements the libc crypt(3) function.
	*
	* @param pw the password to "encrypt".
	*
	* @param salt the salt to use.
	*
	* @return A new byte[13] array that contains the encrypted
	* password. The first two characters are the salt.
	*
	*/
	@:overload @:synchronized public function crypt(pw : java.NativeArray<java.StdTypes.Int8>, salt : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* program to test the crypt routine.
	*
	* The first parameter is the cleartext password, the second is
	* the salt to use. The salt should be two characters from the
	* set [a-zA-Z0-9./]. Outputs the crypt result.
	*
	* @param arg command line arguments.
	*
	*/
	@:overload public static function main(arg : java.NativeArray<String>) : Void;
	
	
}
