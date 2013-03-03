package javax.crypto.spec;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OAEPParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* The OAEP parameter set with all default values.
	*/
	@:public @:static @:final public static var DEFAULT(default, null) : javax.crypto.spec.OAEPParameterSpec;
	
	/**
	* Constructs a parameter set for OAEP padding as defined in
	* the PKCS #1 standard using the specified message digest
	* algorithm <code>mdName</code>, mask generation function
	* algorithm <code>mgfName</code>, parameters for the mask
	* generation function <code>mgfSpec</code>, and source of
	* the encoding input P <code>pSrc</code>.
	*
	* @param mdName the algorithm name for the message digest.
	* @param mgfName the algorithm name for the mask generation
	* function.
	* @param mgfSpec the parameters for the mask generation function.
	* If null is specified, null will be returned by getMGFParameters().
	* @param pSrc the source of the encoding input P.
	* @exception NullPointerException if <code>mdName</code>,
	* <code>mgfName</code>, or <code>pSrc</code> is null.
	*/
	@:overload @:public public function new(mdName : String, mgfName : String, mgfSpec : java.security.spec.AlgorithmParameterSpec, pSrc : javax.crypto.spec.PSource) : Void;
	
	/**
	* Returns the message digest algorithm name.
	*
	* @return the message digest algorithm name.
	*/
	@:overload @:public public function getDigestAlgorithm() : String;
	
	/**
	* Returns the mask generation function algorithm name.
	*
	* @return the mask generation function algorithm name.
	*/
	@:overload @:public public function getMGFAlgorithm() : String;
	
	/**
	* Returns the parameters for the mask generation function.
	*
	* @return the parameters for the mask generation function.
	*/
	@:overload @:public public function getMGFParameters() : java.security.spec.AlgorithmParameterSpec;
	
	/**
	* Returns the source of encoding input P.
	*
	* @return the source of encoding input P.
	*/
	@:overload @:public public function getPSource() : javax.crypto.spec.PSource;
	
	
}
