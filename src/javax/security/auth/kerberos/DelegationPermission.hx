package javax.security.auth.kerberos;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DelegationPermission extends java.security.BasicPermission implements java.io.Serializable
{
	/**
	* Create a new <code>DelegationPermission</code>
	* with the specified subordinate and target principals.
	*
	* <p>
	*
	* @param principals the name of the subordinate and target principals
	*
	* @throws NullPointerException if <code>principals</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>principals</code> is empty.
	*/
	@:overload @:public public function new(principals : String) : Void;
	
	/**
	* Create a new <code>DelegationPermission</code>
	* with the specified subordinate and target principals.
	* <p>
	*
	* @param principals the name of the subordinate and target principals
	* <p>
	* @param actions should be null.
	*
	* @throws NullPointerException if <code>principals</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>principals</code> is empty.
	*/
	@:overload @:public public function new(principals : String, actions : String) : Void;
	
	/**
	* Checks if this Kerberos delegation permission object "implies" the
	* specified permission.
	* <P>
	* If none of the above are true, <code>implies</code> returns false.
	* @param p the permission to check against.
	*
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload @:public override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two DelegationPermission objects for equality.
	* <P>
	* @param obj the object to test for equality with this object.
	*
	* @return true if <i>obj</i> is a DelegationPermission, and
	*  has the same subordinate and service principal as this.
	*  DelegationPermission object.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a PermissionCollection object for storing
	* DelegationPermission objects.
	* <br>
	* DelegationPermission objects must be stored in a manner that
	* allows them to be inserted into the collection in any order, but
	* that also enables the PermissionCollection implies method to
	* be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for storing
	* DelegationPermissions.
	*/
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class KrbDelegationPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	@:overload @:public public function new() : Void;
	
	/**
	* Check and see if this collection of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the collection, false if not.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Adds a permission to the DelegationPermissions. The key for
	* the hash is the name.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       DelegationPermission
	*
	* @exception SecurityException - if this PermissionCollection object
	*                                has been marked readonly
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Returns an enumeration of all the DelegationPermission objects
	* in the container.
	*
	* @return an enumeration of all the DelegationPermission objects.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
