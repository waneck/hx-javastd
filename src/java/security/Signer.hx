package java.security;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is used to represent an Identity that can also digitally
* sign data.
*
* <p>The management of a signer's private keys is an important and
* sensitive issue that should be handled by subclasses as appropriate
* to their intended use.
*
* @see Identity
*
* @author Benjamin Renaud
*
* @deprecated This class is no longer used. Its functionality has been
* replaced by <code>java.security.KeyStore</code>, the
* <code>java.security.cert</code> package, and
* <code>java.security.Principal</code>.
*/
extern class Signer extends java.security.Identity
{
	/**
	* Creates a signer. This constructor should only be used for
	* serialization.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Creates a signer with the specified identity name.
	*
	* @param name the identity name.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a signer with the specified identity name and scope.
	*
	* @param name the identity name.
	*
	* @param scope the scope of the identity.
	*
	* @exception KeyManagementException if there is already an identity
	* with the same name in the scope.
	*/
	@:overload @:public public function new(name : String, scope : java.security.IdentityScope) : Void;
	
	/**
	* Returns this signer's private key.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"getSignerPrivateKey"</code>
	* as its argument to see if it's ok to return the private key.
	*
	* @return this signer's private key, or null if the private key has
	* not yet been set.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* returning the private key.
	*
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function getPrivateKey() : java.security.PrivateKey;
	
	/**
	* Sets the key pair (public key and private key) for this signer.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"setSignerKeyPair"</code>
	* as its argument to see if it's ok to set the key pair.
	*
	* @param pair an initialized key pair.
	*
	* @exception InvalidParameterException if the key pair is not
	* properly initialized.
	* @exception KeyException if the key pair cannot be set for any
	* other reason.
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* setting the key pair.
	*
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public @:final public function setKeyPair(pair : java.security.KeyPair) : Void;
	
	/**
	* Returns a string of information about the signer.
	*
	* @return a string of information about the signer.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
