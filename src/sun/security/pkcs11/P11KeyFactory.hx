package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* KeyFactory base class. Provides common infrastructure for the RSA, DSA,
* and DH implementations.
*
* The subclasses support conversion between keys and keyspecs
* using X.509, PKCS#8, and their individual algorithm specific formats,
* assuming keys are extractable.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11KeyFactory extends java.security.KeyFactorySpi
{
	@:overload @:protected @:final override private function engineGetKeySpec<T : java.security.spec.KeySpec>(key : java.security.Key, keySpec : Class<T>) : T;
	
	@:overload @:protected @:final override private function engineTranslateKey(key : java.security.Key) : java.security.Key;
	
	
}
