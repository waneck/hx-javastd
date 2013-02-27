package javax.management;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanPermission extends java.security.Permission
{
	/**
	* <p>Create a new MBeanPermission object with the specified target name
	* and actions.</p>
	*
	* <p>The target name is of the form
	* "<code>className#member[objectName]</code>" where each part is
	* optional.  It must not be empty or null.</p>
	*
	* <p>The actions parameter contains a comma-separated list of the
	* desired actions granted on the target name.  It must not be
	* empty or null.</p>
	*
	* @param name the triplet "className#member[objectName]".
	* @param actions the action string.
	*
	* @exception IllegalArgumentException if the <code>name</code> or
	* <code>actions</code> is invalid.
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	/**
	* <p>Create a new MBeanPermission object with the specified target name
	* (class name, member, object name) and actions.</p>
	*
	* <p>The class name, member and object name parameters define a
	* target name of the form
	* "<code>className#member[objectName]</code>" where each part is
	* optional.  This will be the result of {@link #getName()} on the
	* resultant MBeanPermission.</p>
	*
	* <p>The actions parameter contains a comma-separated list of the
	* desired actions granted on the target name.  It must not be
	* empty or null.</p>
	*
	* @param className the class name to which this permission applies.
	* May be null or <code>"-"</code>, which represents a class name
	* that is implied by any class name but does not imply any other
	* class name.
	* @param member the member to which this permission applies.  May
	* be null or <code>"-"</code>, which represents a member that is
	* implied by any member but does not imply any other member.
	* @param objectName the object name to which this permission
	* applies.  May be null, which represents an object name that is
	* implied by any object name but does not imply any other object
	* name.
	* @param actions the action string.
	*/
	@:overload public function new(className : String, member : String, objectName : javax.management.ObjectName, actions : String) : Void;
	
	/**
	* Returns the "canonical string representation" of the actions. That is,
	* this method always returns present actions in alphabetical order.
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* <p>Checks if this MBeanPermission object "implies" the
	* specified permission.</p>
	*
	* <p>More specifically, this method returns true if:</p>
	*
	* <ul>
	*
	* <li> <i>p</i> is an instance of MBeanPermission; and</li>
	*
	* <li> <i>p</i> has a null className or <i>p</i>'s className
	* matches this object's className; and</li>
	*
	* <li> <i>p</i> has a null member or <i>p</i>'s member matches this
	* object's member; and</li>
	*
	* <li> <i>p</i> has a null object name or <i>p</i>'s
	* object name matches this object's object name; and</li>
	*
	* <li> <i>p</i>'s actions are a subset of this object's actions</li>
	*
	* </ul>
	*
	* <p>If this object's className is "<code>*</code>", <i>p</i>'s
	* className always matches it.  If it is "<code>a.*</code>", <i>p</i>'s
	* className matches it if it begins with "<code>a.</code>".</p>
	*
	* <p>If this object's member is "<code>*</code>", <i>p</i>'s
	* member always matches it.</p>
	*
	* <p>If this object's objectName <i>n1</i> is an object name pattern,
	* <i>p</i>'s objectName <i>n2</i> matches it if
	* {@link ObjectName#equals <i>n1</i>.equals(<i>n2</i>)} or if
	* {@link ObjectName#apply <i>n1</i>.apply(<i>n2</i>)}.</p>
	*
	* <p>A permission that includes the <code>queryMBeans</code> action
	* is considered to include <code>queryNames</code> as well.</p>
	*
	* @param p the permission to check against.
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two MBeanPermission objects for equality. Checks
	* that <i>obj</i> is an MBeanPermission, and has the same
	* name and actions as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if obj is an MBeanPermission, and has the
	* same name and actions as this MBeanPermission object.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	
}
