package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class EType
{
	@:overload public static function getInstance(eTypeConst : Int) : EType;
	
	@:overload @:abstract public function eType() : Int;
	
	@:overload @:abstract public function minimumPadSize() : Int;
	
	@:overload @:abstract public function confounderSize() : Int;
	
	@:overload @:abstract public function checksumType() : Int;
	
	@:overload @:abstract public function checksumSize() : Int;
	
	@:overload @:abstract public function blockSize() : Int;
	
	@:overload @:abstract public function keyType() : Int;
	
	@:overload @:abstract public function keySize() : Int;
	
	@:overload @:abstract public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function dataSize(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload public function padSize(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload public function startOfChecksum() : Int;
	
	@:overload public function startOfData() : Int;
	
	@:overload public function startOfPad(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload public function decryptedData(data : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function getBuiltInDefaults() : java.NativeArray<Int>;
	
	/**
	* Retrieves the default etypes from the configuration file, or
	* if that's not available, return the built-in list of default etypes.
	*/
	@:overload public static function getDefaults(configName : String) : java.NativeArray<Int>;
	
	/**
	* Retrieve the default etypes from the configuration file for
	* those etypes for which there are corresponding keys.
	* Used in scenario we have some keys from a keytab with etypes
	* different from those named in configName. Then, in order
	* to decrypt an AS-REP, we should only ask for etypes for which
	* we have keys.
	*/
	@:overload public static function getDefaults(configName : String, keys : java.NativeArray<sun.security.krb5.EncryptionKey>) : java.NativeArray<Int>;
	
	@:overload public static function isSupported(eTypeConst : Int, config : java.NativeArray<Int>) : Bool;
	
	@:overload public static function isSupported(eTypeConst : Int) : Bool;
	
	@:overload public static function toString(type : Int) : String;
	
	
}
