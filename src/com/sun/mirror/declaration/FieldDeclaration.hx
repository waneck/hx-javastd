package com.sun.mirror.declaration;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface FieldDeclaration extends com.sun.mirror.declaration.MemberDeclaration
{
	/**
	* Returns the type of this field.
	*
	* @return the type of this field
	*/
	@:overload public function getType() : com.sun.mirror.type.TypeMirror;
	
	/**
	* Returns the value of this field if this field is a compile-time
	* constant.  Returns <tt>null</tt> otherwise.
	* The value will be of a primitive type or <tt>String</tt>.
	* If the value is of a primitive type, it is wrapped in the
	* appropriate wrapper class (such as {@link Integer}).
	*
	* @return the value of this field if this field is a compile-time
	* constant, or <tt>null</tt> otherwise
	*/
	@:overload public function getConstantValue() : Dynamic;
	
	/**
	* Returns the text of a <i>constant expression</i> representing the
	* value of this field if this field is a compile-time constant.
	* Returns <tt>null</tt> otherwise.
	* The value will be of a primitive type or <tt>String</tt>.
	* The text returned is in a form suitable for representing the value
	* in source code.
	*
	* @return the text of a constant expression if this field is a
	*          compile-time constant, or <tt>null</tt> otherwise
	*/
	@:overload public function getConstantExpression() : String;
	
	
}
