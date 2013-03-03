package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of <code>ParameterizedType</code>, which
* represents an invocation of a generic class or interface.
*
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern class ParameterizedTypeImpl extends com.sun.tools.javadoc.AbstractTypeImpl implements com.sun.javadoc.ParameterizedType
{
	/**
	* Return the generic class or interface that declared this type.
	*/
	@:overload @:public override public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return the actual type arguments of this type.
	*/
	@:overload @:public public function typeArguments() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return the class type that is a direct supertype of this one.
	* Return null if this is an interface type.
	*/
	@:overload @:public public function superclassType() : com.sun.javadoc.Type;
	
	/**
	* Return the interface types directly implemented by or extended by this
	* parameterized type.
	* Return an empty array if there are no interfaces.
	*/
	@:overload @:public public function interfaceTypes() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return the type that contains this type as a member.
	* Return null is this is a top-level type.
	*/
	@:overload @:public public function containingType() : com.sun.javadoc.Type;
	
	@:overload @:public override public function typeName() : String;
	
	@:overload @:public override public function asParameterizedType() : com.sun.javadoc.ParameterizedType;
	
	@:overload @:public override public function toString() : String;
	
	
}
