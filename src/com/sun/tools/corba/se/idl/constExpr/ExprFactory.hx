package com.sun.tools.corba.se.idl.constExpr;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
extern interface ExprFactory
{
	@:overload public function and(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.And;
	
	@:overload public function booleanAnd(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.BooleanAnd;
	
	@:overload public function booleanNot(operand : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.BooleanNot;
	
	@:overload public function booleanOr(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.BooleanOr;
	
	@:overload public function divide(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Divide;
	
	@:overload public function equal(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Equal;
	
	@:overload public function greaterEqual(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.GreaterEqual;
	
	@:overload public function greaterThan(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.GreaterThan;
	
	@:overload public function lessEqual(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.LessEqual;
	
	@:overload public function lessThan(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.LessThan;
	
	@:overload public function minus(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Minus;
	
	@:overload public function modulo(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Modulo;
	
	@:overload public function negative(operand : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Negative;
	
	@:overload public function not(operand : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Not;
	
	@:overload public function notEqual(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.NotEqual;
	
	@:overload public function or(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Or;
	
	@:overload public function plus(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Plus;
	
	@:overload public function positive(operand : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Positive;
	
	@:overload public function shiftLeft(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.ShiftLeft;
	
	@:overload public function shiftRight(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.ShiftRight;
	
	@:overload public function terminal(representation : String, charValue : Null<java.StdTypes.Char16>, isWide : Bool) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function terminal(representation : String, booleanValue : Null<Bool>) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function terminal(representation : String, doubleValue : Null<Float>) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function terminal(representation : String, bigIntegerValue : java.math.BigInteger) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function terminal(stringValue : String, isWide : Bool) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function terminal(constReference : com.sun.tools.corba.se.idl.ConstEntry) : com.sun.tools.corba.se.idl.constExpr.Terminal;
	
	@:overload public function times(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Times;
	
	@:overload public function xor(left : com.sun.tools.corba.se.idl.constExpr.Expression, right : com.sun.tools.corba.se.idl.constExpr.Expression) : com.sun.tools.corba.se.idl.constExpr.Xor;
	
	
}
