package sun.security.pkcs11;
/*
* Copyright (c) 2006, 2007, Oracle and/or its affiliates. All rights reserved.
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
* KeyAgreement implementation for ECDH.
*
* @author  Andreas Sterbenz
* @since   1.6
*/
@:require(java6) @:internal extern class P11ECDHKeyAgreement extends javax.crypto.KeyAgreementSpi
{
	@:overload override private function engineInit(key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineDoPhase(key : java.security.Key, lastPhase : Bool) : java.security.Key;
	
	@:overload override private function engineGenerateSecret() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineGenerateSecret(sharedSecret : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	@:overload override private function engineGenerateSecret(algorithm : String) : javax.crypto.SecretKey;
	
	
}