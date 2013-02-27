package com.sun.crypto.provider;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class TlsPrfGenerator extends javax.crypto.KeyGeneratorSpi
{
	@:overload public function new() : Void;
	
	@:overload override private function engineInit(random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineInit(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineInit(keysize : Int, random : java.security.SecureRandom) : Void;
	
	
}
/**
* A KeyGenerator implementation that supports TLS 1.2.
* <p>
* TLS 1.2 uses a different hash algorithm than 1.0/1.1 for the PRF
* calculations.  As of 2010, there is no PKCS11-level support for TLS
* 1.2 PRF calculations, and no known OS's have an internal variant
* we could use.  Therefore for TLS 1.2, we are updating JSSE to request
* a different provider algorithm:  "SunTls12Prf".  If we reused the
* name "SunTlsPrf", the PKCS11 provider would need be updated to
* fail correctly when presented with the wrong version number
* (via Provider.Service.supportsParameters()), and add the
* appropriate supportsParamters() checks into KeyGenerators (not
* currently there).
*/
@:native('com$sun$crypto$provider$TlsPrfGenerator$V12') extern class TlsPrfGenerator_V12 extends TlsPrfGenerator
{
	@:overload override private function engineGenerateKey() : javax.crypto.SecretKey;
	
	
}
/**
* A KeyGenerator implementation that supports TLS 1.0/1.1.
*/
@:native('com$sun$crypto$provider$TlsPrfGenerator$V10') extern class TlsPrfGenerator_V10 extends TlsPrfGenerator
{
	@:overload override private function engineGenerateKey() : javax.crypto.SecretKey;
	
	
}
