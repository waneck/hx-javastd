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
* $Id: Key.java,v 1.6 2006/04/25 02:25:08 jeffsuttor Exp $
*/
@:internal extern class Key extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	/**
	* Parse the <xsl:key> element and attributes
	* @param parser A reference to the stylesheet parser
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Returns a String-representation of this key's name
	* @return The key's name (from the <xsl:key> elements 'name' attribute).
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method is called if the "use" attribute of the key contains a
	* node set. In this case we must traverse all nodes in the set and
	* create one entry in this key's index for each node in the set.
	*/
	@:overload @:public public function traverseNodeSet(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, buildKeyIndex : Int) : Void;
	
	/**
	* Gather all nodes that match the expression in the attribute "match"
	* and add one (or more) entries in this key's index.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
