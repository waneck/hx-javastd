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
* <p>This class represents identities: real-world objects such as people,
* companies or organizations whose identities can be authenticated using
* their public keys. Identities may also be more abstract (or concrete)
* constructs, such as daemon threads or smart cards.
*
* <p>All Identity objects have a name and a public key. Names are
* immutable. Identities may also be scoped. That is, if an Identity is
* specified to have a particular scope, then the name and public
* key of the Identity are unique within that scope.
*
* <p>An Identity also has a set of certificates (all certifying its own
* public key). The Principal names specified in these certificates need
* not be the same, only the key.
*
* <p>An Identity can be subclassed, to include postal and email addresses,
* telephone numbers, images of faces and logos, and so on.
*
* @see IdentityScope
* @see Signer
* @see Principal
*
* @author Benjamin Renaud
* @deprecated This class is no longer used. Its functionality has been
* replaced by <code>java.security.KeyStore</code>, the
* <code>java.security.cert</code> package, and
* <code>java.security.Principal</code>.
*/
extern class Identity implements java.security.Principal implements java.io.Serializable
{
	/**
	* Constructor for serialization only.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructs an identity with the specified name and scope.
	*
	* @param name the identity name.
	* @param scope the scope of the identity.
	*
	* @exception KeyManagementException if there is already an identity
	* with the same name in the scope.
	*/
	@:overload @:public public function new(name : String, scope : java.security.IdentityScope) : Void;
	
	/**
	* Constructs an identity with the specified name and no scope.
	*
	* @param name the identity name.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Returns this identity's name.
	*
	* @return the name of this identity.
	*/
	@:overload @:public @:final public function getName() : String;
	
	/**
	* Returns this identity's scope.
	*
	* @return the scope of this identity.
	*/
	@:overload @:public @:final public function getScope() : java.security.IdentityScope;
	
	/**
	* Returns this identity's public key.
	*
	* @return the public key for this identity.
	*
	* @see #setPublicKey
	*/
	@:overload @:public public function getPublicKey() : java.security.PublicKey;
	
	/* Should we throw an exception if this is already set? */
	@:overload @:public public function setPublicKey(key : java.security.PublicKey) : Void;
	
	/**
	* Specifies a general information string for this identity.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"setIdentityInfo"</code>
	* as its argument to see if it's ok to specify the information string.
	*
	* @param info the information string.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* setting the information string.
	*
	* @see #getInfo
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function setInfo(info : String) : Void;
	
	/**
	* Returns general information previously specified for this identity.
	*
	* @return general information about this identity.
	*
	* @see #setInfo
	*/
	@:overload @:public public function getInfo() : String;
	
	/**
	* Adds a certificate for this identity. If the identity has a public
	* key, the public key in the certificate must be the same, and if
	* the identity does not have a public key, the identity's
	* public key is set to be that specified in the certificate.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"addIdentityCertificate"</code>
	* as its argument to see if it's ok to add a certificate.
	*
	* @param certificate the certificate to be added.
	*
	* @exception KeyManagementException if the certificate is not valid,
	* if the public key in the certificate being added conflicts with
	* this identity's public key, or if another exception occurs.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* adding a certificate.
	*
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function addCertificate(certificate : java.security.Certificate) : Void;
	
	/**
	* Removes a certificate from this identity.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"removeIdentityCertificate"</code>
	* as its argument to see if it's ok to remove a certificate.
	*
	* @param certificate the certificate to be removed.
	*
	* @exception KeyManagementException if the certificate is
	* missing, or if another exception occurs.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* removing a certificate.
	*
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function removeCertificate(certificate : java.security.Certificate) : Void;
	
	/**
	* Returns a copy of all the certificates for this identity.
	*
	* @return a copy of all the certificates for this identity.
	*/
	@:overload @:public public function certificates() : java.NativeArray<java.security.Certificate>;
	
	/**
	* Tests for equality between the specified object and this identity.
	* This first tests to see if the entities actually refer to the same
	* object, in which case it returns true. Next, it checks to see if
	* the entities have the same name and the same scope. If they do,
	* the method returns true. Otherwise, it calls
	* {@link #identityEquals(Identity) identityEquals}, which subclasses should
	* override.
	*
	* @param identity the object to test for equality with this identity.
	*
	* @return true if the objects are considered equal, false otherwise.
	*
	* @see #identityEquals
	*/
	@:overload @:public @:final public function equals(identity : Dynamic) : Bool;
	
	/**
	* Tests for equality between the specified identity and this identity.
	* This method should be overriden by subclasses to test for equality.
	* The default behavior is to return true if the names and public keys
	* are equal.
	*
	* @param identity the identity to test for equality with this identity.
	*
	* @return true if the identities are considered equal, false
	* otherwise.
	*
	* @see #equals
	*/
	@:overload @:protected private function identityEquals(identity : java.security.Identity) : Bool;
	
	/**
	* Returns a short string describing this identity, telling its
	* name and its scope (if any).
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"printIdentity"</code>
	* as its argument to see if it's ok to return the string.
	*
	* @return information about this identity, such as its name and the
	* name of its scope (if any).
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* returning a string describing this identity.
	*
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a string representation of this identity, with
	* optionally more details than that provided by the
	* <code>toString</code> method without any arguments.
	*
	* <p>First, if there is a security manager, its <code>checkSecurityAccess</code>
	* method is called with <code>"printIdentity"</code>
	* as its argument to see if it's ok to return the string.
	*
	* @param detailed whether or not to provide detailed information.
	*
	* @return information about this identity. If <code>detailed</code>
	* is true, then this method returns more information than that
	* provided by the <code>toString</code> method without any arguments.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* returning a string describing this identity.
	*
	* @see #toString
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload @:public public function toString(detailed : Bool) : String;
	
	/**
	* Returns a hashcode for this identity.
	*
	* @return a hashcode for this identity.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
