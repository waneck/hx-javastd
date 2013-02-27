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
	public var _importedFrom : Stylesheet;
	
	/**
	* Reference to the stylesheet from which this stylesheet was
	* included (if any).
	*/
	public var _includedFrom : Stylesheet;
	
	public static var UNKNOWN_OUTPUT(default, null) : Int;
	
	public static var XML_OUTPUT(default, null) : Int;
	
	public static var HTML_OUTPUT(default, null) : Int;
	
	public static var TEXT_OUTPUT(default, null) : Int;
	
	/**
	* Return the output method
	*/
	@:overload public function getOutputMethod() : Int;
	
	@:overload public function getTemplateInlining() : Bool;
	
	@:overload public function setTemplateInlining(flag : Bool) : Void;
	
	@:overload public function isSimplified() : Bool;
	
	@:overload public function setSimplified() : Void;
	
	@:overload public function setHasIdCall(flag : Bool) : Void;
	
	@:overload public function setOutputProperty(key : String, value : String) : Void;
	
	@:overload public function setOutputProperties(props : java.util.Properties) : Void;
	
	@:overload public function getOutputProperties() : java.util.Properties;
	
	@:overload public function getLastOutputElement() : com.sun.org.apache.xalan.internal.xsltc.compiler.Output;
	
	@:overload public function setMultiDocument(flag : Bool) : Void;
	
	@:overload public function isMultiDocument() : Bool;
	
	@:overload public function setCallsNodeset(flag : Bool) : Void;
	
	@:overload public function callsNodeset() : Bool;
	
	@:overload public function numberFormattingUsed() : Void;
	
	@:overload public function setImportPrecedence(precedence : Int) : Void;
	
	@:overload override public function getImportPrecedence() : Int;
	
	/**
	* Get the minimum of the precedence of this stylesheet, any stylesheet
	* imported by this stylesheet and any include/import descendant of this
	* stylesheet.
	*/
	@:overload public function getMinimumDescendantPrecedence() : Int;
	
	@:overload public function checkForLoop(systemId : String) : Bool;
	
	@:overload override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function setParentStylesheet(parent : Stylesheet) : Void;
	
	@:overload public function getParentStylesheet() : Stylesheet;
	
	@:overload public function setImportingStylesheet(parent : Stylesheet) : Void;
	
	@:overload public function setIncludingStylesheet(parent : Stylesheet) : Void;
	
	@:overload public function addIncludedStylesheet(child : Stylesheet) : Void;
	
	@:overload public function setSystemId(systemId : String) : Void;
	
	@:overload public function getSystemId() : String;
	
	@:overload public function setSourceLoader(loader : com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader) : Void;
	
	@:overload public function getSourceLoader() : com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader;
	
	/**
	* Returns true if this stylesheet has global vars or params.
	*/
	@:overload public function hasGlobals() : Bool;
	
	/**
	* Returns true if at least one template in the stylesheet has params
	* defined. Uses the variable <code>_hasLocalParams</code> to cache the
	* result.
	*/
	@:overload public function hasLocalParams() : Bool;
	
	/**
	* Adds a single prefix mapping to this syntax tree node.
	* @param prefix Namespace prefix.
	* @param uri Namespace URI.
	*/
	@:overload override private function addPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function isExtension(uri : String) : Bool;
	
	@:overload public function declareExtensionPrefixes(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Parse the version and uri fields of the stylesheet and add an
	* entry to the symbol table mapping the name <tt>__stylesheet_</tt>
	* to an instance of this class.
	*/
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Parse all direct children of the <xsl:stylesheet/> element.
	*/
	@:overload @:final public function parseOwnChildren(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function processModes() : Void;
	
	@:overload public function getMode(modeName : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Mode;
	
	/**
	* Type check all the children of this node.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate the stylesheet into JVM bytecodes.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate the stylesheet into JVM bytecodes.
	*/
	@:overload public function translate() : Void;
	
	@:overload public function addParam(param : com.sun.org.apache.xalan.internal.xsltc.compiler.Param) : Int;
	
	@:overload public function addVariable(global : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable) : Int;
	
	@:overload override public function display(indent : Int) : Void;
	
	@:overload public function getNamespace(prefix : String) : String;
	
	@:overload public function getClassName() : String;
	
	@:overload public function getTemplates() : java.util.Vector<Dynamic>;
	
	@:overload public function getAllValidTemplates() : java.util.Vector<Dynamic>;
	
	@:overload private function addTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : Void;
	
	
}
