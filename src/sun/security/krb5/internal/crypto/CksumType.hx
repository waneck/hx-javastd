package sun.security.krb5.internal.crypto;
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class CksumType
{
	@:overload public static function getInstance(cksumTypeConst : Int) : sun.security.krb5.internal.crypto.CksumType;
	
	/**
	* Returns default checksum type.
	*/
	@:overload public static function getInstance() : sun.security.krb5.internal.crypto.CksumType;
	
	@:overload @:abstract public function confounderSize() : Int;
	
	@:overload @:abstract public function cksumType() : Int;
	
	@:overload @:abstract public function isSafe() : Bool;
	
	@:overload @:abstract public function cksumSize() : Int;
	
	@:overload @:abstract public function keyType() : Int;
	
	@:overload @:abstract public function keySize() : Int;
	
	@:overload @:abstract public function calculateChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract public function calculateKeyedChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract public function verifyKeyedChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int, key : java.NativeArray<java.StdTypes.Int8>, checksum : java.NativeArray<java.StdTypes.Int8>, usage : Int) : Bool;
	
	@:overload public static function isChecksumEqual(cksum1 : java.NativeArray<java.StdTypes.Int8>, cksum2 : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}
