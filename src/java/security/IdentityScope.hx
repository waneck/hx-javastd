package java.security;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IdentityScope extends java.security.Identity
{
	/**
	* This constructor is used for serialization only and should not
	* be used by subclasses.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructs a new identity scope with the specified name.
	*
	* @param name the scope name.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Constructs a new identity scope with the specified name and scope.
	*
	* @param name the scope name.
	* @param scope the scope for the new identity scope.
	*
	* @exception KeyManagementException if there is already an identity
	* with the same name in the scope.
	*/
	@:overload public function new(name : String, scope : java.security.IdentityScope) : Void;
	
	/**
	* Returns the system's identity scope.
	*
	* @return the system's identity scope, or {@code null} if none has been
	*         set.
	*
	* @see #setSystemScope
	*/
	@:overload public static function getSystemScope() : java.security.IdentityScope;
	
	/**
	* Sets the system's identity scope.
	*
	* <p>First, if there is a security manager, its
	* <code>checkSecurityAccess</code>
	* method is called with <code>"setSystemScope"</code>
	* as its argument to see if it's ok to set the identity scope.
	*
	* @param scope the scope to set.
	*
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkSecurityAccess</code> method doesn't allow
	* setting the identity scope.
	*
	* @see #getSystemScope
	* @see SecurityManager#checkSecurityAccess
	*/
	@:overload private static function setSystemScope(scope : java.security.IdentityScope) : Void;
	
	/**
	* Returns the number of identities within this identity scope.
	*
	* @return the number of identities within this identity scope.
	*/
	@:overload @:abstract public function size() : Int;
	
	/**
	* Returns the identity in this scope with the specified name (if any).
	*
	* @param name the name of the identity to be retrieved.
	*
	* @return the identity named <code>name</code>, or null if there are
	* no identities named <code>name</code> in this scope.
	*/
	@:overload @:abstract public function getIdentity(name : String) : java.security.Identity;
	
	/**
	* Retrieves the identity whose name is the same as that of the
	* specified principal. (Note: Identity implements Principal.)
	*
	* @param principal the principal corresponding to the identity
	* to be retrieved.
	*
	* @return the identity whose name is the same as that of the
	* principal, or null if there are no identities of the same name
	* in this scope.
	*/
	@:overload public function getIdentity(principal : java.security.Principal) : java.security.Identity;
	
	/**
	* Retrieves the identity with the specified public key.
	*
	* @param key the public key for the identity to be returned.
	*
	* @return the identity with the given key, or null if there are
	* no identities in this scope with that key.
	*/
	@:overload @:abstract public function getIdentity(key : java.security.PublicKey) : java.security.Identity;
	
	/**
	* Adds an identity to this identity scope.
	*
	* @param identity the identity to be added.
	*
	* @exception KeyManagementException if the identity is not
	* valid, a name conflict occurs, another identity has the same
	* public key as the identity being added, or another exception
	* occurs. */
	@:overload @:abstract public function addIdentity(identity : java.security.Identity) : Void;
	
	/**
	* Removes an identity from this identity scope.
	*
	* @param identity the identity to be removed.
	*
	* @exception KeyManagementException if the identity is missing,
	* or another exception occurs.
	*/
	@:overload @:abstract public function removeIdentity(identity : java.security.Identity) : Void;
	
	/**
	* Returns an enumeration of all identities in this identity scope.
	*
	* @return an enumeration of all identities in this identity scope.
	*/
	@:overload @:abstract public function identities() : java.util.Enumeration<java.security.Identity>;
	
	/**
	* Returns a string representation of this identity scope, including
	* its name, its scope name, and the number of identities in this
	* identity scope.
	*
	* @return a string representation of this identity scope.
	*/
	@:overload override public function toString() : String;
	
	
}
