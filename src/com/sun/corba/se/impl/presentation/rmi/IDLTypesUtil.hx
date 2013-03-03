package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class IDLTypesUtil
{
	@:public @:static @:final public static var VALID_TYPE(default, null) : Int;
	
	@:public @:static @:final public static var INVALID_TYPE(default, null) : Int;
	
	/* rmic -iiop does not correctly implement the clause in 1.3.4.3
	* about is<NAME>/get<NAME> conflicts.  The spec says that
	* is<NAME> is the property and get<NAME> is left alone,
	* but rmic does the opposite.  We will follow rmic in this,
	* but it's easy to change.
	*/
	@:public @:static @:final public static var FOLLOW_RMIC(default, null) : Bool;
	
	/**
	* Validate a class to ensure it conforms to the rules for a
	* Java RMI/IIOP interface.
	*
	* @throws IDLTypeException if not a valid RMI/IIOP interface.
	*/
	@:overload @:public public function validateRemoteInterface(c : Class<Dynamic>) : Void;
	
	@:overload @:public public function isRemoteInterface(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.2 Primitive Types
	*/
	@:overload @:public public function isPrimitive(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.4
	*/
	@:overload @:public public function isValue(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.5
	*/
	@:overload @:public public function isArray(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.6
	*/
	@:overload @:public public function isException(c : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isRemoteException(c : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isCheckedException(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.7
	*/
	@:overload @:public public function isObjectReference(c : Class<Dynamic>) : Bool;
	
	/**
	* Section 1.2.8
	*/
	@:overload @:public public function isEntity(c : Class<Dynamic>) : Bool;
	
	/**
	* Return true if given method is legal property accessor as defined in
	* Section 1.3.4.3 of Java2IDL spec.
	*/
	@:overload @:public public function isPropertyAccessorMethod(m : java.lang.reflect.Method, c : Class<Dynamic>) : Bool;
	
	@:overload @:public public function getAttributeNameForProperty(propertyName : String) : String;
	
	/**
	* Return IDL Type name for primitive types as defined in
	* Section 1.3.3 of Java2IDL spec or null if not a primitive type.
	*/
	@:overload @:public public function getPrimitiveIDLTypeMapping(c : Class<Dynamic>) : com.sun.corba.se.impl.presentation.rmi.IDLType;
	
	/**
	* Return IDL Type name for special case type mappings as defined in
	* Table 1-1 of Java2IDL spec or null if given class is not a special
	* type.
	*/
	@:overload @:public public function getSpecialCaseIDLTypeMapping(c : Class<Dynamic>) : com.sun.corba.se.impl.presentation.rmi.IDLType;
	
	
}
