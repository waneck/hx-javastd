package sun.security.krb5.internal.ccache;
/*
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class CredentialsCache
{
	@:overload public static function getInstance(principal : sun.security.krb5.PrincipalName) : CredentialsCache;
	
	@:overload public static function getInstance(cache : String) : CredentialsCache;
	
	@:overload public static function getInstance(principal : sun.security.krb5.PrincipalName, cache : String) : CredentialsCache;
	
	/**
	* Gets the default credentials cache.
	*/
	@:overload public static function getInstance() : CredentialsCache;
	
	@:overload public static function create(principal : sun.security.krb5.PrincipalName, name : String) : CredentialsCache;
	
	@:overload public static function create(principal : sun.security.krb5.PrincipalName) : CredentialsCache;
	
	@:overload public static function cacheName() : String;
	
	@:overload @:abstract public function getPrimaryPrincipal() : sun.security.krb5.PrincipalName;
	
	@:overload @:abstract public function update(c : sun.security.krb5.Credentials) : Void;
	
	@:overload @:abstract public function save() : Void;
	
	@:overload @:abstract public function getCredsList() : java.NativeArray<sun.security.krb5.Credentials>;
	
	@:overload @:abstract public function getDefaultCreds() : sun.security.krb5.Credentials;
	
	@:overload @:abstract public function getCreds(sname : sun.security.krb5.PrincipalName, srealm : sun.security.krb5.Realm) : sun.security.krb5.Credentials;
	
	@:overload @:abstract public function getCreds(options : sun.security.krb5.internal.LoginOptions, sname : sun.security.krb5.PrincipalName, srealm : sun.security.krb5.Realm) : sun.security.krb5.Credentials;
	
	
}
