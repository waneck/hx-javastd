package com.sun.rmi.rmid;
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
/**
* The ExecOptionPermission class represents permission for rmid to use
* a specific command-line option when launching an activation group.
* <P>
*
* @author Ann Wollrath
*
* @serial exclude
*/
extern class ExecOptionPermission extends java.security.Permission
{
	@:overload public function new(name : String) : Void;
	
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
	*      name. For example, "a.b.*" implies "a.b.c", and
	*      "a.b=*" implies "a.b=c"
	* </ul>
	*
	* @param p the permission to check against.
	*
	* @return true if the passed permission is equal to or
	* implied by this permission, false otherwise.
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two ExecOptionPermission objects for equality.
	* Checks that <i>obj</i>'s class is the same as this object's class
	* and has the same name as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if <i>obj</i> is an ExecOptionPermission, and has the same
	* name as this ExecOptionPermission object, false otherwise.
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
	* Returns the canonical string representation of the actions.
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing
	* ExecOptionPermission objects.
	* <p>
	* A ExecOptionPermissionCollection stores a collection of
	* ExecOptionPermission permissions.
	*
	* <p>ExecOptionPermission objects must be stored in a manner that allows
	* them to be inserted in any order, but that also enables the
	* PermissionCollection <code>implies</code> method
	* to be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for
	* storing ExecOptionPermissions.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
/**
* A ExecOptionPermissionCollection stores a collection
* of ExecOptionPermission permissions. ExecOptionPermission objects
* must be stored in a manner that allows them to be inserted in any
* order, but enable the implies function to evaluate the implies
* method in an efficient (and consistent) manner.
*
* A ExecOptionPermissionCollection handles comparing a permission like
* "a.b.c.d.e" * with a Permission such as "a.b.*", or "*".
*
* @serial include
*/
@:native('com$sun$rmi$rmid$ExecOptionPermission$ExecOptionPermissionCollection') @:internal extern class ExecOptionPermission_ExecOptionPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty ExecOptionPermissionCollection.
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a permission to the collection. The key for the hash is
	* permission.name.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       ExecOptionPermission
	*
	* @exception SecurityException - if this ExecOptionPermissionCollection
	*                                object has been marked readonly
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
	* Returns an enumeration of all the ExecOptionPermission objects in the
	* container.
	*
	* @return an enumeration of all the ExecOptionPermission objects.
	*/
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
