package java.security.spec;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MGF1ParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* The MGF1ParameterSpec which uses "SHA-1" message digest.
	*/
	public static var SHA1(default, null) : java.security.spec.MGF1ParameterSpec;
	
	/**
	* The MGF1ParameterSpec which uses "SHA-256" message digest.
	*/
	public static var SHA256(default, null) : java.security.spec.MGF1ParameterSpec;
	
	/**
	* The MGF1ParameterSpec which uses "SHA-384" message digest.
	*/
	public static var SHA384(default, null) : java.security.spec.MGF1ParameterSpec;
	
	/**
	* The MGF1ParameterSpec which uses SHA-512 message digest.
	*/
	public static var SHA512(default, null) : java.security.spec.MGF1ParameterSpec;
	
	/**
	* Constructs a parameter set for mask generation function MGF1
	* as defined in the PKCS #1 standard.
	*
	* @param mdName the algorithm name for the message digest
	* used in this mask generation function MGF1.
	* @exception NullPointerException if <code>mdName</code> is null.
	*/
	@:overload public function new(mdName : String) : Void;
	
	/**
	* Returns the algorithm name of the message digest used by the mask
	* generation function.
	*
	* @return the algorithm name of the message digest.
	*/
	@:overload public function getDigestAlgorithm() : String;
	
	
}
