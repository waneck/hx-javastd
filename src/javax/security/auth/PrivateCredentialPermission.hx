package javax.security.auth;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PrivateCredentialPermission extends java.security.Permission
{
	/**
	* Creates a new <code>PrivateCredentialPermission</code>
	* with the specified <code>name</code>.  The <code>name</code>
	* specifies both a Credential class and a <code>Principal</code> Set.
	*
	* <p>
	*
	* @param name the name specifying the Credential class and
	*          <code>Principal</code> Set. <p>
	*
	* @param actions the actions specifying that the Credential can be read.
	*
	* @throws IllegalArgumentException if <code>name</code> does not conform
	*          to the correct syntax or if <code>actions</code> is not "read".
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	/**
	* Returns the Class name of the Credential associated with this
	* <code>PrivateCredentialPermission</code>.
	*
	* <p>
	*
	* @return the Class name of the Credential associated with this
	*          <code>PrivateCredentialPermission</code>.
	*/
	@:overload public function getCredentialClass() : String;
	
	/**
	* Returns the <code>Principal</code> classes and names
	* associated with this <code>PrivateCredentialPermission</code>.
	* The information is returned as a two-dimensional array (array[x][y]).
	* The 'x' value corresponds to the number of <code>Principal</code>
	* class and name pairs.  When (y==0), it corresponds to
	* the <code>Principal</code> class value, and when (y==1),
	* it corresponds to the <code>Principal</code> name value.
	* For example, array[0][0] corresponds to the class name of
	* the first <code>Principal</code> in the array.  array[0][1]
	* corresponds to the <code>Principal</code> name of the
	* first <code>Principal</code> in the array.
	*
	* <p>
	*
	* @return the <code>Principal</code> class and names associated
	*          with this <code>PrivateCredentialPermission</code>.
	*/
	@:overload public function getPrincipals() : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Checks if this <code>PrivateCredentialPermission</code> implies
	* the specified <code>Permission</code>.
	*
	* <p>
	*
	* This method returns true if:
	* <p><ul>
	* <li> <i>p</i> is an instanceof PrivateCredentialPermission and <p>
	* <li> the target name for <i>p</i> is implied by this object's
	*          target name.  For example:
	* <pre>
	*  [* P1 "duke"] implies [a.b.Credential P1 "duke"].
	*  [C1 P1 "duke"] implies [C1 P1 "duke" P2 "dukette"].
	*  [C1 P2 "dukette"] implies [C1 P1 "duke" P2 "dukette"].
	* </pre>
	* </ul>
	*
	* <p>
	*
	* @param p the <code>Permission</code> to check against.
	*
	* @return true if this <code>PrivateCredentialPermission</code> implies
	* the specified <code>Permission</code>, false if not.
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two <code>PrivateCredentialPermission</code> objects for
	* equality.  Checks that <i>obj</i> is a
	* <code>PrivateCredentialPermission</code>,
	* and has the same credential class as this object,
	* as well as the same Principals as this object.
	* The order of the Principals in the respective Permission's
	* target names is not relevant.
	*
	* <p>
	*
	* @param obj the object we are testing for equality with this object.
	*
	* @return true if obj is a <code>PrivateCredentialPermission</code>,
	*          has the same credential class as this object,
	*          and has the same Principals as this object.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns the "canonical string representation" of the actions.
	* This method always returns the String, "read".
	*
	* <p>
	*
	* @return the actions (always returns "read").
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Return a homogeneous collection of PrivateCredentialPermissions
	* in a <code>PermissionCollection</code>.
	* No such <code>PermissionCollection</code> is defined,
	* so this method always returns <code>null</code>.
	*
	* <p>
	*
	* @return null in all cases.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
/**
* @serial include
*/
@:native('javax$security$auth$PrivateCredentialPermission$CredOwner') @:internal extern class PrivateCredentialPermission_CredOwner implements java.io.Serializable
{
	@:overload public function implies(obj : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
