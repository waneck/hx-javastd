package com.sun.jmx.mbeanserver;
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
* This class is used for storing a pair (name, object) where name is
* an object name and object is a reference to the object.
*
* @since 1.5
*/
@:require(java5) extern class NamedObject
{
	/**
	* Allows a named object to be created.
	*
	*@param objectName The object name of the object.
	*@param object A reference to the object.
	*/
	@:overload @:public public function new(objectName : javax.management.ObjectName, object : javax.management.DynamicMBean) : Void;
	
	/**
	* Allows a named object to be created.
	*
	*@param objectName The string representation of the object name of the object.
	*@param object A reference to the object.
	*
	*@exception MalformedObjectNameException The string passed does not have the format of a valid ObjectName
	*/
	@:overload @:public public function new(objectName : String, object : javax.management.DynamicMBean) : Void;
	
	/**
	* Compares the current object name with another object name.
	*
	* @param object  The Named Object that the current object name is to be
	*        compared with.
	*
	* @return  True if the two named objects are equal, otherwise false.
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this named object.
	*
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Get the object name.
	*/
	@:overload @:public public function getName() : javax.management.ObjectName;
	
	/**
	* Get the object
	*/
	@:overload @:public public function getObject() : javax.management.DynamicMBean;
	
	
}
