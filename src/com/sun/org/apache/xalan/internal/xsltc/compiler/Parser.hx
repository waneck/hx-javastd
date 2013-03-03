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
* $Id: Parser.java,v 1.2.4.1 2005/09/13 12:14:32 pvedula Exp $
*/
extern class Parser implements com.sun.org.apache.xalan.internal.xsltc.compiler.Constants implements org.xml.sax.ContentHandler
{
	@:overload @:public public function new(xsltc : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC, useServicesMechanism : Bool) : Void;
	
	@:overload @:public public function init() : Void;
	
	@:overload @:public public function setOutput(output : com.sun.org.apache.xalan.internal.xsltc.compiler.Output) : Void;
	
	@:overload @:public public function getOutput() : com.sun.org.apache.xalan.internal.xsltc.compiler.Output;
	
	@:overload @:public public function getOutputProperties() : java.util.Properties;
	
	@:overload @:public public function addVariable(_var : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable) : Void;
	
	@:overload @:public public function addParameter(param : com.sun.org.apache.xalan.internal.xsltc.compiler.Param) : Void;
	
	@:overload @:public public function removeVariable(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	@:overload @:public public function lookupVariable(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase;
	
	@:overload @:public public function setXSLTC(xsltc : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC) : Void;
	
	@:overload @:public public function getXSLTC() : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
	
	@:overload @:public public function getCurrentImportPrecedence() : Int;
	
	@:overload @:public public function getNextImportPrecedence() : Int;
	
	@:overload @:public public function setCurrentStylesheet(stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public public function getCurrentStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload @:public public function getTopLevelStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload @:public public function getQNameSafe(stringRep : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQName(stringRep : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQNameIgnoreDefaultNs(stringRep : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQName(stringRep : String, reportError : Bool) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQName(namespace : String, prefix : String, localname : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQName(scope : String, name : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getQName(scope : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getUseAttributeSets() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getExtensionElementPrefixes() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	@:overload @:public public function getExcludeResultPrefixes() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Create an instance of the <code>Stylesheet</code> class,
	* and then parse, typecheck and compile the instance.
	* Must be called after <code>parse()</code>.
	*/
	@:overload @:public public function makeStylesheet(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	/**
	* Instanciates a SAX2 parser and generate the AST from the input.
	*/
	@:overload @:public public function createAST(stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	/**
	* Parses a stylesheet and builds the internal abstract syntax tree
	* @param reader A SAX2 SAXReader (parser)
	* @param input A SAX2 InputSource can be passed to a SAX reader
	* @return The root of the abstract syntax tree
	*/
	@:overload @:public public function parse(reader : org.xml.sax.XMLReader, input : org.xml.sax.InputSource) : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	/**
	* Parses a stylesheet and builds the internal abstract syntax tree
	* @param input A SAX2 InputSource can be passed to a SAX reader
	* @return The root of the abstract syntax tree
	*/
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	@:overload @:public public function getDocumentRoot() : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	/**
	* Set the parameters to use to locate the correct <?xml-stylesheet ...?>
	* processing instruction in the case where the input document is an
	* XML document with one or more references to a stylesheet.
	* @param media The media attribute to be matched. May be null, in which
	* case the prefered templates will be used (i.e. alternate = no).
	* @param title The value of the title attribute to match. May be null.
	* @param charset The value of the charset attribute to match. May be null.
	*/
	@:overload @:protected private function setPIParameters(media : String, title : String, charset : String) : Void;
	
	@:overload @:public public function elementSupported(namespace : String, localName : String) : Bool;
	
	@:overload @:public public function functionSupported(fname : String) : Bool;
	
	@:overload @:public public function getSymbolTable() : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable;
	
	@:overload @:public public function getTemplate() : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	@:overload @:public public function setTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : Void;
	
	@:overload @:public public function getTemplateIndex() : Int;
	
	@:overload @:public public function makeInstance(uri : String, prefix : String, local : String, attributes : org.xml.sax.Attributes) : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	/**
	* Parse an XPath expression:
	*  @param parent - XSL element where the expression occured
	*  @param exp    - textual representation of the expression
	*/
	@:overload @:public public function parseExpression(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, exp : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	/**
	* Parse an XPath expression:
	*  @param parent - XSL element where the expression occured
	*  @param attr   - name of this element's attribute to get expression from
	*  @param def    - default expression (if the attribute was not found)
	*/
	@:overload @:public public function parseExpression(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, attr : String, def : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	/**
	* Parse an XPath pattern:
	*  @param parent  - XSL element where the pattern occured
	*  @param pattern - textual representation of the pattern
	*/
	@:overload @:public public function parsePattern(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, pattern : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern;
	
	/**
	* Parse an XPath pattern:
	*  @param parent - XSL element where the pattern occured
	*  @param attr   - name of this element's attribute to get pattern from
	*  @param def    - default pattern (if the attribute was not found)
	*/
	@:overload @:public public function parsePattern(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, attr : String, def : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern;
	
	/**
	* Returns true if there were any errors during compilation
	*/
	@:overload @:public public function errorsFound() : Bool;
	
	/**
	* Prints all compile-time errors
	*/
	@:overload @:public public function printErrors() : Void;
	
	/**
	* Prints all compile-time warnings
	*/
	@:overload @:public public function printWarnings() : Void;
	
	/**
	* Common error/warning message handler
	*/
	@:overload @:public public function reportError(category : Int, error : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg) : Void;
	
	@:overload @:public public function getErrors() : java.util.Vector<Dynamic>;
	
	@:overload @:public public function getWarnings() : java.util.Vector<Dynamic>;
	
	/**
	* SAX2: Receive notification of the beginning of a document.
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* SAX2: Receive notification of the end of a document.
	*/
	@:overload @:public public function endDocument() : Void;
	
	/**
	* SAX2: Begin the scope of a prefix-URI Namespace mapping.
	*       This has to be passed on to the symbol table!
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* SAX2: End the scope of a prefix-URI Namespace mapping.
	*       This has to be passed on to the symbol table!
	*/
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* SAX2: Receive notification of the beginning of an element.
	*       The parser may re-use the attribute list that we're passed so
	*       we clone the attributes in our own Attributes implementation
	*/
	@:overload @:public public function startElement(uri : String, localname : String, qname : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* SAX2: Receive notification of the end of an element.
	*/
	@:overload @:public public function endElement(uri : String, localname : String, qname : String) : Void;
	
	/**
	* SAX2: Receive notification of character data.
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* SAX2: Receive notification of a processing instruction.
	*       These require special handling for stylesheet PIs.
	*/
	@:overload @:public public function processingInstruction(name : String, value : String) : Void;
	
	/**
	* IGNORED - all ignorable whitespace is ignored
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* IGNORED - we do not have to do anything with skipped entities
	*/
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	/**
	* Store the document locator to later retrieve line numbers of all
	* elements from the stylesheet
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	
}
