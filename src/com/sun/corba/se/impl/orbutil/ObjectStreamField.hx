package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ObjectStreamField implements java.lang.Comparable<Dynamic>
{
	/**
	* Get the name of this field.
	*/
	@:overload public function getName() : String;
	
	/**
	* Get the type of the field.
	*/
	@:overload public function getType() : Class<Dynamic>;
	
	@:overload public function getTypeCode() : java.StdTypes.Char16;
	
	@:overload public function getTypeString() : String;
	
	/**
	* test if this field is a primitive or not.
	*/
	@:overload public function isPrimitive() : Bool;
	
	/**
	* Compare this with another ObjectStreamField.
	* return -1 if this is smaller, 0 if equal, 1 if greater
	* types that are primitives are "smaller" than objects.
	* if equal, the names are compared.
	*/
	@:overload public function compareTo(o : Dynamic) : Int;
	
	/**
	* Compare the types of two class descriptors.
	* The match if they have the same primitive types.
	* or if they are both objects and the object types match.
	*/
	@:overload public function typeEquals(other : com.sun.corba.se.impl.orbutil.ObjectStreamField) : Bool;
	
	/* Returns the signature of the Field.
	*
	*/
	@:overload public function getSignature() : String;
	
	/**
	* Return a string describing this field.
	*/
	@:overload public function toString() : String;
	
	@:overload public function getClazz() : Class<Dynamic>;
	
	
}
