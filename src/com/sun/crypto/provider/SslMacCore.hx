package com.sun.crypto.provider;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SslMacCore
{
	
}
@:native('com$sun$crypto$provider$SslMacCore$SslMacMD5') extern class SslMacCore_SslMacMD5 extends javax.crypto.MacSpi
{
	@:overload public function new() : Void;
	
	@:overload private function engineGetMacLength() : Int;
	
	@:overload private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	@:overload private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload private function engineUpdate(input : java.nio.ByteBuffer) : Void;
	
	@:overload private function engineDoFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineReset() : Void;
	
	
}
@:native('com$sun$crypto$provider$SslMacCore$SslMacSHA1') extern class SslMacCore_SslMacSHA1 extends javax.crypto.MacSpi
{
	@:overload public function new() : Void;
	
	@:overload private function engineGetMacLength() : Int;
	
	@:overload private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	@:overload private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload private function engineUpdate(input : java.nio.ByteBuffer) : Void;
	
	@:overload private function engineDoFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineReset() : Void;
	
	
}
