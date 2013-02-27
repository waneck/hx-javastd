package sun.security.krb5.internal.ccache;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
* ===========================================================================
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
* ===========================================================================
*
*/
/**
* CredentialsCache stores credentials(tickets, session keys, etc) in a
* semi-permanent store
* for later use by different program.
*
* @author Yanni Zhang
* @author Ram Marti
*/
extern class FileCredentialsCache extends sun.security.krb5.internal.ccache.CredentialsCache implements sun.security.krb5.internal.ccache.FileCCacheConstants
{
	public var version : Int;
	
	public var tag : sun.security.krb5.internal.ccache.Tag;
	
	public var primaryPrincipal : sun.security.krb5.PrincipalName;
	
	public var primaryRealm : sun.security.krb5.Realm;
	
	@:overload @:synchronized public static function acquireInstance(principal : sun.security.krb5.PrincipalName, cache : String) : FileCredentialsCache;
	
	@:overload public static function acquireInstance() : FileCredentialsCache;
	
	/**
	* Updates the credentials list. If the specified credentials for the
	* service is new, add it to the list. If there is an entry in the list,
	* replace the old credentials with the new one.
	* @param c the credentials.
	*/
	@:overload @:synchronized override public function update(c : sun.security.krb5.Credentials) : Void;
	
	@:overload @:synchronized override public function getPrimaryPrincipal() : sun.security.krb5.PrincipalName;
	
	/**
	* Saves the credentials cache file to the disk.
	*/
	@:overload @:synchronized override public function save() : Void;
	
	/**
	* Returns the list of credentials entries in the cache file.
	*/
	@:overload @:synchronized override public function getCredsList() : java.NativeArray<sun.security.krb5.Credentials>;
	
	@:overload override public function getCreds(options : sun.security.krb5.internal.LoginOptions, sname : sun.security.krb5.PrincipalName, srealm : sun.security.krb5.Realm) : sun.security.krb5.Credentials;
	
	/**
	* Gets a credentials for a specified service.
	* @param sname service principal name.
	* @param srealm the realm that the service belongs to.
	*/
	@:overload override public function getCreds(sname : sun.security.krb5.PrincipalName, srealm : sun.security.krb5.Realm) : sun.security.krb5.Credentials;
	
	@:overload override public function getDefaultCreds() : sun.security.krb5.Credentials;
	
	/*
	* Returns path name of the credentials cache file.
	* The path name is searched in the following order:
	*
	* 1. KRB5CCNAME
	* 2. /tmp/krb5cc_<uid> on unix systems
	* 3. <user.home>/krb5cc_<user.name>
	* 4. <user.home>/krb5cc (if can't get <user.name>)
	*/
	@:overload public static function getDefaultCacheName() : String;
	
	@:overload public static function checkValidation(name : String) : String;
	
	
}
