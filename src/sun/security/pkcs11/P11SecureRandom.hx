package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* SecureRandom implementation class. Some tokens support only
* C_GenerateRandom() and not C_SeedRandom(). In order not to lose an
* application specified seed, we create a SHA1PRNG that we mix with in that
* case.
*
* Note that since SecureRandom is thread safe, we only need one
* instance per PKCS#11 token instance. It is created on demand and cached
* in the SunPKCS11 class.
*
* Also note that we obtain the PKCS#11 session on demand, no need to tie one
* up.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11SecureRandom extends java.security.SecureRandomSpi
{
	@:overload @:synchronized override private function engineSetSeed(seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override private function engineNextBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override private function engineGenerateSeed(numBytes : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
