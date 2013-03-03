package sun.security.ssl;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class KeyManagerFactoryImpl extends javax.net.ssl.KeyManagerFactorySpi
{
	/**
	* Returns one key manager for each type of key material.
	*/
	@:overload @:protected override private function engineGetKeyManagers() : java.NativeArray<javax.net.ssl.KeyManager>;
	
	
}
@:native('sun$security$ssl$KeyManagerFactoryImpl$SunX509') extern class KeyManagerFactoryImpl_SunX509 extends sun.security.ssl.KeyManagerFactoryImpl
{
	@:overload @:protected override private function engineInit(ks : java.security.KeyStore, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected override private function engineInit(spec : javax.net.ssl.ManagerFactoryParameters) : Void;
	
	
}
@:native('sun$security$ssl$KeyManagerFactoryImpl$X509') extern class KeyManagerFactoryImpl_X509 extends sun.security.ssl.KeyManagerFactoryImpl
{
	@:overload @:protected override private function engineInit(ks : java.security.KeyStore, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected override private function engineInit(params : javax.net.ssl.ManagerFactoryParameters) : Void;
	
	
}
