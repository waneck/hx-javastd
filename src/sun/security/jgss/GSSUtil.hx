package sun.security.jgss;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GSSUtil
{
	/**
	* The GSSUtilImplementation that knows how to work with the internals of
	* the GSS-API.
	*/
	public static var GSS_KRB5_MECH_OID(default, null) : org.ietf.jgss.Oid;
	
	public static var GSS_KRB5_MECH_OID2(default, null) : org.ietf.jgss.Oid;
	
	public static var GSS_SPNEGO_MECH_OID(default, null) : org.ietf.jgss.Oid;
	
	public static var NT_GSS_KRB5_PRINCIPAL(default, null) : org.ietf.jgss.Oid;
	
	@:overload public static function createOid(oidStr : String) : org.ietf.jgss.Oid;
	
	@:overload public static function isSpNegoMech(oid : org.ietf.jgss.Oid) : Bool;
	
	@:overload public static function isKerberosMech(oid : org.ietf.jgss.Oid) : Bool;
	
	@:overload public static function getMechStr(oid : org.ietf.jgss.Oid) : String;
	
	/**
	* Note: The current impl only works with Sun's impl of
	* GSSName and GSSCredential since it depends on package
	* private APIs.
	*/
	@:overload public static function getSubject(name : org.ietf.jgss.GSSName, creds : org.ietf.jgss.GSSCredential) : javax.security.auth.Subject;
	
	/**
	* Authenticate using the login module from the specified
	* configuration entry.
	*
	* @param caller the caller of JAAS Login
	* @param mech the mech to be used
	* @return the authenticated subject
	*/
	@:overload public static function login(caller : sun.security.jgss.GSSCaller, mech : org.ietf.jgss.Oid) : javax.security.auth.Subject;
	
	/**
	* Determines if the application doesn't mind if the mechanism obtains
	* the required credentials from outside of the current Subject. Our
	* Kerberos v5 mechanism would do a JAAS login on behalf of the
	* application if this were the case.
	*
	* The application indicates this by explicitly setting the system
	* property javax.security.auth.useSubjectCredsOnly to false.
	*/
	@:overload public static function useSubjectCredsOnly(caller : sun.security.jgss.GSSCaller) : Bool;
	
	/**
	* Determines the SPNEGO interoperability mode with Microsoft;
	* by default it is set to true.
	*
	* To disable it, the application indicates this by explicitly setting
	* the system property sun.security.spnego.interop to false.
	*/
	@:overload public static function useMSInterop() : Bool;
	
	/**
	* Searches the private credentials of current Subject with the
	* specified criteria and returns the matching GSSCredentialSpi
	* object out of Sun's impl of GSSCredential. Returns null if
	* no Subject present or a Vector which contains 0 or more
	* matching GSSCredentialSpi objects.
	*/
	@:overload public static function searchSubject(name : sun.security.jgss.spi.GSSNameSpi, mech : org.ietf.jgss.Oid, initiate : Bool, credCls : Class<Dynamic>) : java.util.Vector<Dynamic>;
	
	
}
