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
* $Id: UnsupportedElement.java,v 1.2.4.1 2005/09/05 09:26:51 pvedula Exp $
*/
@:internal extern class UnsupportedElement extends com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
{
	/**
	* Basic consutrcor - stores element uri/prefix/localname
	*/
	@:overload public function new(uri : String, prefix : String, local : String, isExtension : Bool) : Void;
	
	/**
	* There are different categories of unsupported elements (believe it
	* or not): there are elements within the XSLT namespace (these would
	* be elements that are not yet implemented), there are extensions of
	* other XSLT processors and there are unrecognised extension elements
	* of this XSLT processor. The error message passed to this method
	* should describe the unsupported element itself and what category
	* the element belongs in.
	*/
	@:overload public function setErrorMessage(message : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg) : Void;
	
	/**
	* Displays the contents of this element
	*/
	@:overload public function display(indent : Int) : Void;
	
	/**
	* Find any fallback in the descendant nodes; then activate & parse it
	*/
	@:overload public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Run type check on the fallback element (if any).
	*/
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate the fallback element (if any).
	*/
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
