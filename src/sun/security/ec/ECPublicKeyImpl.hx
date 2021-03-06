package sun.security.ec;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Key implementation for EC public keys.
*
* @since   1.6
* @author  Andreas Sterbenz
*/
@:require(java6) extern class ECPublicKeyImpl extends sun.security.x509.X509Key implements java.security.interfaces.ECPublicKey
{
	/**
	* Construct a key from its components. Used by the
	* ECKeyFactory and SunPKCS11.
	*/
	@:overload @:public public function new(w : java.security.spec.ECPoint, params : java.security.spec.ECParameterSpec) : Void;
	
	/**
	* Construct a key from its encoding. Used by RSAKeyFactory.
	*/
	@:overload @:public public function new(encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public override public function getAlgorithm() : String;
	
	@:overload @:public public function getW() : java.security.spec.ECPoint;
	
	@:overload @:public public function getParams() : java.security.spec.ECParameterSpec;
	
	@:overload @:public public function getEncodedPublicValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse the key. Called by X509Key.
	*/
	@:overload @:protected override private function parseKeyBits() : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:protected private function writeReplace() : Dynamic;
	
	
}
