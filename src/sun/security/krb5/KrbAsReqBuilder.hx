package sun.security.krb5;
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
extern class KrbAsReqBuilder
{
	/**
	* Creates a builder to be used by {@code cname} with existing keys.
	*
	* @param cname the client of the AS-REQ. Must not be null. Might have no
	* realm, where default realm will be used. This realm will be the target
	* realm for AS-REQ. I believe a client should only get initial TGT from
	* its own realm.
	* @param keys must not be null. if empty, might be quite useless.
	* This argument will neither be modified nor stored by the method.
	* @throws KrbException
	*/
	@:overload public function new(cname : sun.security.krb5.PrincipalName, ktab : javax.security.auth.kerberos.KeyTab) : Void;
	
	/**
	* Creates a builder to be used by {@code cname} with a known password.
	*
	* @param cname the client of the AS-REQ. Must not be null. Might have no
	* realm, where default realm will be used. This realm will be the target
	* realm for AS-REQ. I believe a client should only get initial TGT from
	* its own realm.
	* @param pass must not be null. This argument will neither be modified
	* nor stored by the method.
	* @throws KrbException
	*/
	@:overload public function new(cname : sun.security.krb5.PrincipalName, pass : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Retrieves an array of secret keys for the client. This is used when
	* the client supplies password but need keys to act as an acceptor. For
	* an initiator, it must be called after AS-REQ is performed (state is OK).
	* For an acceptor, it can be called when this KrbAsReqBuilder object is
	* constructed (state is INIT).
	* @param isInitiator if the caller is an initiator
	* @return generated keys from password. PA-DATA from server might be used.
	* All "default_tkt_enctypes" keys will be generated, Never null.
	* @throws IllegalStateException if not constructed from a password
	* @throws KrbException
	*/
	@:overload public function getKeys(isInitiator : Bool) : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	/**
	* Sets or clears options. If cleared, default options will be used
	* at creation time.
	* @param options
	*/
	@:overload public function setOptions(options : sun.security.krb5.internal.KDCOptions) : Void;
	
	/**
	* Sets or clears target. If cleared, KrbAsReq might choose krbtgt
	* for cname realm
	* @param sname
	*/
	@:overload public function setTarget(sname : sun.security.krb5.PrincipalName) : Void;
	
	/**
	* Adds or clears addresses. KrbAsReq might add some if empty
	* field not allowed
	* @param addresses
	*/
	@:overload public function setAddresses(addresses : sun.security.krb5.internal.HostAddresses) : Void;
	
	/**
	* Performs AS-REQ send and AS-REP receive.
	* Maybe a state is needed here, to divide prepare process and getCreds.
	* @throws KrbException
	* @throws Asn1Exception
	* @throws IOException
	*/
	@:overload public function action() : KrbAsReqBuilder;
	
	/**
	* Gets Credentials object after action
	*/
	@:overload public function getCreds() : sun.security.krb5.Credentials;
	
	/**
	* Gets another type of Credentials after action
	*/
	@:overload public function getCCreds() : sun.security.krb5.internal.ccache.Credentials;
	
	/**
	* Destroys the object and clears keys and password info.
	*/
	@:overload public function destroy() : Void;
	
	
}
@:native('sun$security$krb5$KrbAsReqBuilder$State') privateextern enum KrbAsReqBuilder_State
{
	INIT;
	REQ_OK;
	DESTROYED;
	
}

