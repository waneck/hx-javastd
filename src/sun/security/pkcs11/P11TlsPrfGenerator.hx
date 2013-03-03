package sun.security.pkcs11;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
* KeyGenerator for the TLS PRF. Note that although the PRF is used in a number
* of places during the handshake, this class is usually only used to calculate
* the Finished messages. The reason is that for those other uses more specific
* PKCS#11 mechanisms have been defined (CKM_SSL3_MASTER_KEY_DERIVE, etc.).
*
* <p>This class supports the CKM_TLS_PRF mechanism from PKCS#11 v2.20 and
* the older NSS private mechanism.
*
* @author  Andreas Sterbenz
* @since   1.6
*/
@:require(java6) @:internal extern class P11TlsPrfGenerator extends javax.crypto.KeyGeneratorSpi
{
	@:overload @:protected override private function engineInit(random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(keysize : Int, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineGenerateKey() : javax.crypto.SecretKey;
	
	
}
