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
extern class Credentials
{
	public var isEncInSKey : Bool;
	
	@:overload public function new(new_cname : sun.security.krb5.PrincipalName, new_sname : sun.security.krb5.PrincipalName, new_key : sun.security.krb5.EncryptionKey, new_authtime : sun.security.krb5.internal.KerberosTime, new_starttime : sun.security.krb5.internal.KerberosTime, new_endtime : sun.security.krb5.internal.KerberosTime, new_renewTill : sun.security.krb5.internal.KerberosTime, new_isEncInSKey : Bool, new_flags : sun.security.krb5.internal.TicketFlags, new_caddr : sun.security.krb5.internal.HostAddresses, new_authData : sun.security.krb5.internal.AuthorizationData, new_ticket : sun.security.krb5.internal.Ticket, new_secondTicket : sun.security.krb5.internal.Ticket) : Void;
	
	@:overload public function new(kdcRep : sun.security.krb5.internal.KDCRep, new_secondTicket : sun.security.krb5.internal.Ticket, new_authorizationData : sun.security.krb5.internal.AuthorizationData, new_isEncInSKey : Bool) : Void;
	
	@:overload public function new(kdcRep : sun.security.krb5.internal.KDCRep) : Void;
	
	@:overload public function new(kdcRep : sun.security.krb5.internal.KDCRep, new_ticket : sun.security.krb5.internal.Ticket) : Void;
	
	/**
	* Checks if this credential is expired
	*/
	@:overload public function isValid() : Bool;
	
	@:overload public function getServicePrincipal() : sun.security.krb5.PrincipalName;
	
	@:overload public function setKrbCreds() : sun.security.krb5.Credentials;
	
	@:overload public function getAuthTime() : sun.security.krb5.internal.KerberosTime;
	
	@:overload public function getEndTime() : sun.security.krb5.internal.KerberosTime;
	
	@:overload public function getTicketFlags() : sun.security.krb5.internal.TicketFlags;
	
	@:overload public function getEType() : Int;
	
	
}
