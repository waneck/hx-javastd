package javax.crypto;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CryptoPermissions extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Adds a permission object to the PermissionCollection for the
	* algorithm returned by
	* <code>(CryptoPermission)permission.getAlgorithm()</code>.
	*
	* This method creates
	* a new PermissionCollection object (and adds the permission to it)
	* if an appropriate collection does not yet exist. <p>
	*
	* @param permission the Permission object to add.
	*
	* @exception SecurityException if this CryptoPermissions object is
	* marked as readonly.
	*
	* @see isReadOnly
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Checks if this object's PermissionCollection for permissons
	* of the specified permission's algorithm implies the specified
	* permission. Returns true if the checking succeeded.
	*
	* @param permission the Permission object to check.
	*
	* @return true if "permission" is implied by the permissions
	* in the PermissionCollection it belongs to, false if not.
	*
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the Permission objects in all the
	* PermissionCollections in this CryptoPermissions object.
	*
	* @return an enumeration of all the Permissions.
	*/
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
@:internal extern class PermissionsEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload @:synchronized public function hasMoreElements() : Bool;
	
	@:overload @:synchronized public function nextElement() : Dynamic;
	
	
}
