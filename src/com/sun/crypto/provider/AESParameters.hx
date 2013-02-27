package com.sun.crypto.provider;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class AESParameters extends java.security.AlgorithmParametersSpi
{
	@:overload public function new() : Void;
	
	@:overload override private function engineInit(paramSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload override private function engineInit(encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override private function engineInit(encoded : java.NativeArray<java.StdTypes.Int8>, decodingMethod : String) : Void;
	
	@:overload override private function engineGetParameterSpec(paramSpec : Class<Dynamic>) : java.security.spec.AlgorithmParameterSpec;
	
	@:overload override private function engineGetEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineGetEncoded(encodingMethod : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineToString() : String;
	
	
}
