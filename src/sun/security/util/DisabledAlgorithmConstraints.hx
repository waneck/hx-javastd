package sun.security.util;
/*
* Copyright (c) 2010, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class DisabledAlgorithmConstraints implements java.security.AlgorithmConstraints
{
	/**
	* Algorithm constraints for disabled algorithms property
	*
	* See the "jdk.certpath.disabledAlgorithms" specification in java.security
	* for the syntax of the disabled algorithm string.
	*/
	@:public @:final @:static public static var PROPERTY_CERTPATH_DISABLED_ALGS(default, null) : String;
	
	@:public @:final @:static public static var PROPERTY_TLS_DISABLED_ALGS(default, null) : String;
	
	/**
	* Initialize algorithm constraints with the specified security property.
	*
	* @param propertyName the security property name that define the disabled
	*        algorithm constraints
	*/
	@:overload @:public public function new(propertyName : String) : Void;
	
	@:overload @:final @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, parameters : java.security.AlgorithmParameters) : Bool;
	
	@:overload @:final @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, key : java.security.Key) : Bool;
	
	@:overload @:final @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, key : java.security.Key, parameters : java.security.AlgorithmParameters) : Bool;
	
	/**
	* Decompose the standard algorithm name into sub-elements.
	* <p>
	* For example, we need to decompose "SHA1WithRSA" into "SHA1" and "RSA"
	* so that we can check the "SHA1" and "RSA" algorithm constraints
	* separately.
	* <p>
	* Please override the method if need to support more name pattern.
	*/
	@:overload @:protected private function decomposes(algorithm : String) : java.util.Set<String>;
	
	
}
/**
* key constraints
*/
@:native('sun$security$util$DisabledAlgorithmConstraints$KeySizeConstraints') @:internal extern class DisabledAlgorithmConstraints_KeySizeConstraints
{
	@:overload @:public public function new(restrictions : java.NativeArray<String>) : Void;
	
	@:overload @:public public function disables(key : java.security.Key) : Bool;
	
	
}
/**
* Key size constraint.
*
* e.g.  "keysize <= 1024"
*/
@:native('sun$security$util$DisabledAlgorithmConstraints$KeySizeConstraint') @:internal extern class DisabledAlgorithmConstraints_KeySizeConstraint
{
	@:overload @:public public function new(operator : sun.security.util.DisabledAlgorithmConstraints.DisabledAlgorithmConstraints_KeySizeConstraint_Operator, length : Int) : Void;
	
	@:overload @:public public function disables(key : java.security.Key) : Bool;
	
	
}
@:native('sun$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator') extern enum DisabledAlgorithmConstraints_KeySizeConstraint_Operator
{
	EQ;
	NE;
	LT;
	LE;
	GT;
	GE;
	
}

