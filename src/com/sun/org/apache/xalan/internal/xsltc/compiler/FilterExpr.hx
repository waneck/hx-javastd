package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
* $Id: FilterExpr.java,v 1.2.4.1 2005/09/12 10:22:50 pvedula Exp $
*/
@:internal extern class FilterExpr extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	@:overload public function new(primary : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, predicates : java.util.Vector<Dynamic>) : Void;
	
	@:overload private function getExpr() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function toString() : String;
	
	/**
	* Type check a FilterParentPath. If the filter is not a node-set add a
	* cast to node-set only if it is of reference type. This type coercion
	* is needed for expressions like $x where $x is a parameter reference.
	* All optimizations are turned off before type checking underlying
	* predicates.
	*/
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate a filter expression by pushing the appropriate iterator
	* onto the stack.
	*/
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate a sequence of predicates. Each predicate is translated
	* by constructing an instance of <code>CurrentNodeListIterator</code>
	* which is initialized from another iterator (recursive call), a
	* filter and a closure (call to translate on the predicate) and "this".
	*/
	@:overload public function translatePredicates(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, predicateIndex : Int) : Void;
	
	
}
