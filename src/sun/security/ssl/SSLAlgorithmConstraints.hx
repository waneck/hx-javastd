package sun.security.ssl;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Algorithm constraints for disabled algorithms property
*
* See the "jdk.certpath.disabledAlgorithms" specification in java.security
* for the syntax of the disabled algorithm string.
*/
@:internal extern class SSLAlgorithmConstraints implements java.security.AlgorithmConstraints
{
	@:overload public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, parameters : java.security.AlgorithmParameters) : Bool;
	
	@:overload public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, key : java.security.Key) : Bool;
	
	@:overload public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, key : java.security.Key, parameters : java.security.AlgorithmParameters) : Bool;
	
	
}
@:native('sun$security$ssl$SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints') @:internal extern class SSLAlgorithmConstraints_SupportedSignatureAlgorithmConstraints implements java.security.AlgorithmConstraints
{
	@:overload public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, parameters : java.security.AlgorithmParameters) : Bool;
	
	@:overload @:final public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, key : java.security.Key) : Bool;
	
	@:overload @:final public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, key : java.security.Key, parameters : java.security.AlgorithmParameters) : Bool;
	
	
}
@:native('sun$security$ssl$SSLAlgorithmConstraints$BasicDisabledAlgConstraints') @:internal extern class SSLAlgorithmConstraints_BasicDisabledAlgConstraints extends sun.security.util.DisabledAlgorithmConstraints
{
	@:overload private function decomposes(keyExchange : KeyExchange, forCertPathOnly : Bool) : java.util.Set<String>;
	
	@:overload private function decomposes(bulkCipher : BulkCipher) : java.util.Set<String>;
	
	@:overload private function decomposes(macAlg : MacAlg) : java.util.Set<String>;
	
	
}
@:native('sun$security$ssl$SSLAlgorithmConstraints$TLSDisabledAlgConstraints') @:internal extern class SSLAlgorithmConstraints_TLSDisabledAlgConstraints extends SSLAlgorithmConstraints_BasicDisabledAlgConstraints
{
	@:overload override private function decomposes(algorithm : String) : java.util.Set<String>;
	
	
}
@:native('sun$security$ssl$SSLAlgorithmConstraints$X509DisabledAlgConstraints') @:internal extern class SSLAlgorithmConstraints_X509DisabledAlgConstraints extends SSLAlgorithmConstraints_BasicDisabledAlgConstraints
{
	@:overload override private function decomposes(algorithm : String) : java.util.Set<String>;
	
	
}
