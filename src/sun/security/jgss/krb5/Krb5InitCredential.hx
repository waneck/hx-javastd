package sun.security.jgss.krb5;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Krb5InitCredential extends javax.security.auth.kerberos.KerberosTicket implements sun.security.jgss.krb5.Krb5CredElement
{
	/**
	* Returns the principal name for this credential. The name
	* is in mechanism specific format.
	*
	* @return GSSNameSpi representing principal name of this credential
	* @exception GSSException may be thrown
	*/
	@:overload @:public @:final public function getName() : sun.security.jgss.spi.GSSNameSpi;
	
	/**
	* Returns the init lifetime remaining.
	*
	* @return the init lifetime remaining in seconds
	* @exception GSSException may be thrown
	*/
	@:overload @:public public function getInitLifetime() : Int;
	
	/**
	* Returns the accept lifetime remaining.
	*
	* @return the accept lifetime remaining in seconds
	* @exception GSSException may be thrown
	*/
	@:overload @:public public function getAcceptLifetime() : Int;
	
	@:overload @:public public function isInitiatorCredential() : Bool;
	
	@:overload @:public public function isAcceptorCredential() : Bool;
	
	/**
	* Returns the oid representing the underlying credential
	* mechanism oid.
	*
	* @return the Oid for this credential mechanism
	* @exception GSSException may be thrown
	*/
	@:overload @:public @:final public function getMechanism() : org.ietf.jgss.Oid;
	
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Called to invalidate this credential element.
	*/
	@:overload @:public public function dispose() : Void;
	
	
}
