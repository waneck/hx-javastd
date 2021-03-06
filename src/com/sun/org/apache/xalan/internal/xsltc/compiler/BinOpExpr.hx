package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: BinOpExpr.java,v 1.2.4.1 2005/09/01 11:42:27 pvedula Exp $
*/
@:internal extern class BinOpExpr extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:public @:static @:final public static var PLUS(default, null) : Int;
	
	@:public @:static @:final public static var MINUS(default, null) : Int;
	
	@:public @:static @:final public static var TIMES(default, null) : Int;
	
	@:public @:static @:final public static var DIV(default, null) : Int;
	
	@:public @:static @:final public static var MOD(default, null) : Int;
	
	@:overload @:public public function new(op : Int, left : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, right : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	/**
	* Returns true if this expressions contains a call to position(). This is
	* needed for context changes in node steps containing multiple predicates.
	*/
	@:overload @:public override public function hasPositionCall() : Bool;
	
	/**
	* Returns true if this expressions contains a call to last()
	*/
	@:overload @:public override public function hasLastCall() : Bool;
	
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
