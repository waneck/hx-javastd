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
* A Java expression.
*
* <p>
* Unlike most of CodeModel, JExpressions are built bottom-up (
* meaning you start from leaves and then gradually build compliated expressions
* by combining them.)
*
* <p>
* {@link JExpression} defines a series of composer methods,
* which returns a complicated expression (by often taking other {@link JExpression}s
* as parameters.
* For example, you can build "5+2" by
* <tt>JExpr.lit(5).add(JExpr.lit(2))</tt>
*/
extern interface JExpression extends com.sun.codemodel.internal.JGenerable
{
	/**
	* Returns "-[this]" from "[this]".
	*/
	@:overload public function minus() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "![this]" from "[this]".
	*/
	@:overload public function not() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "~[this]" from "[this]".
	*/
	@:overload public function complement() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]++" from "[this]".
	*/
	@:overload public function incr() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]--" from "[this]".
	*/
	@:overload public function decr() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]+[right]"
	*/
	@:overload public function plus(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]-[right]"
	*/
	@:overload public function minus(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]*[right]"
	*/
	@:overload public function mul(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]/[right]"
	*/
	@:overload public function div(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]%[right]"
	*/
	@:overload public function mod(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]&lt;&lt;[right]"
	*/
	@:overload public function shl(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]>>[right]"
	*/
	@:overload public function shr(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this]>>>[right]"
	*/
	@:overload public function shrz(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/** Bit-wise AND '&amp;'. */
	@:overload public function band(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/** Bit-wise OR '|'. */
	@:overload public function bor(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/** Logical AND '&amp;&amp;'. */
	@:overload public function cand(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/** Logical OR '||'. */
	@:overload public function cor(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function xor(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function lt(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function lte(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function gt(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function gte(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function eq(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public function ne(right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this] instanceof [right]"
	*/
	@:overload public function _instanceof(right : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns "[this].[method]".
	*
	* Arguments shall be added to the returned {@link JInvocation} object.
	*/
	@:overload public function invoke(method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Returns "[this].[method]".
	*
	* Arguments shall be added to the returned {@link JInvocation} object.
	*/
	@:overload public function invoke(method : String) : com.sun.codemodel.internal.JInvocation;
	
	@:overload public function ref(field : com.sun.codemodel.internal.JVar) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload public function ref(field : String) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload public function component(index : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JArrayCompRef;
	
	
}
