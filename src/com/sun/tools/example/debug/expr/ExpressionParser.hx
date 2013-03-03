package com.sun.tools.example.debug.expr;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
/* Generated By:JavaCC: Do not edit this line. ExpressionParser.java */
extern class ExpressionParser implements com.sun.tools.example.debug.expr.ExpressionParserConstants
{
	@:overload @:public @:static public static function getMassagedValue() : com.sun.jdi.Value;
	
	@:overload @:public @:static public static function evaluate(expr : String, vm : com.sun.jdi.VirtualMachine, frameGetter : com.sun.tools.example.debug.expr.ExpressionParser.ExpressionParser_GetFrame) : com.sun.jdi.Value;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/*
	* Type, name and expression syntax follows.
	*/
	@:overload @:final @:public public function Type() : Void;
	
	@:overload @:final @:public public function PrimitiveType() : Void;
	
	@:overload @:final @:public public function Name() : String;
	
	@:overload @:final @:public public function NameList() : Void;
	
	/*
	* Expression syntax follows.
	*/
	@:overload @:final @:public public function Expression() : Void;
	
	@:overload @:final @:public public function Assignment() : Void;
	
	@:overload @:final @:public public function AssignmentOperator() : Void;
	
	@:overload @:final @:public public function ConditionalExpression() : Void;
	
	@:overload @:final @:public public function ConditionalOrExpression() : Void;
	
	@:overload @:final @:public public function ConditionalAndExpression() : Void;
	
	@:overload @:final @:public public function InclusiveOrExpression() : Void;
	
	@:overload @:final @:public public function ExclusiveOrExpression() : Void;
	
	@:overload @:final @:public public function AndExpression() : Void;
	
	@:overload @:final @:public public function EqualityExpression() : Void;
	
	@:overload @:final @:public public function InstanceOfExpression() : Void;
	
	@:overload @:final @:public public function RelationalExpression() : Void;
	
	@:overload @:final @:public public function ShiftExpression() : Void;
	
	@:overload @:final @:public public function AdditiveExpression() : Void;
	
	@:overload @:final @:public public function MultiplicativeExpression() : Void;
	
	@:overload @:final @:public public function UnaryExpression() : Void;
	
	@:overload @:final @:public public function PreIncrementExpression() : Void;
	
	@:overload @:final @:public public function PreDecrementExpression() : Void;
	
	@:overload @:final @:public public function UnaryExpressionNotPlusMinus() : Void;
	
	@:overload @:final @:public public function CastLookahead() : Void;
	
	@:overload @:final @:public public function PostfixExpression() : Void;
	
	@:overload @:final @:public public function CastExpression() : Void;
	
	@:overload @:final @:public public function PrimaryExpression() : Void;
	
	@:overload @:final @:public public function PrimaryPrefix() : Void;
	
	@:overload @:final @:public public function PrimarySuffix() : Void;
	
	@:overload @:final @:public public function Literal() : Void;
	
	@:overload @:final @:public public function BooleanLiteral() : Void;
	
	@:overload @:final @:public public function NullLiteral() : Void;
	
	@:overload @:final @:public public function Arguments() : java.util.List<com.sun.jdi.Value>;
	
	@:overload @:final @:public public function ArgumentList(argList : java.util.List<com.sun.jdi.Value>) : Void;
	
	@:overload @:final @:public public function AllocationExpression() : Void;
	
	/*
	* The second LOOKAHEAD specification below is to parse to PrimarySuffix if
	* there is an expression between the "[...]".
	*/
	@:overload @:final @:public public function ArrayDimensions() : Void;
	
	@:public public var token_source : com.sun.tools.example.debug.expr.ExpressionParserTokenManager;
	
	@:public public var token : com.sun.tools.example.debug.expr.Token;
	
	@:public public var jj_nt : com.sun.tools.example.debug.expr.Token;
	
	@:public public var lookingAhead : Bool;
	
	@:overload @:public public function new(stream : java.io.InputStream) : Void;
	
	@:overload @:public public function ReInit(stream : java.io.InputStream) : Void;
	
	@:overload @:public public function new(tm : com.sun.tools.example.debug.expr.ExpressionParserTokenManager) : Void;
	
	@:overload @:public public function ReInit(tm : com.sun.tools.example.debug.expr.ExpressionParserTokenManager) : Void;
	
	@:overload @:final @:public public function getNextToken() : com.sun.tools.example.debug.expr.Token;
	
	@:overload @:final @:public public function getToken(index : Int) : com.sun.tools.example.debug.expr.Token;
	
	@:overload @:final @:public public function generateParseException() : com.sun.tools.example.debug.expr.ParseException;
	
	@:overload @:final @:public public function enable_tracing() : Void;
	
	@:overload @:final @:public public function disable_tracing() : Void;
	
	
}
@:native('com$sun$tools$example$debug$expr$ExpressionParser$GetFrame') extern interface ExpressionParser_GetFrame
{
	@:overload public function get() : com.sun.jdi.StackFrame;
	
	
}
@:internal extern class JJExpressionParserCalls
{
	
}
