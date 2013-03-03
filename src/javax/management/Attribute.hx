package javax.management;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// java import
extern class Attribute implements java.io.Serializable
{
	/**
	* Constructs an Attribute object which associates the given attribute name with the given value.
	*
	* @param name A String containing the name of the attribute to be created. Cannot be null.
	* @param value The Object which is assigned to the attribute. This object must be of the same type as the attribute.
	*
	*/
	@:overload @:public public function new(name : String, value : Dynamic) : Void;
	
	/**
	* Returns a String containing the  name of the attribute.
	*
	* @return the name of the attribute.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns an Object that is the value of this attribute.
	*
	* @return the value of the attribute.
	*/
	@:overload @:public public function getValue() : Dynamic;
	
	/**
	* Compares the current Attribute Object with another Attribute Object.
	*
	* @param object  The Attribute that the current Attribute is to be compared with.
	*
	* @return  True if the two Attribute objects are equal, otherwise false.
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this attribute.
	*
	* @return a hash code value for this attribute.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a String object representing this Attribute's value. The format of this
	* string is not specified, but users can expect that two Attributes return the
	* same string if and only if they are equal.
	*/
	@:overload @:public public function toString() : String;
	
	
}
