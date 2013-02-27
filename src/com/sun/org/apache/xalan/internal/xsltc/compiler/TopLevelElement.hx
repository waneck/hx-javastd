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
* $Id: TopLevelElement.java,v 1.5 2005/09/28 13:48:17 pvedula Exp $
*/
@:internal extern class TopLevelElement extends com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
{
	/*
	* List of dependencies with other variables, parameters or
	* keys defined at the top level.
	*/
	private var _dependencies : java.util.Vector<Dynamic>;
	
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
	@:overload public function compile(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	@:overload override public function display(indent : Int) : Void;
	
	/**
	* Add a dependency with other top-level elements like
	* variables, parameters or keys.
	*/
	@:overload public function addDependency(other : TopLevelElement) : Void;
	
	/**
	* Get the list of dependencies with other top-level elements
	* like variables, parameteres or keys.
	*/
	@:overload public function getDependencies() : java.util.Vector<Dynamic>;
	
	
}
