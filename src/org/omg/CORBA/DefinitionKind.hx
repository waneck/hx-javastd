package org.omg.CORBA;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
* File: ./org/omg/CORBA/DefinitionKind.java
* From: ./ir.idl
* Date: Fri Aug 28 16:03:31 1998
*   By: idltojava Java IDL 1.2 Aug 11 1998 02:00:18
*/
/**
* The class that provides the constants used to identify the type of an
* Interface Repository object.  This class contains two kinds of constants,
* those that are an <code>int</code> and those that are an instance of the class
* <code>DefinitionKind</code>.  This class provides the method
* <code>from_int</code>, which given one
* of the <code>int</code> constants, creates the corresponding
* <code>DefinitionKind</code> instance.  It also provides the method
* <code>value</code>, which returns the <code>int</code> constant that
* is the value for a <code>DefinitionKind</code> instance.
*
* @see IRObject
*/
extern class DefinitionKind implements org.omg.CORBA.portable.IDLEntity
{
	/**
	* The constant that indicates that an Interface Repository object
	* does not have a definition kind.
	*/
	public static var _dk_none(default, null) : Int;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object has no definition kind.
	*/
	public static var dk_none(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The wildcard <code>DefinitionKind</code> constant, useful
	* in all occasions where any
	* <code>DefinitionKind</code> is appropriate. The Container's
	* <code>contents</code> method
	* makes use of this constant to return all contained definitions of any kind.
	*/
	public static var dk_all(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Attribute.
	*/
	public static var dk_Attribute(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a constant.
	*/
	public static var dk_Constant(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Exception.
	*/
	public static var dk_Exception(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Interface.
	*/
	public static var dk_Interface(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Module.
	*/
	public static var dk_Module(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Operation.
	*/
	public static var dk_Operation(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Typedef.
	*/
	public static var dk_Typedef(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Alias.
	*/
	public static var dk_Alias(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Struct.
	*/
	public static var dk_Struct(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Union.
	*/
	public static var dk_Union(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Enum.
	*/
	public static var dk_Enum(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Primitive.
	*/
	public static var dk_Primitive(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a String.
	*/
	public static var dk_String(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Sequence.
	*/
	public static var dk_Sequence(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is an Array.
	*/
	public static var dk_Array(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Repository.
	*/
	public static var dk_Repository(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Wstring.
	*/
	public static var dk_Wstring(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Fixed value.
	*/
	public static var dk_Fixed(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Value.
	*/
	public static var dk_Value(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a ValueBox.
	*/
	public static var dk_ValueBox(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a ValueMember.
	*/
	public static var dk_ValueMember(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* The static instance of <code>DefinitionKind</code> indicating that an
	* Interface Repository object is a Native value.
	*/
	public static var dk_Native(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
* The static instance of <code>DefinitionKind</code> indicating that an
* Interface Repository object represents an abstract interface.
*/
	public static var dk_AbstractInterface(default, null) : org.omg.CORBA.DefinitionKind;
	
	/**
	* Returns the <code>int</code> constant identifying the type of an IR object.
	* @return the <code>int</code> constant from the class
	* <code>DefinitionKind</code> that is the value of this
	* <code>DefinitionKind</code> instance
	*/
	@:overload public function value() : Int;
	
	/**
	* Creates a <code>DefinitionKind</code> instance corresponding to the given code
.
	* @param i one of the <code>int</code> constants from the class
	* <code>DefinitionKind</code>
	* @return the <code>DefinitionKind</code> instance corresponding
	*         to the given code
	* @throws org.omg.CORBA.BAD_PARAM if the given parameter is not
	one
	*         of the <code>int</code> constants from the class
	*         <code>DefinitionKind</code>
	*/
	@:overload public static function from_int(i : Int) : org.omg.CORBA.DefinitionKind;
	
	/**
	* Constructs a <code>DefinitionKind</code> object with its <code>_value</code>
	* field initialized with the given value.
	* @param _value one of the <code>int</code> constants defined in the
	*                   class <code>DefinitionKind</code>
	*/
	@:overload private function new(_value : Int) : Void;
	
	
}
