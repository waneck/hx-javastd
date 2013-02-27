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
extern class WildcardTypeImpl extends com.sun.tools.javadoc.AbstractTypeImpl implements com.sun.javadoc.WildcardType
{
	/**
	* Return the upper bounds of this wildcard type argument
	* as given by the <i>extends</i> clause.
	* Return an empty array if no such bounds are explicitly given.
	*/
	@:overload public function extendsBounds() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return the lower bounds of this wildcard type argument
	* as given by the <i>super</i> clause.
	* Return an empty array if no such bounds are explicitly given.
	*/
	@:overload public function superBounds() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return the ClassDoc of the erasure of this wildcard type.
	*/
	@:overload override public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	@:overload override public function asWildcardType() : com.sun.javadoc.WildcardType;
	
	@:overload override public function typeName() : String;
	
	@:overload override public function qualifiedTypeName() : String;
	
	@:overload override public function simpleTypeName() : String;
	
	@:overload override public function toString() : String;
	
	
}
