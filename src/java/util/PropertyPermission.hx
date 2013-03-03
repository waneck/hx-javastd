package java.util;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class PropertyPermission extends java.security.BasicPermission
{
	/**
	* Creates a new PropertyPermission object with the specified name.
	* The name is the name of the system property, and
	* <i>actions</i> contains a comma-separated list of the
	* desired actions granted on the property. Possible actions are
	* "read" and "write".
	*
	* @param name the name of the PropertyPermission.
	* @param actions the actions string.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty or if
	* <code>actions</code> is invalid.
	*/
	@:overload @:public public function new(name : String, actions : String) : Void;
	
	/**
	* Checks if this PropertyPermission object "implies" the specified
	* permission.
	* <P>
	* More specifically, this method returns true if:<p>
	* <ul>
	* <li> <i>p</i> is an instanceof PropertyPermission,<p>
	* <li> <i>p</i>'s actions are a subset of this
	* object's actions, and <p>
	* <li> <i>p</i>'s name is implied by this object's
	*      name. For example, "java.*" implies "java.home".
	* </ul>
	* @param p the permission to check against.
	*
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload @:public override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two PropertyPermission objects for equality. Checks that <i>obj</i> is
	* a PropertyPermission, and has the same name and actions as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if obj is a PropertyPermission, and has the same name and
	* actions as this PropertyPermission object.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	* The hash code used is the hash code of this permissions name, that is,
	* <code>getName().hashCode()</code>, where <code>getName</code> is
	* from the Permission superclass.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns the "canonical string representation" of the actions.
	* That is, this method always returns present actions in the following order:
	* read, write. For example, if this PropertyPermission object
	* allows both write and read actions, a call to <code>getActions</code>
	* will return the string "read,write".
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload @:public override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing
	* PropertyPermission objects.
	* <p>
	*
	* @return a new PermissionCollection object suitable for storing
	* PropertyPermissions.
	*/
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class PropertyPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty PropertyPermissions object.
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Adds a permission to the PropertyPermissions. The key for the hash is
	* the name.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       PropertyPermission
	*
	* @exception SecurityException - if this PropertyPermissionCollection
	*                                object has been marked readonly
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the set, false if not.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the PropertyPermission objects in the
	* container.
	*
	* @return an enumeration of all the PropertyPermission objects.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
