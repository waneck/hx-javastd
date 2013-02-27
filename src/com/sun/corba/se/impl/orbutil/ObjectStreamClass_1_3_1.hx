package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class ObjectStreamClass_1_3_1 implements java.io.Serializable
{
	/**
	* A ObjectStreamClass_1_3_1 describes a class that can be serialized to a stream
	* or a class that was serialized to a stream.  It contains the name
	* and the serialVersionUID of the class.
	* <br>
	* The ObjectStreamClass_1_3_1 for a specific class loaded in this Java VM can
	* be found using the lookup method.
	*
	* @author  Roger Riggs
	* @since   JDK1.1
	*/
	@:require(java1) public static var kDefaultUID(default, null) : haxe.Int64;
	
	/**
	* The name of the class described by this descriptor.
	*/
	@:overload @:final public function getName() : String;
	
	/**
	* Return the serialVersionUID for this class.
	* The serialVersionUID defines a set of classes all with the same name
	* that have evolved from a common root class and agree to be serialized
	* and deserialized using a common format.
	*/
	@:native('getSerialVersionUID') @:overload @:final public static function _getSerialVersionUID(clazz : Class<Dynamic>) : haxe.Int64;
	
	/**
	* Return the serialVersionUID for this class.
	* The serialVersionUID defines a set of classes all with the same name
	* that have evolved from a common root class and agree to be serialized
	* and deserialized using a common format.
	*/
	@:overload @:final public function getSerialVersionUID() : haxe.Int64;
	
	/**
	* Return the serialVersionUID string for this class.
	* The serialVersionUID defines a set of classes all with the same name
	* that have evolved from a common root class and agree to be serialized
	* and deserialized using a common format.
	*/
	@:overload @:final public function getSerialVersionUIDStr() : String;
	
	/**
	* Return the actual (computed) serialVersionUID for this class.
	*/
	@:native('getActualSerialVersionUID') @:overload @:final public static function _getActualSerialVersionUID(clazz : Class<Dynamic>) : haxe.Int64;
	
	/**
	* Return the actual (computed) serialVersionUID for this class.
	*/
	@:overload @:final public function getActualSerialVersionUID() : haxe.Int64;
	
	/**
	* Return the actual (computed) serialVersionUID for this class.
	*/
	@:overload @:final public function getActualSerialVersionUIDStr() : String;
	
	/**
	* Return the class in the local VM that this version is mapped to.
	* Null is returned if there is no corresponding local class.
	*/
	@:overload @:final public function forClass() : Class<Dynamic>;
	
	/**
	* Return an array of the fields of this serializable class.
	* @return an array containing an element for each persistent
	* field of this class. Returns an array of length zero if
	* there are no fields.
	* @since JDK1.2
	*/
	@:require(java2) @:overload public function getFields() : java.NativeArray<com.sun.corba.se.impl.orbutil.ObjectStreamField>;
	
	@:overload public function hasField(field : org.omg.CORBA.ValueMember) : Bool;
	
	/**
	* Get the field of this class by name.
	* @return The ObjectStreamField object of the named field or null if there
	* is no such named field.
	*/
	@:overload @:final public function getField(name : String) : com.sun.corba.se.impl.orbutil.ObjectStreamField;
	
	@:overload public function writeReplace(value : java.io.Serializable) : java.io.Serializable;
	
	@:overload public function readResolve(value : Dynamic) : Dynamic;
	
	/**
	* Return a string describing this ObjectStreamClass_1_3_1.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Set serialPersistentFields of a Serializable class to this value to
	* denote that the class has no Serializable fields.
	*/
	public static var NO_FIELDS(default, null) : java.NativeArray<com.sun.corba.se.impl.orbutil.ObjectStreamField>;
	
	
}
/*
* Entries held in the Cache of known ObjectStreamClass_1_3_1 objects.
* Entries are chained together with the same hash value (modulo array size).
*/
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClass_1_3_1$ObjectStreamClassEntry') @:internal extern class ObjectStreamClass_1_3_1_ObjectStreamClassEntry
{
	@:overload public function get() : Dynamic;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClass_1_3_1$CompareClassByName') @:internal extern class ObjectStreamClass_1_3_1_CompareClassByName implements java.util.Comparator<Dynamic>
{
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClass_1_3_1$CompareMemberByName') @:internal extern class ObjectStreamClass_1_3_1_CompareMemberByName implements java.util.Comparator<Dynamic>
{
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
/* It is expensive to recompute a method or constructor signature
many times, so compute it only once using this data structure. */
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClass_1_3_1$MethodSignature') @:internal extern class ObjectStreamClass_1_3_1_MethodSignature implements java.util.Comparator<Dynamic>
{
	/* Assumes that o1 and o2 are either both methods
	or both constructors.*/
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
