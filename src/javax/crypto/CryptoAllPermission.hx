package javax.crypto;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CryptoAllPermission extends javax.crypto.CryptoPermission
{
	/**
	* Checks if the specified permission is implied by
	* this object.
	*
	* @param p the permission to check against.
	*
	* @return true if the specified permission is an
	* instance of CryptoPermission.
	*/
	@:overload @:public override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two CryptoAllPermission objects for equality.
	* Two CryptoAllPermission objects are always equal.
	*
	* @param obj the object to test for equality with this object.
	*
	* @return true if <i>obj</i> is a CryptoAllPermission object.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	*
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a new PermissionCollection object for storing
	* CryptoAllPermission objects.
	* <p>
	*
	* @return a new PermissionCollection object suitable for
	* storing CryptoAllPermissions.
	*/
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class CryptoAllPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Adds a permission to the CryptoAllPermissions.
	*
	* @param permission the Permission object to add.
	*
	* @exception SecurityException - if this CryptoAllPermissionCollection
	* object has been marked readonly
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if the given permission is implied by this
	* CryptoAllPermissionCollection.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the CryptoAllPermission
	* objects in the  container.
	*
	* @return an enumeration of all the CryptoAllPermission objects.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
