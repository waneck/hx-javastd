package java.security;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Policy
{
	/**
	* A read-only empty PermissionCollection instance.
	* @since 1.6
	*/
	@:require(java6) public static var UNSUPPORTED_EMPTY_COLLECTION(default, null) : java.security.PermissionCollection;
	
	/**
	* Returns the installed Policy object. This value should not be cached,
	* as it may be changed by a call to <code>setPolicy</code>.
	* This method first calls
	* <code>SecurityManager.checkPermission</code> with a
	* <code>SecurityPermission("getPolicy")</code> permission
	* to ensure it's ok to get the Policy object.
	*
	* @return the installed Policy.
	*
	* @throws SecurityException
	*        if a security manager exists and its
	*        <code>checkPermission</code> method doesn't allow
	*        getting the Policy object.
	*
	* @see SecurityManager#checkPermission(Permission)
	* @see #setPolicy(java.security.Policy)
	*/
	@:overload public static function getPolicy() : Policy;
	
	/**
	* Sets the system-wide Policy object. This method first calls
	* <code>SecurityManager.checkPermission</code> with a
	* <code>SecurityPermission("setPolicy")</code>
	* permission to ensure it's ok to set the Policy.
	*
	* @param p the new system Policy object.
	*
	* @throws SecurityException
	*        if a security manager exists and its
	*        <code>checkPermission</code> method doesn't allow
	*        setting the Policy.
	*
	* @see SecurityManager#checkPermission(Permission)
	* @see #getPolicy()
	*
	*/
	@:overload public static function setPolicy(p : Policy) : Void;
	
	/**
	* Returns a Policy object of the specified type.
	*
	* <p> This method traverses the list of registered security providers,
	* starting with the most preferred Provider.
	* A new Policy object encapsulating the
	* PolicySpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the specified Policy type.  See the Policy section in the
	*    <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Policy">
	*    Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	*    for a list of standard Policy types.
	*
	* @param params parameters for the Policy, which may be null.
	*
	* @return the new Policy object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Policy instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified parameters
	*          are not understood by the PolicySpi implementation
	*          from the selected Provider.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a PolicySpi
	*          implementation for the specified type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getInstance(type : String, params : Policy_Parameters) : Policy;
	
	/**
	* Returns a Policy object of the specified type.
	*
	* <p> A new Policy object encapsulating the
	* PolicySpi implementation from the specified provider
	* is returned.   The specified provider must be registered
	* in the provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the specified Policy type.  See the Policy section in the
	*    <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Policy">
	*    Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	*    for a list of standard Policy types.
	*
	* @param params parameters for the Policy, which may be null.
	*
	* @param provider the provider.
	*
	* @return the new Policy object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Policy instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified provider
	*          is null or empty,
	*          or if the specified parameters are not understood by
	*          the PolicySpi implementation from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception NoSuchAlgorithmException if the specified provider does not
	*          support a PolicySpi implementation for the specified type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getInstance(type : String, params : Policy_Parameters, provider : String) : Policy;
	
	/**
	* Returns a Policy object of the specified type.
	*
	* <p> A new Policy object encapsulating the
	* PolicySpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param type the specified Policy type.  See the Policy section in the
	*    <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Policy">
	*    Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	*    for a list of standard Policy types.
	*
	* @param params parameters for the Policy, which may be null.
	*
	* @param provider the Provider.
	*
	* @return the new Policy object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Policy instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified Provider is null,
	*          or if the specified parameters are not understood by
	*          the PolicySpi implementation from the specified Provider.
	*
	* @exception NoSuchAlgorithmException if the specified Provider does not
	*          support a PolicySpi implementation for the specified type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getInstance(type : String, params : Policy_Parameters, provider : java.security.Provider) : Policy;
	
	/**
	* Return the Provider of this Policy.
	*
	* <p> This Policy instance will only have a Provider if it
	* was obtained via a call to <code>Policy.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return the Provider of this Policy, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getProvider() : java.security.Provider;
	
	/**
	* Return the type of this Policy.
	*
	* <p> This Policy instance will only have a type if it
	* was obtained via a call to <code>Policy.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return the type of this Policy, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getType() : String;
	
	/**
	* Return Policy parameters.
	*
	* <p> This Policy instance will only have parameters if it
	* was obtained via a call to <code>Policy.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return Policy parameters, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getParameters() : Policy_Parameters;
	
	/**
	* Return a PermissionCollection object containing the set of
	* permissions granted to the specified CodeSource.
	*
	* <p> Applications are discouraged from calling this method
	* since this operation may not be supported by all policy implementations.
	* Applications should solely rely on the <code>implies</code> method
	* to perform policy checks.  If an application absolutely must call
	* a getPermissions method, it should call
	* <code>getPermissions(ProtectionDomain)</code>.
	*
	* <p> The default implementation of this method returns
	* Policy.UNSUPPORTED_EMPTY_COLLECTION.  This method can be
	* overridden if the policy implementation can return a set of
	* permissions granted to a CodeSource.
	*
	* @param codesource the CodeSource to which the returned
	*          PermissionCollection has been granted.
	*
	* @return a set of permissions granted to the specified CodeSource.
	*          If this operation is supported, the returned
	*          set of permissions must be a new mutable instance
	*          and it must support heterogeneous Permission types.
	*          If this operation is not supported,
	*          Policy.UNSUPPORTED_EMPTY_COLLECTION is returned.
	*/
	@:overload public function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	/**
	* Return a PermissionCollection object containing the set of
	* permissions granted to the specified ProtectionDomain.
	*
	* <p> Applications are discouraged from calling this method
	* since this operation may not be supported by all policy implementations.
	* Applications should rely on the <code>implies</code> method
	* to perform policy checks.
	*
	* <p> The default implementation of this method first retrieves
	* the permissions returned via <code>getPermissions(CodeSource)</code>
	* (the CodeSource is taken from the specified ProtectionDomain),
	* as well as the permissions located inside the specified ProtectionDomain.
	* All of these permissions are then combined and returned in a new
	* PermissionCollection object.  If <code>getPermissions(CodeSource)</code>
	* returns Policy.UNSUPPORTED_EMPTY_COLLECTION, then this method
	* returns the permissions contained inside the specified ProtectionDomain
	* in a new PermissionCollection object.
	*
	* <p> This method can be overridden if the policy implementation
	* supports returning a set of permissions granted to a ProtectionDomain.
	*
	* @param domain the ProtectionDomain to which the returned
	*          PermissionCollection has been granted.
	*
	* @return a set of permissions granted to the specified ProtectionDomain.
	*          If this operation is supported, the returned
	*          set of permissions must be a new mutable instance
	*          and it must support heterogeneous Permission types.
	*          If this operation is not supported,
	*          Policy.UNSUPPORTED_EMPTY_COLLECTION is returned.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPermissions(domain : java.security.ProtectionDomain) : java.security.PermissionCollection;
	
	/**
	* Evaluates the global policy for the permissions granted to
	* the ProtectionDomain and tests whether the permission is
	* granted.
	*
	* @param domain the ProtectionDomain to test
	* @param permission the Permission object to be tested for implication.
	*
	* @return true if "permission" is a proper subset of a permission
	* granted to this ProtectionDomain.
	*
	* @see java.security.ProtectionDomain
	* @since 1.4
	*/
	@:require(java4) @:overload public function implies(domain : java.security.ProtectionDomain, permission : java.security.Permission) : Bool;
	
	/**
	* Refreshes/reloads the policy configuration. The behavior of this method
	* depends on the implementation. For example, calling <code>refresh</code>
	* on a file-based policy will cause the file to be re-read.
	*
	* <p> The default implementation of this method does nothing.
	* This method should be overridden if a refresh operation is supported
	* by the policy implementation.
	*/
	@:overload public function refresh() : Void;
	
	
}
@:native('java$security$Policy$PolicyInfo') @:internal extern class Policy_PolicyInfo
{
	
}
/**
* This subclass is returned by the getInstance calls.  All Policy calls
* are delegated to the underlying PolicySpi.
*/
@:native('java$security$Policy$PolicyDelegate') @:internal extern class Policy_PolicyDelegate extends Policy
{
	@:overload override public function getType() : String;
	
	@:overload override public function getParameters() : Policy_Parameters;
	
	@:overload override public function getProvider() : java.security.Provider;
	
	@:overload override public function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	@:overload override public function getPermissions(domain : java.security.ProtectionDomain) : java.security.PermissionCollection;
	
	@:overload override public function implies(domain : java.security.ProtectionDomain, perm : java.security.Permission) : Bool;
	
	@:overload override public function refresh() : Void;
	
	
}
/**
* This represents a marker interface for Policy parameters.
*
* @since 1.6
*/
@:require(java6) @:native('java$security$Policy$Parameters') extern interface Policy_Parameters
{
	
}
/**
* This class represents a read-only empty PermissionCollection object that
* is returned from the <code>getPermissions(CodeSource)</code> and
* <code>getPermissions(ProtectionDomain)</code>
* methods in the Policy class when those operations are not
* supported by the Policy implementation.
*/
@:native('java$security$Policy$UnsupportedEmptyCollection') @:internal extern class Policy_UnsupportedEmptyCollection extends java.security.PermissionCollection
{
	/**
	* Create a read-only empty PermissionCollection object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a permission object to the current collection of permission
	* objects.
	*
	* @param permission the Permission object to add.
	*
	* @exception SecurityException - if this PermissionCollection object
	*                                has been marked readonly
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Checks to see if the specified permission is implied by the
	* collection of Permission objects held in this PermissionCollection.
	*
	* @param permission the Permission object to compare.
	*
	* @return true if "permission" is implied by the permissions in
	* the collection, false if not.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the Permission objects in the
	* collection.
	*
	* @return an enumeration of all the Permissions.
	*/
	@:overload override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
