package javax.management;
/*
* Copyright (c) 2001, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanServerPermission extends java.security.BasicPermission
{
	/** <p>Create a new MBeanServerPermission with the given name.</p>
	<p>This constructor is equivalent to
	<code>MBeanServerPermission(name,null)</code>.</p>
	@param name the name of the granted permission.  It must
	respect the constraints spelt out in the description of the
	{@link MBeanServerPermission} class.
	@exception NullPointerException if the name is null.
	@exception IllegalArgumentException if the name is not
	<code>*</code> or one of the allowed names or a comma-separated
	list of the allowed names.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/** <p>Create a new MBeanServerPermission with the given name.</p>
	@param name the name of the granted permission.  It must
	respect the constraints spelt out in the description of the
	{@link MBeanServerPermission} class.
	@param actions the associated actions.  This parameter is not
	currently used and must be null or the empty string.
	@exception NullPointerException if the name is null.
	@exception IllegalArgumentException if the name is not
	<code>*</code> or one of the allowed names or a comma-separated
	list of the allowed names, or if <code>actions</code> is a non-null
	non-empty string.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty or
	* if arguments are invalid.
	*/
	@:overload @:public public function new(name : String, actions : String) : Void;
	
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* <p>Checks if this MBeanServerPermission object "implies" the specified
	* permission.</p>
	*
	* <p>More specifically, this method returns true if:</p>
	*
	* <ul>
	* <li> <i>p</i> is an instance of MBeanServerPermission,</li>
	* <li> <i>p</i>'s target names are a subset of this object's target
	* names</li>
	* </ul>
	*
	* <p>The <code>createMBeanServer</code> permission implies the
	* <code>newMBeanServer</code> permission.</p>
	*
	* @param p the permission to check against.
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload @:public override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two MBeanServerPermission objects for equality. Checks that
	* <i>obj</i> is an MBeanServerPermission, and represents the same
	* list of allowable actions as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if the objects are equal.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class MBeanServerPermissionCollection extends java.security.PermissionCollection
{
	@:overload @:public @:synchronized override public function add(permission : java.security.Permission) : Void;
	
	@:overload @:public @:synchronized override public function implies(permission : java.security.Permission) : Bool;
	
	@:overload @:public @:synchronized override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
