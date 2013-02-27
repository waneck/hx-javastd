package com.sun.tools.javac.code;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern enum TargetType
{
	/** For annotations on typecasts. */
	TYPECAST;
	/** For annotations on a type argument or nested array of a typecast. */
	TYPECAST_GENERIC_OR_ARRAY;
	/** For annotations on type tests. */
	INSTANCEOF;
	/** For annotations on a type argument or nested array of a type test. */
	INSTANCEOF_GENERIC_OR_ARRAY;
	/** For annotations on object creation expressions. */
	NEW;
	/**
	* For annotations on a type argument or nested array of an object creation
	* expression.
	*/
	NEW_GENERIC_OR_ARRAY;
	/** For annotations on the method receiver. */
	METHOD_RECEIVER;
	/** For annotations on local variables. */
	LOCAL_VARIABLE;
	/** For annotations on a type argument or nested array of a local. */
	LOCAL_VARIABLE_GENERIC_OR_ARRAY;
	/**
	* For annotations on a type argument or nested array of a method return
	* type.
	*/
	METHOD_RETURN_GENERIC_OR_ARRAY;
	/** For annotations on a type argument or nested array of a method parameter. */
	METHOD_PARAMETER_GENERIC_OR_ARRAY;
	/** For annotations on a type argument or nested array of a field. */
	FIELD_GENERIC_OR_ARRAY;
	/** For annotations on a bound of a type parameter of a class. */
	CLASS_TYPE_PARAMETER_BOUND;
	/**
	* For annotations on a type argument or nested array of a bound of a type
	* parameter of a class.
	*/
	CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY;
	/** For annotations on a bound of a type parameter of a method. */
	METHOD_TYPE_PARAMETER_BOUND;
	/**
	* For annotations on a type argument or nested array of a bound of a type
	* parameter of a method.
	*/
	METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY;
	/** For annotations on the type of an "extends" or "implements" clause. */
	CLASS_EXTENDS;
	/** For annotations on the inner type of an "extends" or "implements" clause. */
	CLASS_EXTENDS_GENERIC_OR_ARRAY;
	/** For annotations on a throws clause in a method declaration. */
	THROWS;
	/** For annotations in type arguments of object creation expressions. */
	NEW_TYPE_ARGUMENT;
	NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY;
	METHOD_TYPE_ARGUMENT;
	METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY;
	WILDCARD_BOUND;
	WILDCARD_BOUND_GENERIC_OR_ARRAY;
	CLASS_LITERAL;
	CLASS_LITERAL_GENERIC_OR_ARRAY;
	METHOD_TYPE_PARAMETER;
	CLASS_TYPE_PARAMETER;
	/** For annotations with an unknown target. */
	UNKNOWN;
	
}

@:native('com$sun$tools$javac$code$TargetType$TargetAttribute') extern enum TargetType_TargetAttribute
{
	HasLocation;
	HasParameter;
	HasBound;
	IsLocal;
	
}

@:native('com$sun$tools$javac$code$TargetType$TargetAttribute') extern enum TargetType_TargetAttribute
{
	HasLocation;
	HasParameter;
	HasBound;
	IsLocal;
	
}

