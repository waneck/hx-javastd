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
* $Id: LiteralElement.java,v 1.2.4.1 2005/09/13 12:38:33 pvedula Exp $
*/
@:internal extern class LiteralElement extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Returns the QName for this literal element
	*/
	@:overload public function getName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Displays the contents of this literal element
	*/
	@:overload override public function display(indent : Int) : Void;
	
	/**
	* Method used to keep track of what namespaces that are references by
	* this literal element and its attributes. The output must contain a
	* definition for each namespace, so we stuff them in a hashtable.
	*/
	@:overload public function registerNamespace(prefix : String, uri : String, stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable, declared : Bool) : Void;
	
	/**
	* Add an attribute to this element
	*/
	@:overload public function addAttribute(attribute : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Set the first attribute of this element
	*/
	@:overload public function setFirstAttribute(attribute : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Type-check the contents of this element. The element itself does not
	* need any type checking as it leaves nothign on the JVM's stack.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method starts at a given node, traverses all namespace mappings,
	* and assembles a list of all prefixes that (for the given node) maps
	* to _ANY_ namespace URI. Used by literal result elements to determine
	*/
	@:overload public function getNamespaceScope(node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : java.util.Enumeration<Dynamic>;
	
	/**
	* Determines the final QName for the element and its attributes.
	* Registers all namespaces that are used by the element/attributes
	*/
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload override private function contextDependent() : Bool;
	
	/**
	* Compiles code that emits the literal element to the output handler,
	* first the start tag, then namespace declaration, then attributes,
	* then the element contents, and then the element end tag. Since the
	* value of an attribute may depend on a variable, variables must be
	* compiled first.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Return the ElemDesc object for an HTML element.
	* Return null if the output method is not HTML or this is not a
	* valid HTML element.
	*/
	@:overload public function getElemDesc() : com.sun.org.apache.xml.internal.serializer.ElemDesc;
	
	/**
	* Return true if all attributes of this LRE have unique names.
	*/
	@:overload public function allAttributesUnique() : Bool;
	
	
}
