package javax.crypto.interfaces;
/*
* Copyright (c) 2001, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface PBEKey extends javax.crypto.SecretKey
{
	/**
	* Returns the password.
	*
	* <p> Note: this method should return a copy of the password. It is
	* the caller's responsibility to zero out the password information after
	* it is no longer needed.
	*
	* @return the password.
	*/
	@:overload public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns the salt or null if not specified.
	*
	* <p> Note: this method should return a copy of the salt. It is
	* the caller's responsibility to zero out the salt information after
	* it is no longer needed.
	*
	* @return the salt.
	*/
	@:overload public function getSalt() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the iteration count or 0 if not specified.
	*
	* @return the iteration count.
	*/
	@:overload public function getIterationCount() : Int;
	
	
}
