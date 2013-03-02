package sun.security.util;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class HostnameChecker
{
	/**
	* Class to check hostnames against the names specified in a certificate as
	* required for TLS and LDAP.
	*
	*/
	public static var TYPE_TLS(default, null) : java.StdTypes.Int8;
	
	public static var TYPE_LDAP(default, null) : java.StdTypes.Int8;
	
	/**
	* Get a HostnameChecker instance. checkType should be one of the
	* TYPE_* constants defined in this class.
	*/
	@:overload public static function getInstance(checkType : java.StdTypes.Int8) : sun.security.util.HostnameChecker;
	
	/**
	* Perform the check.
	*
	* @exception CertificateException if the name does not match any of
	* the names specified in the certificate
	*/
	@:overload public function match(expectedName : String, cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Perform the check for Kerberos.
	*/
	@:native('match') @:overload public static function _match(expectedName : String, principal : java.security.Principal) : Bool;
	
	/**
	* Return the Server name from Kerberos principal.
	*/
	@:overload public static function getServerName(principal : java.security.Principal) : String;
	
	/**
	* Return the subject of a certificate as X500Name, by reparsing if
	* necessary. X500Name should only be used if access to name components
	* is required, in other cases X500Principal is to be prefered.
	*
	* This method is currently used from within JSSE, do not remove.
	*/
	@:overload public static function getSubjectX500Name(cert : java.security.cert.X509Certificate) : sun.security.x509.X500Name;
	
	
}
