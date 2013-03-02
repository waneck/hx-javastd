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
* $Id: Template.java,v 1.2.4.1 2005/09/12 11:30:11 pvedula Exp $
*/
extern class Template extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	@:overload public function hasParams() : Bool;
	
	@:overload public function isSimplified() : Bool;
	
	@:overload public function setSimplified() : Void;
	
	@:overload public function isSimpleNamedTemplate() : Bool;
	
	@:overload public function addParameter(param : com.sun.org.apache.xalan.internal.xsltc.compiler.Param) : Void;
	
	@:overload public function getParameters() : java.util.Vector<Dynamic>;
	
	@:overload public function disable() : Void;
	
	@:overload public function disabled() : Bool;
	
	@:overload public function getPriority() : Float;
	
	@:overload public function getPosition() : Int;
	
	@:overload public function isNamed() : Bool;
	
	@:overload public function getPattern() : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern;
	
	@:overload public function getName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload public function setName(qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	@:overload public function getModeName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Compare this template to another. First checks priority, then position.
	*/
	@:overload public function compareTo(template : Dynamic) : Int;
	
	@:overload public function display(indent : Int) : Void;
	
	@:overload public function getStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* When the parser realises that it is dealign with a simplified stylesheet
	* it will create an empty Stylesheet object with the root element of the
	* stylesheet (a LiteralElement object) as its only child. The Stylesheet
	* object will then create this Template object and invoke this method to
	* force some specific behaviour. What we need to do is:
	*  o) create a pattern matching on the root node
	*  o) add the LRE root node (the only child of the Stylesheet) as our
	*     only child node
	*  o) set the empty Stylesheet as our parent
	*  o) set this template as the Stylesheet's only child
	*/
	@:overload public function parseSimplified(stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet, parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
