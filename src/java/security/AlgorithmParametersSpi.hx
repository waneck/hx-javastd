package java.security;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class AlgorithmParametersSpi
{
	/**
	* Initializes this parameters object using the parameters
	* specified in <code>paramSpec</code>.
	*
	* @param paramSpec the parameter specification.
	*
	* @exception InvalidParameterSpecException if the given parameter
	* specification is inappropriate for the initialization of this parameter
	* object.
	*/
	@:overload @:protected @:abstract private function engineInit(paramSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Imports the specified parameters and decodes them
	* according to the primary decoding format for parameters.
	* The primary decoding format for parameters is ASN.1, if an ASN.1
	* specification for this type of parameters exists.
	*
	* @param params the encoded parameters.
	*
	* @exception IOException on decoding errors
	*/
	@:overload @:protected @:abstract private function engineInit(params : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Imports the parameters from <code>params</code> and
	* decodes them according to the specified decoding format.
	* If <code>format</code> is null, the
	* primary decoding format for parameters is used. The primary decoding
	* format is ASN.1, if an ASN.1 specification for these parameters
	* exists.
	*
	* @param params the encoded parameters.
	*
	* @param format the name of the decoding format.
	*
	* @exception IOException on decoding errors
	*/
	@:overload @:protected @:abstract private function engineInit(params : java.NativeArray<java.StdTypes.Int8>, format : String) : Void;
	
	/**
	* Returns a (transparent) specification of this parameters
	* object.
	* <code>paramSpec</code> identifies the specification class in which
	* the parameters should be returned. It could, for example, be
	* <code>DSAParameterSpec.class</code>, to indicate that the
	* parameters should be returned in an instance of the
	* <code>DSAParameterSpec</code> class.
	*
	* @param paramSpec the specification class in which
	* the parameters should be returned.
	*
	* @return the parameter specification.
	*
	* @exception InvalidParameterSpecException if the requested parameter
	* specification is inappropriate for this parameter object.
	*/
	@:overload @:protected @:abstract private function engineGetParameterSpec<T : java.security.spec.AlgorithmParameterSpec>(paramSpec : Class<T>) : T;
	
	/**
	* Returns the parameters in their primary encoding format.
	* The primary encoding format for parameters is ASN.1, if an ASN.1
	* specification for this type of parameters exists.
	*
	* @return the parameters encoded using their primary encoding format.
	*
	* @exception IOException on encoding errors.
	*/
	@:overload @:protected @:abstract private function engineGetEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the parameters encoded in the specified format.
	* If <code>format</code> is null, the
	* primary encoding format for parameters is used. The primary encoding
	* format is ASN.1, if an ASN.1 specification for these parameters
	* exists.
	*
	* @param format the name of the encoding format.
	*
	* @return the parameters encoded using the specified encoding scheme.
	*
	* @exception IOException on encoding errors.
	*/
	@:overload @:protected @:abstract private function engineGetEncoded(format : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a formatted string describing the parameters.
	*
	* @return a formatted string describing the parameters.
	*/
	@:overload @:protected @:abstract private function engineToString() : String;
	
	
}
