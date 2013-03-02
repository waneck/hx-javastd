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
* $Id: LogicalExpr.java,v 1.2.4.1 2005/09/01 16:03:31 pvedula Exp $
*/
@:internal extern class LogicalExpr extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	*/
	public static var OR(default, null) : Int;
	
	public static var AND(default, null) : Int;
	
	/**
	* Creates a new logical expression - either OR or AND. Note that the
	* left- and right-hand side expressions can also be logical expressions,
	* thus creating logical trees representing structures such as
	* (a and (b or c) and d), etc...
	*/
	@:overload public function new(op : Int, left : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, right : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	/**
	* Returns true if this expressions contains a call to position(). This is
	* needed for context changes in node steps containing multiple predicates.
	*/
	@:overload override public function hasPositionCall() : Bool;
	
	/**
	* Returns true if this expressions contains a call to last()
	*/
	@:overload override public function hasLastCall() : Bool;
	
	/**
	* Returns an object representing the compile-time evaluation
	* of an expression. We are only using this for function-available
	* and element-available at this time.
	*/
	@:overload override public function evaluateAtCompileTime() : Dynamic;
	
	/**
	* Returns this logical expression's operator - OR or AND represented
	* by 0 and 1 respectively.
	*/
	@:overload public function getOp() : Int;
	
	/**
	* Override the SyntaxTreeNode.setParser() method to make sure that the
	* parser is set for sub-expressions
	*/
	@:overload public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Returns a string describing this expression
	*/
	@:overload override public function toString() : String;
	
	/**
	* Type-check this expression, and possibly child expressions.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Compile the expression - leave boolean expression on stack
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Compile expression and update true/false-lists
	*/
	@:overload override public function translateDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
