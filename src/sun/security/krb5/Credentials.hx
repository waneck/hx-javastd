package sun.security.krb5;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Credentials
{
	@:overload @:public public function new(new_ticket : sun.security.krb5.internal.Ticket, new_client : sun.security.krb5.PrincipalName, new_server : sun.security.krb5.PrincipalName, new_key : sun.security.krb5.EncryptionKey, new_flags : sun.security.krb5.internal.TicketFlags, authTime : sun.security.krb5.internal.KerberosTime, new_startTime : sun.security.krb5.internal.KerberosTime, new_endTime : sun.security.krb5.internal.KerberosTime, renewTill : sun.security.krb5.internal.KerberosTime, cAddr : sun.security.krb5.internal.HostAddresses, authzData : sun.security.krb5.internal.AuthorizationData) : Void;
	
	@:overload @:public public function new(new_ticket : sun.security.krb5.internal.Ticket, new_client : sun.security.krb5.PrincipalName, new_server : sun.security.krb5.PrincipalName, new_key : sun.security.krb5.EncryptionKey, new_flags : sun.security.krb5.internal.TicketFlags, authTime : sun.security.krb5.internal.KerberosTime, new_startTime : sun.security.krb5.internal.KerberosTime, new_endTime : sun.security.krb5.internal.KerberosTime, renewTill : sun.security.krb5.internal.KerberosTime, cAddr : sun.security.krb5.internal.HostAddresses) : Void;
	
	@:overload @:public public function new(encoding : java.NativeArray<java.StdTypes.Int8>, client : String, server : String, keyBytes : java.NativeArray<java.StdTypes.Int8>, keyType : Int, flags : java.NativeArray<Bool>, authTime : java.util.Date, startTime : java.util.Date, endTime : java.util.Date, renewTill : java.util.Date, cAddrs : java.NativeArray<java.net.InetAddress>) : Void;
	
	/*
	public Credentials(Credentials tgt, PrincipalName service)
	throws KrbException {
	}
	*/
	@:overload @:public @:final public function getClient() : sun.security.krb5.PrincipalName;
	
	@:overload @:public @:final public function getServer() : sun.security.krb5.PrincipalName;
	
	@:overload @:public @:final public function getSessionKey() : sun.security.krb5.EncryptionKey;
	
	@:overload @:public @:final public function getAuthTime() : java.util.Date;
	
	@:overload @:public @:final public function getStartTime() : java.util.Date;
	
	@:overload @:public @:final public function getEndTime() : java.util.Date;
	
	@:overload @:public @:final public function getRenewTill() : java.util.Date;
	
	@:overload @:public @:final public function getFlags() : java.NativeArray<Bool>;
	
	@:overload @:public @:final public function getClientAddresses() : java.NativeArray<java.net.InetAddress>;
	
	@:overload @:public @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function isForwardable() : Bool;
	
	@:overload @:public public function isRenewable() : Bool;
	
	@:overload @:public public function getTicket() : sun.security.krb5.internal.Ticket;
	
	@:overload @:public public function getTicketFlags() : sun.security.krb5.internal.TicketFlags;
	
	@:overload @:public public function getAuthzData() : sun.security.krb5.internal.AuthorizationData;
	
	/**
	* Checks if the service ticket returned by the KDC has the OK-AS-DELEGATE
	* flag set
	* @return true if OK-AS_DELEGATE flag is set, otherwise, return false.
	*/
	@:overload @:public public function checkDelegate() : Bool;
	
	/**
	* Reset TKT_OPTS_DELEGATE to false, called at credentials acquirement
	* when one of the cross-realm TGTs does not have the OK-AS-DELEGATE
	* flag set. This info must be preservable and restorable through
	* the Krb5Util.credsToTicket/ticketToCreds() methods so that even if
	* the service ticket is cached it still remembers the cross-realm
	* authentication result.
	*/
	@:overload @:public public function resetDelegate() : Void;
	
	@:overload @:public public function renew() : sun.security.krb5.Credentials;
	
	/**
	* Returns a TGT for the given client principal from a ticket cache.
	*
	* @param princ the client principal. A value of null means that the
	* default principal name in the credentials cache will be used.
	* @param ticketCache the path to the tickets file. A value
	* of null will be accepted to indicate that the default
	* path should be searched
	* @returns the TGT credentials or null if none were found. If the tgt
	* expired, it is the responsibility of the caller to determine this.
	*/
	@:overload @:public @:static public static function acquireTGTFromCache(princ : sun.security.krb5.PrincipalName, ticketCache : String) : sun.security.krb5.Credentials;
	
	/**
	* Acquires default credentials.
	* <br>The possible locations for default credentials cache is searched in
	* the following order:
	* <ol>
	* <li> The directory and cache file name specified by "KRB5CCNAME" system.
	* property.
	* <li> The directory and cache file name specified by "KRB5CCNAME"
	* environment variable.
	* <li> A cache file named krb5cc_{user.name} at {user.home} directory.
	* </ol>
	* @return a <code>KrbCreds</code> object if the credential is found,
	* otherwise return null.
	*/
	@:overload @:public @:static @:synchronized public static function acquireDefaultCreds() : sun.security.krb5.Credentials;
	
	/**
	* Acquires credentials for a specified service using initial credential.
	* When the service has a different realm
	* from the initial credential, we do cross-realm authentication
	* - first, we use the current credential to get
	* a cross-realm credential from the local KDC, then use that
	* cross-realm credential to request service credential
	* from the foreigh KDC.
	*
	* @param service the name of service principal using format
	* components@realm
	* @param ccreds client's initial credential.
	* @exception IOException if an error occurs in reading the credentials
	* cache
	* @exception KrbException if an error occurs specific to Kerberos
	* @return a <code>Credentials</code> object.
	*/
	@:overload @:public @:static public static function acquireServiceCreds(service : String, ccreds : sun.security.krb5.Credentials) : sun.security.krb5.Credentials;
	
	@:overload @:public public function getCache() : sun.security.krb5.internal.ccache.CredentialsCache;
	
	@:overload @:public public function getServiceKey() : sun.security.krb5.EncryptionKey;
	
	/*
	* Prints out debug info.
	*/
	@:overload @:public @:static public static function printDebug(c : sun.security.krb5.Credentials) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
