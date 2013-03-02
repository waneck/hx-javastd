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
extern class AccessControlContext
{
	/**
	* Create an AccessControlContext with the given array of ProtectionDomains.
	* Context must not be null. Duplicate domains will be removed from the
	* context.
	*
	* @param context the ProtectionDomains associated with this context.
	* The non-duplicate domains are copied from the array. Subsequent
	* changes to the array will not affect this AccessControlContext.
	* @throws NullPointerException if <code>context</code> is <code>null</code>
	*/
	@:overload public function new(context : java.NativeArray<java.security.ProtectionDomain>) : Void;
	
	/**
	* Create a new <code>AccessControlContext</code> with the given
	* <code>AccessControlContext</code> and <code>DomainCombiner</code>.
	* This constructor associates the provided
	* <code>DomainCombiner</code> with the provided
	* <code>AccessControlContext</code>.
	*
	* <p>
	*
	* @param acc the <code>AccessControlContext</code> associated
	*          with the provided <code>DomainCombiner</code>.
	*
	* @param combiner the <code>DomainCombiner</code> to be associated
	*          with the provided <code>AccessControlContext</code>.
	*
	* @exception NullPointerException if the provided
	*          <code>context</code> is <code>null</code>.
	*
	* @exception SecurityException if a security manager is installed and the
	*          caller does not have the "createAccessControlContext"
	*          {@link SecurityPermission}
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(acc : java.security.AccessControlContext, combiner : java.security.DomainCombiner) : Void;
	
	/**
	* Get the <code>DomainCombiner</code> associated with this
	* <code>AccessControlContext</code>.
	*
	* <p>
	*
	* @return the <code>DomainCombiner</code> associated with this
	*          <code>AccessControlContext</code>, or <code>null</code>
	*          if there is none.
	*
	* @exception SecurityException if a security manager is installed and
	*          the caller does not have the "getDomainCombiner"
	*          {@link SecurityPermission}
	* @since 1.3
	*/
	@:require(java3) @:overload public function getDomainCombiner() : java.security.DomainCombiner;
	
	/**
	* Determines whether the access request indicated by the
	* specified permission should be allowed or denied, based on
	* the security policy currently in effect, and the context in
	* this object. The request is allowed only if every ProtectionDomain
	* in the context implies the permission. Otherwise the request is
	* denied.
	*
	* <p>
	* This method quietly returns if the access request
	* is permitted, or throws a suitable AccessControlException otherwise.
	*
	* @param perm the requested permission.
	*
	* @exception AccessControlException if the specified permission
	* is not permitted, based on the current security policy and the
	* context encapsulated by this object.
	* @exception NullPointerException if the permission to check for is null.
	*/
	@:overload public function checkPermission(perm : java.security.Permission) : Void;
	
	/**
	* Checks two AccessControlContext objects for equality.
	* Checks that <i>obj</i> is
	* an AccessControlContext and has the same set of ProtectionDomains
	* as this context.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if <i>obj</i> is an AccessControlContext, and has the
	* same set of ProtectionDomains as this context, false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this context. The hash code
	* is computed by exclusive or-ing the hash code of all the protection
	* domains in the context together.
	*
	* @return a hash code value for this context.
	*/
	@:overload public function hashCode() : Int;
	
	
}
