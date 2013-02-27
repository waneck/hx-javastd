package com.sun.crypto.provider;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PBKDF2KeyImpl implements javax.crypto.interfaces.PBEKey
{
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getAlgorithm() : String;
	
	@:overload public function getIterationCount() : Int;
	
	@:overload public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getSalt() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getFormat() : String;
	
	/**
	* Calculates a hash code value for the object.
	* Objects that are equal will also have the same hashcode.
	*/
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Ensures that the password bytes of this key are
	* erased when there are no more references to it.
	*/
	@:overload private function finalize() : Void;
	
	
}
