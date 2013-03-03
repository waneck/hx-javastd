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
extern class ServicePermission extends java.security.Permission implements java.io.Serializable
{
	/**
	* Create a new <code>ServicePermission</code>
	* with the specified <code>servicePrincipal</code>
	* and <code>action</code>.
	*
	* @param servicePrincipal the name of the service principal.
	* An asterisk may appear by itself, to signify any service principal.
	* <p>
	* @param action the action string
	*/
	@:overload @:public public function new(servicePrincipal : String, action : String) : Void;
	
	/**
	* Checks if this Kerberos service permission object "implies" the
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
	* Checks two ServicePermission objects for equality.
	* <P>
	* @param obj the object to test for equality with this object.
	*
	* @return true if <i>obj</i> is a ServicePermission, and has the
	*  same service principal, and actions as this
	* ServicePermission object.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions.
	* Always returns present actions in the following order:
	* initiate, accept.
	*/
	@:overload @:public override public function getActions() : String;
	
	/**
	* Returns a PermissionCollection object for storing
	* ServicePermission objects.
	* <br>
	* ServicePermission objects must be stored in a manner that
	* allows them to be inserted into the collection in any order, but
	* that also enables the PermissionCollection implies method to
	* be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for storing
	* ServicePermissions.
	*/
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class KrbServicePermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
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
	* Adds a permission to the ServicePermissions. The key for
	* the hash is the name.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       ServicePermission
	*
	* @exception SecurityException - if this PermissionCollection object
	*                                has been marked readonly
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Returns an enumeration of all the ServicePermission objects
	* in the container.
	*
	* @return an enumeration of all the ServicePermission objects.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
