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
* $Id: Stylesheet.java,v 1.5 2005/09/28 13:48:16 pvedula Exp $
*/
extern class Stylesheet extends com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
{
	/**
	* Reference to the stylesheet from which this stylesheet was
	* imported (if any).
	*/
	@:public public var _importedFrom : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	/**
	* Reference to the stylesheet from which this stylesheet was
	* included (if any).
	*/
	@:public public var _includedFrom : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:public @:static @:final public static var UNKNOWN_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var XML_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var HTML_OUTPUT(default, null) : Int;
	
	@:public @:static @:final public static var TEXT_OUTPUT(default, null) : Int;
	
	/**
	* Return the output method
	*/
	@:overload @:public public function getOutputMethod() : Int;
	
	@:overload @:public public function getTemplateInlining() : Bool;
	
	@:overload @:public public function setTemplateInlining(flag : Bool) : Void;
	
	@:overload @:public public function isSimplified() : Bool;
	
	@:overload @:public public function setSimplified() : Void;
	
	@:overload @:public public function setHasIdCall(flag : Bool) : Void;
	
	@:overload @:public public function setOutputProperty(key : String, value : String) : Void;
	
	@:overload @:public public function setOutputProperties(props : java.util.Properties) : Void;
	
	@:overload @:public public function getOutputProperties() : java.util.Properties;
	
	@:overload @:public public function getLastOutputElement() : com.sun.org.apache.xalan.internal.xsltc.compiler.Output;
	
	@:overload @:public public function setMultiDocument(flag : Bool) : Void;
	
	@:overload @:public public function isMultiDocument() : Bool;
	
	@:overload @:public public function setCallsNodeset(flag : Bool) : Void;
	
	@:overload @:public public function callsNodeset() : Bool;
	
	@:overload @:public public function numberFormattingUsed() : Void;
	
	@:overload @:public public function setImportPrecedence(precedence : Int) : Void;
	
	@:overload @:public override public function getImportPrecedence() : Int;
	
	/**
	* Get the minimum of the precedence of this stylesheet, any stylesheet
	* imported by this stylesheet and any include/import descendant of this
	* stylesheet.
	*/
	@:overload @:public public function getMinimumDescendantPrecedence() : Int;
	
	@:overload @:public public function checkForLoop(systemId : String) : Bool;
	
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public public function setParentStylesheet(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public public function getParentStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload @:public public function setImportingStylesheet(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public public function setIncludingStylesheet(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public public function addIncludedStylesheet(child : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	@:overload @:public public function getSystemId() : String;
	
	@:overload @:public public function setSourceLoader(loader : com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader) : Void;
	
	@:overload @:public public function getSourceLoader() : com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader;
	
	/**
	* Returns true if this stylesheet has global vars or params.
	*/
	@:overload @:public public function hasGlobals() : Bool;
	
	/**
	* Returns true if at least one template in the stylesheet has params
	* defined. Uses the variable <code>_hasLocalParams</code> to cache the
	* result.
	*/
	@:overload @:public public function hasLocalParams() : Bool;
	
	/**
	* Adds a single prefix mapping to this syntax tree node.
	* @param prefix Namespace prefix.
	* @param uri Namespace URI.
	*/
	@:overload @:protected override private function addPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public public function isExtension(uri : String) : Bool;
	
	@:overload @:public public function declareExtensionPrefixes(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Parse the version and uri fields of the stylesheet and add an
	* entry to the symbol table mapping the name <tt>__stylesheet_</tt>
	* to an instance of this class.
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Parse all direct children of the <xsl:stylesheet/> element.
	*/
	@:overload @:public @:final public function parseOwnChildren(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public public function processModes() : Void;
	
	@:overload @:public public function getMode(modeName : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Mode;
	
	/**
	* Type check all the children of this node.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate the stylesheet into JVM bytecodes.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate the stylesheet into JVM bytecodes.
	*/
	@:overload @:public public function translate() : Void;
	
	@:overload @:public public function addParam(param : com.sun.org.apache.xalan.internal.xsltc.compiler.Param) : Int;
	
	@:overload @:public public function addVariable(global : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable) : Int;
	
	@:overload @:public override public function display(indent : Int) : Void;
	
	@:overload @:public public function getNamespace(prefix : String) : String;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function getTemplates() : java.util.Vector<Dynamic>;
	
	@:overload @:public public function getAllValidTemplates() : java.util.Vector<Dynamic>;
	
	@:overload @:protected private function addTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : Void;
	
	
}
