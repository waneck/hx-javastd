package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnsolicitedResponseImpl implements javax.naming.ldap.UnsolicitedNotification
{
	/**
	* Retrieves the object identifier of the response.
	*
	* @return A possibly null object identifier string representing the LDAP
	*         <tt>ExtendedResponse.responseName</tt> component.
	*/
	@:overload @:public public function getID() : String;
	
	/**
	* Retrieves the ASN.1 BER encoded value of the LDAP extended operation
	* response. Null is returned if the value is absent from the response
	* sent by the LDAP server.
	* The result is the raw BER bytes including the tag and length of
	* the response value. It does not include the response OID.
	*
	* @return A possibly null byte array representing the ASN.1 BER encoded
	*         contents of the LDAP <tt>ExtendedResponse.response</tt>
	*         component.
	*/
	@:overload @:public public function getEncodedValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the referral(s) sent by the server.
	*
	* @return A possibly null array of referrals, each of which is represented
	* by a URL string. If null, no referral was sent by the server.
	*/
	@:overload @:public public function getReferrals() : java.NativeArray<String>;
	
	/**
	* Retrieves the exception as constructed using information
	* sent by the server.
	* @return A possibly null exception as constructed using information
	* sent by the server. If null, a "success" status was indicated by
	* the server.
	*/
	@:overload @:public public function getException() : javax.naming.NamingException;
	
	@:overload @:public public function getControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	
}
