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
* $Id: Expression.java,v 1.2.4.1 2005/09/01 14:17:51 pvedula Exp $
*/
@:internal extern class Expression extends com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
{
	/**
	* The type of this expression. It is set after calling
	* <code>typeCheck()</code>.
	*/
	private var _type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Instruction handles that comprise the true list.
	*/
	private var _trueList : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Instruction handles that comprise the false list.
	*/
	private var _falseList : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	@:overload public function getType() : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:abstract public function toString() : String;
	
	@:overload public function hasPositionCall() : Bool;
	
	@:overload public function hasLastCall() : Bool;
	
	/**
	* Returns an object representing the compile-time evaluation
	* of an expression. We are only using this for function-available
	* and element-available at this time.
	*/
	@:overload public function evaluateAtCompileTime() : Dynamic;
	
	/**
	* Type check all the children of this node.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate this node into JVM bytecodes.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate this node into a fresh instruction list.
	* The original instruction list is saved and restored.
	*/
	@:overload @:final public function compile(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	/**
	* Redefined by expressions of type boolean that use flow lists.
	*/
	@:overload public function translateDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* If this expression is of type node-set and it is not a variable
	* reference, then call setStartNode() passing the context node.
	*/
	@:overload public function startIterator(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Synthesize a boolean expression, i.e., either push a 0 or 1 onto the
	* operand stack for the next statement to succeed. Returns the handle
	* of the instruction to be backpatched.
	*/
	@:overload public function synthesize(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function desynthesize(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function getFalseList() : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	@:overload public function getTrueList() : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	@:overload public function backPatchFalseList(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	@:overload public function backPatchTrueList(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Search for a primop in the symbol table that matches the method type
	* <code>ctype</code>. Two methods match if they have the same arity.
	* If a primop is overloaded then the "closest match" is returned. The
	* first entry in the vector of primops that has the right arity is
	* considered to be the default one.
	*/
	@:overload public function lookupPrimop(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable, op : String, ctype : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType;
	
	
}
