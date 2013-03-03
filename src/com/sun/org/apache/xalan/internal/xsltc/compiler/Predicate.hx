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
* $Id: Predicate.java,v 1.2.4.1 2005/09/12 11:02:18 pvedula Exp $
*/
@:internal extern class Predicate extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression implements com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
{
	/**
	* Initializes a predicate.
	*/
	@:overload @:public public function new(exp : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	/**
	* Set the parser for this expression.
	*/
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Returns a boolean value indicating if the nth position optimization
	* is on. Must be call after type checking!
	*/
	@:overload @:public public function isNthPositionFilter() : Bool;
	
	/**
	* Returns a boolean value indicating if the nth descendant optimization
	* is on. Must be call after type checking!
	*/
	@:overload @:public public function isNthDescendant() : Bool;
	
	/**
	* Turns off all optimizations for this predicate.
	*/
	@:overload @:public public function dontOptimize() : Void;
	
	/**
	* Returns true if the expression in this predicate contains a call
	* to position().
	*/
	@:overload @:public override public function hasPositionCall() : Bool;
	
	/**
	* Returns true if the expression in this predicate contains a call
	* to last().
	*/
	@:overload @:public override public function hasLastCall() : Bool;
	
	/**
	* Returns true if this closure is compiled in an inner class (i.e.
	* if this is a real closure).
	*/
	@:overload @:public public function inInnerClass() : Bool;
	
	/**
	* Returns a reference to its parent closure or null if outermost.
	*/
	@:overload @:public public function getParentClosure() : com.sun.org.apache.xalan.internal.xsltc.compiler.Closure;
	
	/**
	* Returns the name of the auxiliary class or null if this predicate
	* is compiled inside the Translet.
	*/
	@:overload @:public public function getInnerClassName() : String;
	
	/**
	* Add new variable to the closure.
	*/
	@:overload @:public public function addVariable(variableRef : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase) : Void;
	
	/**
	* Returns the node type of the expression owning this predicate. The
	* return value is cached in <code>_ptype</code>.
	*/
	@:overload @:public public function getPosType() : Int;
	
	@:overload @:public public function parentIsPattern() : Bool;
	
	@:overload @:public public function getExpr() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Type check a predicate expression. If the type of the expression is
	* number convert it to boolean by adding a comparison with position().
	* Note that if the expression is a parameter, we cannot distinguish
	* at compile time if its type is number or not. Hence, expressions of
	* reference type are always converted to booleans.
	*
	* This method may be called twice, before and after calling
	* <code>dontOptimize()</code>. If so, the second time it should honor
	* the new value of <code>_canOptimize</code>.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Returns true if the predicate is a test for the existance of an
	* element or attribute. All we have to do is to get the first node
	* from the step, check if it is there, and then return true/false.
	*/
	@:overload @:public public function isBooleanTest() : Bool;
	
	/**
	* Method to see if we can optimise the predicate by using a specialised
	* iterator for expressions like '/foo/bar[@attr = $var]', which are
	* very common in many stylesheets
	*/
	@:overload @:public public function isNodeValueTest() : Bool;
	
	/**
	* Returns the step in an expression of the form 'step = value'.
	* Null is returned if the expression is not of the right form.
	* Optimization if off if null is returned.
	*/
	@:overload @:public public function getStep() : com.sun.org.apache.xalan.internal.xsltc.compiler.Step;
	
	/**
	* Returns the value in an expression of the form 'step = value'.
	* A value may be either a literal string or a variable whose
	* type is string. Optimization if off if null is returned.
	*/
	@:overload @:public public function getCompareValue() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	/**
	* Translate a predicate expression. This translation pushes
	* two references on the stack: a reference to a newly created
	* filter object and a reference to the predicate's closure.
	*/
	@:overload @:public public function translateFilter(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate a predicate expression. If non of the optimizations apply
	* then this translation pushes two references on the stack: a reference
	* to a newly created filter object and a reference to the predicate's
	* closure. See class <code>Step</code> for further details.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
