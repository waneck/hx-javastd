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
extern class ProtectionDomain
{
	/**
	* Creates a new ProtectionDomain with the given CodeSource and
	* Permissions. If the permissions object is not null, then
	*  <code>setReadOnly())</code> will be called on the passed in
	* Permissions object. The only permissions granted to this domain
	* are the ones specified; the current Policy will not be consulted.
	*
	* @param codesource the codesource associated with this domain
	* @param permissions the permissions granted to this domain
	*/
	@:overload @:public public function new(codesource : java.security.CodeSource, permissions : java.security.PermissionCollection) : Void;
	
	/**
	* Creates a new ProtectionDomain qualified by the given CodeSource,
	* Permissions, ClassLoader and array of Principals. If the
	* permissions object is not null, then <code>setReadOnly()</code>
	* will be called on the passed in Permissions object.
	* The permissions granted to this domain are dynamic; they include
	* both the static permissions passed to this constructor, and any
	* permissions granted to this domain by the current Policy at the
	* time a permission is checked.
	* <p>
	* This constructor is typically used by
	* {@link SecureClassLoader ClassLoaders}
	* and {@link DomainCombiner DomainCombiners} which delegate to
	* <code>Policy</code> to actively associate the permissions granted to
	* this domain. This constructor affords the
	* Policy provider the opportunity to augment the supplied
	* PermissionCollection to reflect policy changes.
	* <p>
	*
	* @param codesource the CodeSource associated with this domain
	* @param permissions the permissions granted to this domain
	* @param classloader the ClassLoader associated with this domain
	* @param principals the array of Principals associated with this
	* domain. The contents of the array are copied to protect against
	* subsequent modification.
	* @see Policy#refresh
	* @see Policy#getPermissions(ProtectionDomain)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(codesource : java.security.CodeSource, permissions : java.security.PermissionCollection, classloader : java.lang.ClassLoader, principals : java.NativeArray<java.security.Principal>) : Void;
	
	/**
	* Returns the CodeSource of this domain.
	* @return the CodeSource of this domain which may be null.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:final public function getCodeSource() : java.security.CodeSource;
	
	/**
	* Returns the ClassLoader of this domain.
	* @return the ClassLoader of this domain which may be null.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function getClassLoader() : java.lang.ClassLoader;
	
	/**
	* Returns an array of principals for this domain.
	* @return a non-null array of principals for this domain.
	* Returns a new array each time this method is called.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function getPrincipals() : java.NativeArray<java.security.Principal>;
	
	/**
	* Returns the static permissions granted to this domain.
	*
	* @return the static set of permissions for this domain which may be null.
	* @see Policy#refresh
	* @see Policy#getPermissions(ProtectionDomain)
	*/
	@:overload @:public @:final public function getPermissions() : java.security.PermissionCollection;
	
	/**
	* Check and see if this ProtectionDomain implies the permissions
	* expressed in the Permission object.
	* <p>
	* The set of permissions evaluated is a function of whether the
	* ProtectionDomain was constructed with a static set of permissions
	* or it was bound to a dynamically mapped set of permissions.
	* <p>
	* If the ProtectionDomain was constructed to a
	* {@link #ProtectionDomain(CodeSource, PermissionCollection)
	* statically bound} PermissionCollection then the permission will
	* only be checked against the PermissionCollection supplied at
	* construction.
	* <p>
	* However, if the ProtectionDomain was constructed with
	* the constructor variant which supports
	* {@link #ProtectionDomain(CodeSource, PermissionCollection,
	* ClassLoader, java.security.Principal[]) dynamically binding}
	* permissions, then the permission will be checked against the
	* combination of the PermissionCollection supplied at construction and
	* the current Policy binding.
	* <p>
	*
	* @param permission the Permission object to check.
	*
	* @return true if "permission" is implicit to this ProtectionDomain.
	*/
	@:overload @:public public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Convert a ProtectionDomain to a String.
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* Used for storing ProtectionDomains as keys in a Map.
*/
@:native('java$security$ProtectionDomain$Key') @:internal extern class ProtectionDomain_Key
{
	
}
