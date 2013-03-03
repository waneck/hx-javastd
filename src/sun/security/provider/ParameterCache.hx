package sun.security.provider;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ParameterCache
{
	/**
	* Return cached DSA parameters for the given keylength, or null if none
	* are available in the cache.
	*/
	@:overload @:public @:static public static function getCachedDSAParameterSpec(keyLength : Int) : java.security.spec.DSAParameterSpec;
	
	/**
	* Return cached DH parameters for the given keylength, or null if none
	* are available in the cache.
	*/
	@:overload @:public @:static public static function getCachedDHParameterSpec(keyLength : Int) : javax.crypto.spec.DHParameterSpec;
	
	/**
	* Return DSA parameters for the given keylength. Uses cache if possible,
	* generates new parameters and adds them to the cache otherwise.
	*/
	@:overload @:public @:static public static function getDSAParameterSpec(keyLength : Int, random : java.security.SecureRandom) : java.security.spec.DSAParameterSpec;
	
	/**
	* Return DH parameters for the given keylength. Uses cache if possible,
	* generates new parameters and adds them to the cache otherwise.
	*/
	@:overload @:public @:static public static function getDHParameterSpec(keyLength : Int, random : java.security.SecureRandom) : javax.crypto.spec.DHParameterSpec;
	
	/**
	* Return new DSA parameters for the given keylength. Do not lookup in
	* cache and do not cache the newly generated parameters. This method
	* really only exists for the legacy method
	* DSAKeyPairGenerator.initialize(int, boolean, SecureRandom).
	*/
	@:overload @:public @:static public static function getNewDSAParameterSpec(keyLength : Int, random : java.security.SecureRandom) : java.security.spec.DSAParameterSpec;
	
	
}
