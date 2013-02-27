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
extern class BasicPermission extends java.security.Permission implements java.io.Serializable
{
	/**
	* Creates a new BasicPermission with the specified name.
	* Name is the symbolic name of the permission, such as
	* "setFactory",
	* "print.queueJob", or "topLevelWindow", etc.
	*
	* @param name the name of the BasicPermission.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Creates a new BasicPermission object with the specified name.
	* The name is the symbolic name of the BasicPermission, and the
	* actions String is currently unused.
	*
	* @param name the name of the BasicPermission.
	* @param actions ignored.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	/**
	* Checks if the specified permission is "implied" by
	* this object.
	* <P>
	* More specifically, this method returns true if:<p>
	* <ul>
	* <li> <i>p</i>'s class is the same as this object's class, and<p>
	* <li> <i>p</i>'s name equals or (in the case of wildcards)
	*      is implied by this object's
	*      name. For example, "a.b.*" implies "a.b.c".
	* </ul>
	*
	* @param p the permission to check against.
	*
	* @return true if the passed permission is equal to or
	* implied by this permission, false otherwise.
	*/
	@:overload override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two BasicPermission objects for equality.
	* Checks that <i>obj</i>'s class is the same as this object's class
	* and has the same name as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if <i>obj</i>'s class is the same as this object's class
	*  and has the same name as this BasicPermission object, false otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	* The hash code used is the hash code of the name, that is,
	* <code>getName().hashCode()</code>, where <code>getName</code> is
	* from the Permission superclass.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions,
	* which currently is the empty string "", since there are no actions for
	* a BasicPermission.
	*
	* @return the empty string "".
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing BasicPermission
	* objects.
	*
	* <p>BasicPermission objects must be stored in a manner that allows them
	* to be inserted in any order, but that also enables the
	* PermissionCollection <code>implies</code> method
	* to be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for
	* storing BasicPermissions.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class BasicPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty BasicPermissionCollection object.
	*
	*/
	@:overload public function new(clazz : Class<Dynamic>) : Void;
	
	/**
	* Adds a permission to the BasicPermissions. The key for the hash is
	* permission.path.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       BasicPermission, or if
	*                                       the permission is not of the
	*                                       same Class as the other
	*                                       permissions in this collection.
	*
	* @exception SecurityException - if this BasicPermissionCollection object
	*                                has been marked readonly
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the set, false if not.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the BasicPermission objects in the
	* container.
	*
	* @return an enumeration of all the BasicPermission objects.
	*/
	@:overload override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
