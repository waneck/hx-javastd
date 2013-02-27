package sun.security.provider;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DSAParameters extends java.security.AlgorithmParametersSpi
{
	/**
	* This class implements the parameter set used by the
	* Digital Signature Algorithm as specified in the FIPS 186
	* standard.
	*
	* @author Jan Luehe
	*
	*
	* @since 1.2
	*/
	@:require(java2) private var p : java.math.BigInteger;
	
	private var q : java.math.BigInteger;
	
	private var g : java.math.BigInteger;
	
	@:overload override private function engineInit(paramSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload override private function engineInit(params : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override private function engineInit(params : java.NativeArray<java.StdTypes.Int8>, decodingMethod : String) : Void;
	
	@:overload override private function engineGetParameterSpec<T : java.security.spec.AlgorithmParameterSpec>(paramSpec : Class<T>) : T;
	
	@:overload override private function engineGetEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineGetEncoded(encodingMethod : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* Returns a formatted string describing the parameters.
	*/
	@:overload override private function engineToString() : String;
	
	
}
