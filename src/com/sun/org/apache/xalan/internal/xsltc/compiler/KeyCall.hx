package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2006 The Apache Software Foundation.
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
* $Id: KeyCall.java,v 1.7 2006/06/19 19:49:04 spericas Exp $
*/
@:internal extern class KeyCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall
{
	/**
	* Get the parameters passed to function:
	*   key(String name, String value)
	*   key(String name, NodeSet value)
	* The 'arguments' vector should contain two parameters for key() calls,
	* one holding the key name and one holding the value(s) to look up. The
	* vector has only one parameter for id() calls (the key name is always
	* "##id" for id() calls).
	*
	* @param fname The function name (should be 'key' or 'id')
	* @param arguments A vector containing the arguments the the function
	*/
	@:overload public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	/**
	* If this call to key() is in a top-level element like  another variable
	* or param, add a dependency between that top-level element and the
	* referenced key. For example,
	*
	*   <xsl:key name="x" .../>
	*   <xsl:variable name="y" select="key('x', 1)"/>
	*
	* and assuming this class represents "key('x', 1)", add a reference
	* between variable y and key x. Note that if 'x' is unknown statically
	* in key('x', 1), there's nothing we can do at this point.
	*/
	@:overload public function addParentDependency() : Void;
	
	/**
	* Type check the parameters for the id() or key() function.
	* The index name (for key() call only) must be a string or convertable
	* to a string, and the lookup-value must be a string or a node-set.
	* @param stable The parser's symbol table
	* @throws TypeCheckError When the parameters have illegal type
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method is called when the constructor is compiled in
	* Stylesheet.compileConstructor() and not as the syntax tree is traversed.
	* <p>This method will generate byte code that produces an iterator
	* for the nodes in the node set for the key or id function call.
	* @param classGen The Java class generator
	* @param methodGen The method generator
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
