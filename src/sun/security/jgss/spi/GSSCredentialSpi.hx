package sun.security.jgss.spi;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern interface GSSCredentialSpi
{
	/**
	* This interface is implemented by a mechanism specific credential
	* element. A GSSCredential is conceptually a container class of several
	* credential elements from different mechanisms.
	*
	* @author Mayank Upadhyay
	*/
	@:overload @:public public function getProvider() : java.security.Provider;
	
	/**
	* Called to invalidate this credential element and release
	* any system recourses and cryptographic information owned
	* by the credential.
	*
	* @exception GSSException with major codes NO_CRED and FAILURE
	*/
	@:overload @:public public function dispose() : Void;
	
	/**
	* Returns the principal name for this credential. The name
	* is in mechanism specific format.
	*
	* @return GSSNameSpi representing principal name of this credential
	* @exception GSSException may be thrown
	*/
	@:overload @:public public function getName() : sun.security.jgss.spi.GSSNameSpi;
	
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
	
	/**
	* Determines if this credential element can be used by a context
	* initiator.
	* @return true if it can be used for initiating contexts
	*/
	@:overload @:public public function isInitiatorCredential() : Bool;
	
	/**
	* Determines if this credential element can be used by a context
	* acceptor.
	* @return true if it can be used for accepting contexts
	*/
	@:overload @:public public function isAcceptorCredential() : Bool;
	
	/**
	* Returns the oid representing the underlying credential
	* mechanism oid.
	*
	* @return the Oid for this credential mechanism
	* @exception GSSException may be thrown
	*/
	@:overload @:public public function getMechanism() : org.ietf.jgss.Oid;
	
	
}
