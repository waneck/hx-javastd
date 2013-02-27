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
/**
* The CryptoPermission class extends the
* java.security.Permission class. A
* CryptoPermission object is used to represent
* the ability of an application/applet to use certain
* algorithms with certain key sizes and other
* restrictions in certain environments. <p>
*
* @see java.security.Permission
*
* @author Jan Luehe
* @author Sharon Liu
* @since 1.4
*/
@:require(java4) @:internal extern class CryptoPermission extends java.security.Permission
{
	/**
	* Checks if the specified permission is "implied" by
	* this object.
	* <p>
	* More specifically, this method returns true if:<p>
	* <ul>
	* <li> <i>p</i> is an instance of CryptoPermission, and<p>
	* <li> <i>p</i>'s algorithm name equals or (in the case of wildcards)
	*       is implied by this permission's algorithm name, and<p>
	* <li> <i>p</i>'s maximum allowable key size is less or
	*       equal to this permission's maximum allowable key size, and<p>
	* <li> <i>p</i>'s algorithm parameter spec equals or is
	*        implied by this permission's algorithm parameter spec, and<p>
	* <li> <i>p</i>'s exemptionMechanism equals or
	*        is implied by this permission's
	*        exemptionMechanism (a <code>null</code> exemption mechanism
	*        implies any other exemption mechanism).
	* </ul>
	*
	* @param p the permission to check against.
	*
	* @return true if the specified permission is equal to or
	* implied by this permission, false otherwise.
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two CryptoPermission objects for equality. Checks that
	* <code>obj</code> is a CryptoPermission, and has the same
	* algorithm name,
	* exemption mechanism name, maximum allowable key size and
	* algorithm parameter spec
	* as this object.
	* <P>
	* @param obj the object to test for equality with this object.
	* @return true if <code>obj</code> is equal to this object.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* There is no action defined for a CryptoPermission
	* onject.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing
	* CryptoPermission objects.
	*
	* @return a new PermissionCollection object suitable for storing
	* CryptoPermissions.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	/**
	* Returns a string describing this CryptoPermission.  The convention is to
	* specify the class name, the algorithm name, the maximum allowable
	* key size, and the name of the exemption mechanism, in the following
	* format: '("ClassName" "algorithm" "keysize" "exemption_mechanism")'.
	*
	* @return information about this CryptoPermission.
	*/
	@:overload override public function toString() : String;
	
	
}
@:internal extern class CryptoPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Adds a permission to the CryptoPermissionCollection.
	*
	* @param permission the Permission object to add.
	*
	* @exception SecurityException - if this CryptoPermissionCollection
	* object has been marked <i>readOnly</i>.
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this CryptoPermission object implies
	* the given Permission object.
	*
	* @param p the Permission object to compare
	*
	* @return true if the given permission  is implied by this
	* CryptoPermissionCollection, false if not.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the CryptoPermission objects
	* in the container.
	*
	* @return an enumeration of all the CryptoPermission objects.
	*/
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
