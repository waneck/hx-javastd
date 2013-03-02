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
* $Id: EqualityExpr.java,v 1.2.4.1 2005/09/12 10:16:52 pvedula Exp $
*/
@:internal extern class EqualityExpr extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	@:overload public function new(op : Int, left : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, right : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	@:overload public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function getLeft() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload public function getRight() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload public function getOp() : Bool;
	
	/**
	* Returns true if this expressions contains a call to position(). This is
	* needed for context changes in node steps containing multiple predicates.
	*/
	@:overload public function hasPositionCall() : Bool;
	
	@:overload public function hasLastCall() : Bool;
	
	/**
	* Typing rules: see XSLT Reference by M. Kay page 345.
	*/
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload public function translateDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
