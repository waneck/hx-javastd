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
* File: ./org/omg/CORBA/StructMember.java
* From: ./ir.idl
* Date: Fri Aug 28 16:03:31 1998
*   By: idltojava Java IDL 1.2 Aug 11 1998 02:00:18
*/
/**
* Describes a member of an IDL <code>struct</code> in the
* Interface Repository, including
* the  name of the <code>struct</code> member, the type of
* the <code>struct</code> member, and
* the typedef that represents the IDL type of the
* <code>struct</code> member
* described the <code>struct</code> member object.
*/
extern class StructMember implements org.omg.CORBA.portable.IDLEntity
{
	/**
	* The name of the struct member described by
	* this <code>StructMember</code> object.
	* @serial
	*/
	@:public public var name : String;
	
	/**
	* The type of the struct member described by
	* this <code>StructMember</code> object.
	* @serial
	*/
	@:public public var type : org.omg.CORBA.TypeCode;
	
	/**
	* The typedef that represents the IDL type of the struct member described by
	* this <code>StructMember</code> object.
	* @serial
	*/
	@:public public var type_def : org.omg.CORBA.IDLType;
	
	/**
	* Constructs a default <code>StructMember</code> object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>StructMember</code> object initialized with the
	* given values.
	* @param __name a <code>String</code> object with the name of the struct
	*        member
	* @param __type a <code>TypeCode</code> object describing the type of the struct
	*        member
	* @param __type_def an <code>IDLType</code> object representing the IDL type
	*        of the struct member
	*/
	@:overload @:public public function new(__name : String, __type : org.omg.CORBA.TypeCode, __type_def : org.omg.CORBA.IDLType) : Void;
	
	
}
