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
* $Id: Step.java,v 1.6 2006/06/06 22:34:34 spericas Exp $
*/
@:internal extern class Step extends com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
{
	@:overload @:public public function new(axis : Int, nodeType : Int, predicates : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Set the parser for this element and all child predicates
	*/
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Define the axis (defined in Axis class) for this step
	*/
	@:overload @:public override public function getAxis() : Int;
	
	/**
	* Get the axis (defined in Axis class) for this step
	*/
	@:overload @:public override public function setAxis(axis : Int) : Void;
	
	/**
	* Returns the node-type for this step
	*/
	@:overload @:public public function getNodeType() : Int;
	
	/**
	* Returns the vector containing all predicates for this step.
	*/
	@:overload @:public public function getPredicates() : java.util.Vector<Dynamic>;
	
	/**
	* Returns the vector containing all predicates for this step.
	*/
	@:overload @:public public function addPredicates(predicates : java.util.Vector<Dynamic>) : Void;
	
	/**
	* True if this step is the abbreviated step '.'
	*/
	@:overload @:public public function isAbbreviatedDot() : Bool;
	
	/**
	* True if this step is the abbreviated step '..'
	*/
	@:overload @:public public function isAbbreviatedDDot() : Bool;
	
	/**
	* Type check this step. The abbreviated steps '.' and '@attr' are
	* assigned type node if they have no predicates. All other steps
	* have type node-set.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate a step by pushing the appropriate iterator onto the stack.
	* The abbreviated steps '.' and '@attr' do not create new iterators
	* if they are not part of a LocationPath and have no filters.
	* In these cases a node index instead of an iterator is pushed
	* onto the stack.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate a sequence of predicates. Each predicate is translated
	* by constructing an instance of <code>CurrentNodeListIterator</code>
	* which is initialized from another iterator (recursive call),
	* a filter and a closure (call to translate on the predicate) and "this".
	*/
	@:overload @:public public function translatePredicates(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, predicateIndex : Int) : Void;
	
	/**
	* Returns a string representation of this step.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
