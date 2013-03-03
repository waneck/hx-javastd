package java.security.spec;
/*
* Copyright (c) 2001, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PSSParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* The PSS parameter set with all default values.
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var DEFAULT(default, null) : java.security.spec.PSSParameterSpec;
	
	/**
	* Creates a new <code>PSSParameterSpec</code> as defined in
	* the PKCS #1 standard using the specified message digest,
	* mask generation function, parameters for mask generation
	* function, salt length, and trailer field values.
	*
	* @param mdName the algorithm name of the hash function.
	* @param mgfName the algorithm name of the mask generation
	* function.
	* @param mgfSpec the parameters for the mask generation
	* function. If null is specified, null will be returned by
	* getMGFParameters().
	* @param saltLen the length of salt.
	* @param trailerField the value of the trailer field.
	* @exception NullPointerException if <code>mdName</code>,
	* or <code>mgfName</code> is null.
	* @exception IllegalArgumentException if <code>saltLen</code>
	* or <code>trailerField</code> is less than 0.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(mdName : String, mgfName : String, mgfSpec : java.security.spec.AlgorithmParameterSpec, saltLen : Int, trailerField : Int) : Void;
	
	/**
	* Creates a new <code>PSSParameterSpec</code>
	* using the specified salt length and other default values as
	* defined in PKCS#1.
	*
	* @param saltLen the length of salt in bits to be used in PKCS#1
	* PSS encoding.
	* @exception IllegalArgumentException if <code>saltLen</code> is
	* less than 0.
	*/
	@:overload @:public public function new(saltLen : Int) : Void;
	
	/**
	* Returns the message digest algorithm name.
	*
	* @return the message digest algorithm name.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getDigestAlgorithm() : String;
	
	/**
	* Returns the mask generation function algorithm name.
	*
	* @return the mask generation function algorithm name.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getMGFAlgorithm() : String;
	
	/**
	* Returns the parameters for the mask generation function.
	*
	* @return the parameters for the mask generation function.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getMGFParameters() : java.security.spec.AlgorithmParameterSpec;
	
	/**
	* Returns the salt length in bits.
	*
	* @return the salt length.
	*/
	@:overload @:public public function getSaltLength() : Int;
	
	/**
	* Returns the value for the trailer field, i.e. bc in PKCS#1 v2.1.
	*
	* @return the value for the trailer field, i.e. bc in PKCS#1 v2.1.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getTrailerField() : Int;
	
	
}
