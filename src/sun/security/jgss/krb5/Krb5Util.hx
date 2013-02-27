package sun.security.jgss.krb5;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Krb5Util
{
	/**
	* Retrieve the service ticket for serverPrincipal from caller's Subject
	* or from Subject obtained by logging in, or if not found, via the
	* Ticket Granting Service using the TGT obtained from the Subject.
	*
	* Caller must have permission to:
	*    - access and update Subject's private credentials
	*    - create LoginContext
	*    - read the auth.login.defaultCallbackHandler security property
	*
	* NOTE: This method is used by JSSE Kerberos Cipher Suites
	*/
	@:overload public static function getTicketFromSubjectAndTgs(caller : sun.security.jgss.GSSCaller, clientPrincipal : String, serverPrincipal : String, tgsPrincipal : String, acc : java.security.AccessControlContext) : javax.security.auth.kerberos.KerberosTicket;
	
	/**
	* Retrieves the caller's Subject, or Subject obtained by logging in
	* via the specified caller.
	*
	* Caller must have permission to:
	*    - access the Subject
	*    - create LoginContext
	*    - read the auth.login.defaultCallbackHandler security property
	*
	* NOTE: This method is used by JSSE Kerberos Cipher Suites
	*/
	@:overload public static function getSubject(caller : sun.security.jgss.GSSCaller, acc : java.security.AccessControlContext) : javax.security.auth.Subject;
	
	/**
	* Retrieves the ServiceCreds for the specified server principal from
	* the Subject in the specified AccessControlContext. If not found, and if
	* useSubjectCredsOnly is false, then obtain from a LoginContext.
	*
	* NOTE: This method is also used by JSSE Kerberos Cipher Suites
	*/
	@:overload public static function getServiceCreds(caller : sun.security.jgss.GSSCaller, serverPrincipal : String, acc : java.security.AccessControlContext) : Krb5Util_ServiceCreds;
	
	@:overload public static function credsToTicket(serviceCreds : sun.security.krb5.Credentials) : javax.security.auth.kerberos.KerberosTicket;
	
	@:overload public static function ticketToCreds(kerbTicket : javax.security.auth.kerberos.KerberosTicket) : sun.security.krb5.Credentials;
	
	/**
	* A helper method to get EncryptionKeys from a javax..KeyTab
	* @param ktab the javax..KeyTab class
	* @param cname the PrincipalName
	* @return the EKeys, never null, might be empty
	*/
	@:overload public static function keysFromJavaxKeyTab(ktab : javax.security.auth.kerberos.KeyTab, cname : sun.security.krb5.PrincipalName) : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	
}
@:native('sun$security$jgss$krb5$Krb5Util$KeysFromKeyTab') extern class Krb5Util_KeysFromKeyTab extends javax.security.auth.kerberos.KerberosKey
{
	@:overload public function new(key : javax.security.auth.kerberos.KerberosKey) : Void;
	
	
}
/**
* Credentials of a service, the private secret to authenticate its
* identity, which can be:
*   1. Some KerberosKeys (generated from password)
*   2. A KeyTab (for a typical service)
*   3. A TGT (for a user2user service. Not supported yet)
*
* Note that some creds can coexist. For example, a user2user service
* can use its keytab (or keys) if the client can successfully obtain a
* normal service ticket, otherwise, it can uses the TGT (actually, the
* session key of the TGT) if the client can only acquire a service ticket
* of ENC-TKT-IN-SKEY style.
*/
@:native('sun$security$jgss$krb5$Krb5Util$ServiceCreds') extern class Krb5Util_ServiceCreds
{
	@:overload public function getName() : String;
	
	@:overload public function getKKeys() : java.NativeArray<javax.security.auth.kerberos.KerberosKey>;
	
	@:overload public function getEKeys() : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	@:overload public function destroy() : Void;
	
	
}
