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
* JClass for generating expressions containing operators
*/
extern class JOp
{
	@:overload public static function minus(e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Logical not <tt>'!x'</tt>.
	*/
	@:overload public static function not(e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function complement(e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function incr(e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function decr(e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function plus(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function minus(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function mul(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function div(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function mod(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function shl(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function shr(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function shrz(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function band(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function bor(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function cand(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function cor(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function xor(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function lt(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function lte(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function gt(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function gte(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function eq(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function ne(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function _instanceof(left : com.sun.codemodel.internal.JExpression, right : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JExpression;
	
	@:overload public static function cond(cond : com.sun.codemodel.internal.JExpression, ifTrue : com.sun.codemodel.internal.JExpression, ifFalse : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	
}
/* -- Unary operators -- */
@:native('com$sun$codemodel$internal$JOp$UnaryOp') @:internal extern class JOp_UnaryOp extends com.sun.codemodel.internal.JExpressionImpl
{
	private var op : String;
	
	private var e : com.sun.codemodel.internal.JExpression;
	
	private var opFirst : Bool;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
@:native('com$sun$codemodel$internal$JOp$TightUnaryOp') @:internal extern class JOp_TightUnaryOp extends JOp_UnaryOp
{
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
/* -- Binary operators -- */
@:native('com$sun$codemodel$internal$JOp$BinaryOp') @:internal extern class JOp_BinaryOp extends com.sun.codemodel.internal.JExpressionImpl
{
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
/* -- Ternary operators -- */
@:native('com$sun$codemodel$internal$JOp$TernaryOp') @:internal extern class JOp_TernaryOp extends com.sun.codemodel.internal.JExpressionImpl
{
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
