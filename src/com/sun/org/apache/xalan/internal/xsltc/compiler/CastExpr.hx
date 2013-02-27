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
* $Id: CastExpr.java,v 1.2.4.1 2005/09/12 10:06:35 pvedula Exp $
*/
@:internal extern class CastExpr extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	/**
	* Construct a cast expression and check that the conversion is
	* valid by calling typeCheck().
	*/
	@:overload public function new(left : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	@:overload public function getExpr() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	/**
	* Returns true if this expressions contains a call to position(). This is
	* needed for context changes in node steps containing multiple predicates.
	*/
	@:overload override public function hasPositionCall() : Bool;
	
	@:overload override public function hasLastCall() : Bool;
	
	@:overload override public function toString() : String;
	
	/**
	* Type checking a cast expression amounts to verifying that the
	* type conversion is legal. Cast expressions are created during
	* type checking, but typeCheck() is usually not called on them.
	* As a result, this method is called from the constructor.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload override public function translateDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
