package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Java built-in primitive types.
*
* Instances of this class can be obtained as constants of {@link JCodeModel},
* such as {@link JCodeModel#BOOLEAN}.
*/
extern class JPrimitiveType extends com.sun.codemodel.internal.JType
{
	@:overload override public function owner() : com.sun.codemodel.internal.JCodeModel;
	
	@:overload override public function fullName() : String;
	
	@:overload override public function name() : String;
	
	@:overload override public function isPrimitive() : Bool;
	
	@:overload override public function array() : com.sun.codemodel.internal.JClass;
	
	/**
	* Obtains the wrapper class for this primitive type.
	* For example, this method returns a reference to java.lang.Integer
	* if this object represents int.
	*/
	@:overload override public function boxify() : com.sun.codemodel.internal.JClass;
	
	/**
	* @deprecated calling this method from {@link JPrimitiveType}
	* would be meaningless, since it's always guaranteed to
	* return <tt>this</tt>.
	*/
	@:overload override public function unboxify() : com.sun.codemodel.internal.JType;
	
	/**
	* @deprecated
	*      Use {@link #boxify()}.
	*/
	@:overload public function getWrapperClass() : com.sun.codemodel.internal.JClass;
	
	/**
	* Wraps an expression of this type to the corresponding wrapper class.
	* For example, if this class represents "float", this method will return
	* the expression <code>new Float(x)</code> for the paramter x.
	*
	* REVISIT: it's not clear how this method works for VOID.
	*/
	@:overload public function wrap(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Do the opposite of the wrap method.
	*
	* REVISIT: it's not clear how this method works for VOID.
	*/
	@:overload public function unwrap(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
