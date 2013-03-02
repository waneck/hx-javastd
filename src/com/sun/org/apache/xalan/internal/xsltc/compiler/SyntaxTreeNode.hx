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
* $Id: SyntaxTreeNode.java,v 1.6 2006/06/06 22:34:33 spericas Exp $
*/
extern class SyntaxTreeNode implements com.sun.org.apache.xalan.internal.xsltc.compiler.Constants
{
	private var _parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	private var _qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	private var _attributes : org.xml.sax.helpers.AttributesImpl;
	
	private static var Dummy(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	private static var IndentIncrement(default, null) : Int;
	
	/**
	* Creates a new SyntaxTreeNode with a 'null' QName and no source file
	* line number reference.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new SyntaxTreeNode with a 'null' QName.
	* @param line Source file line number reference
	*/
	@:overload public function new(line : Int) : Void;
	
	/**
	* Creates a new SyntaxTreeNode with no source file line number reference.
	* @param uri The element's namespace URI
	* @param prefix The element's namespace prefix
	* @param local The element's local name
	*/
	@:overload public function new(uri : String, prefix : String, local : String) : Void;
	
	/**
	* Set the source file line number for this element
	* @param line The source file line number.
	*/
	@:overload @:final private function setLineNumber(line : Int) : Void;
	
	/**
	* Get the source file line number for this element. If unavailable, lookup
	* in ancestors.
	*
	* @return The source file line number.
	*/
	@:overload @:final public function getLineNumber() : Int;
	
	/**
	* Set the QName for the syntax tree node.
	* @param qname The QName for the syntax tree node
	*/
	@:overload private function setQName(qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	/**
	* Set the QName for the SyntaxTreeNode
	* @param uri The element's namespace URI
	* @param prefix The element's namespace prefix
	* @param local The element's local name
	*/
	@:overload private function setQName(uri : String, prefix : String, localname : String) : Void;
	
	/**
	* Set the QName for the SyntaxTreeNode
	* @param qname The QName for the syntax tree node
	*/
	@:overload private function getQName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Set the attributes for this SyntaxTreeNode.
	* @param attributes Attributes for the element. Must be passed in as an
	*                   implementation of org.xml.sax.Attributes.
	*/
	@:overload private function setAttributes(attributes : org.xml.sax.helpers.AttributesImpl) : Void;
	
	/**
	* Returns a value for an attribute from the source element.
	* @param qname The QName of the attribute to return.
	* @return The value of the attribute of name 'qname'.
	*/
	@:overload private function getAttribute(qname : String) : String;
	
	@:overload private function getAttribute(prefix : String, localName : String) : String;
	
	@:overload private function hasAttribute(qname : String) : Bool;
	
	@:overload private function addAttribute(qname : String, value : String) : Void;
	
	/**
	* Returns a list of all attributes declared for the element represented by
	* this syntax tree node.
	* @return Attributes for this syntax tree node
	*/
	@:overload private function getAttributes() : org.xml.sax.Attributes;
	
	/**
	* Sets the prefix mapping for the namespaces that were declared in this
	* element. This does not include all prefix mappings in scope, so one
	* may have to check ancestor elements to get all mappings that are in
	* in scope. The prefixes must be passed in as a Hashtable that maps
	* namespace prefixes (String objects) to namespace URIs (also String).
	* @param mapping The Hashtable containing the mappings.
	*/
	@:overload private function setPrefixMapping(mapping : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns a Hashtable containing the prefix mappings that were declared
	* for this element. This does not include all prefix mappings in scope,
	* so one may have to check ancestor elements to get all mappings that are
	* in in scope.
	* @return Prefix mappings (for this element only).
	*/
	@:overload private function getPrefixMapping() : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Adds a single prefix mapping to this syntax tree node.
	* @param prefix Namespace prefix.
	* @param uri Namespace URI.
	*/
	@:overload private function addPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Returns any namespace URI that is in scope for a given prefix. This
	* method checks namespace mappings for this element, and if necessary
	* for ancestor elements as well (ie. if the prefix maps to an URI in this
	* scope then you'll definately get the URI from this method).
	* @param prefix Namespace prefix.
	* @return Namespace URI.
	*/
	@:overload private function lookupNamespace(prefix : String) : String;
	
	/**
	* Returns any namespace prefix that is mapped to a prefix in the current
	* scope. This method checks namespace mappings for this element, and if
	* necessary for ancestor elements as well (ie. if the URI is declared
	* within the current scope then you'll definately get the prefix from
	* this method). Note that this is a very slow method and consequentially
	* it should only be used strictly when needed.
	* @param uri Namespace URI.
	* @return Namespace prefix.
	*/
	@:overload private function lookupPrefix(uri : String) : String;
	
	/**
	* Set this node's parser. The parser (the XSLT parser) gives this
	* syntax tree node access to the symbol table and XPath parser.
	* @param parser The XSLT parser.
	*/
	@:overload private function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Returns this node's XSLT parser.
	* @return The XSLT parser.
	*/
	@:overload @:final public function getParser() : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;
	
	/**
	* Set this syntax tree node's parent node, if unset. For
	* re-parenting just use <code>node._parent = newparent</code>.
	*
	* @param parent The parent node.
	*/
	@:overload private function setParent(parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Returns this syntax tree node's parent node.
	* @return The parent syntax tree node.
	*/
	@:overload @:final private function getParent() : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	/**
	* Returns 'true' if this syntax tree node is the Sentinal node.
	* @return 'true' if this syntax tree node is the Sentinal node.
	*/
	@:overload @:final private function isDummy() : Bool;
	
	/**
	* Get the import precedence of this element. The import precedence equals
	* the import precedence of the stylesheet in which this element occured.
	* @return The import precedence of this syntax tree node.
	*/
	@:overload private function getImportPrecedence() : Int;
	
	/**
	* Get the Stylesheet node that represents the <xsl:stylesheet/> element
	* that this node occured under.
	* @return The Stylesheet ancestor node of this node.
	*/
	@:overload public function getStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	/**
	* Get the Template node that represents the <xsl:template/> element
	* that this node occured under. Note that this method will return 'null'
	* for nodes that represent top-level elements.
	* @return The Template ancestor node of this node or 'null'.
	*/
	@:overload private function getTemplate() : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	/**
	* Returns a reference to the XSLTC (XSLT compiler) in use.
	* @return XSLTC - XSLT compiler.
	*/
	@:overload @:final private function getXSLTC() : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
	
	/**
	* Returns the XSLT parser's symbol table.
	* @return Symbol table.
	*/
	@:overload @:final private function getSymbolTable() : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable;
	
	/**
	* Parse the contents of this syntax tree nodes (child nodes, XPath
	* expressions, patterns and functions). The default behaviour is to parser
	* the syntax tree node's children (since there are no common expressions,
	* patterns, etc. that can be handled in this base class.
	* @param parser reference to the XSLT parser
	*/
	@:overload public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Parse all children of this syntax tree node. This method is normally
	* called by the parseContents() method.
	* @param parser reference to the XSLT parser
	*/
	@:overload @:final private function parseChildren(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Add a node to the current scope and return name of a variable or
	* parameter if the node represents a variable or a parameter.
	*/
	@:overload private function updateScope(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser, node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Type check the children of this node. The type check phase may add
	* coercions (CastExpr) to the AST.
	* @param stable The compiler/parser's symbol table
	*/
	@:overload @:abstract public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Call typeCheck() on all child syntax tree nodes.
	* @param stable The compiler/parser's symbol table
	*/
	@:overload private function typeCheckContents(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate this abstract syntax tree node into JVM bytecodes.
	* @param classGen BCEL Java class generator
	* @param methodGen BCEL Java method generator
	*/
	@:overload @:abstract public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Call translate() on all child syntax tree nodes.
	* @param classGen BCEL Java class generator
	* @param methodGen BCEL Java method generator
	*/
	@:overload private function translateContents(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Utility method used by parameters and variables to store result trees
	* @param classGen BCEL Java class generator
	* @param methodGen BCEL Java method generator
	*/
	@:overload private function compileResultTree(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Returns true if this expression/instruction depends on the context. By
	* default, every expression/instruction depends on the context unless it
	* overrides this method. Currently used to determine if result trees are
	* compiled using procedures or little DOMs (result tree fragments).
	* @return 'true' if this node depends on the context.
	*/
	@:overload private function contextDependent() : Bool;
	
	/**
	* Return true if any of the expressions/instructions in the contents of
	* this node is context dependent.
	* @return 'true' if the contents of this node is context dependent.
	*/
	@:overload private function dependentContents() : Bool;
	
	/**
	* Adds a child node to this syntax tree node.
	* @param element is the new child node.
	*/
	@:overload @:final private function addElement(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Inserts the first child node of this syntax tree node. The existing
	* children are shifted back one position.
	* @param element is the new child node.
	*/
	@:overload @:final private function setFirstElement(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Removed a child node of this syntax tree node.
	* @param element is the child node to remove.
	*/
	@:overload @:final private function removeElement(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* Returns a Vector containing all the child nodes of this node.
	* @return A Vector containing all the child nodes of this node.
	*/
	@:overload @:final private function getContents() : java.util.Vector<Dynamic>;
	
	/**
	* Tells you if this node has any child nodes.
	* @return 'true' if this node has any children.
	*/
	@:overload @:final private function hasContents() : Bool;
	
	/**
	* Returns the number of children this node has.
	* @return Number of child nodes.
	*/
	@:overload @:final private function elementCount() : Int;
	
	/**
	* Returns an Enumeration of all child nodes of this node.
	* @return An Enumeration of all child nodes of this node.
	*/
	@:overload @:final private function elements() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns a child node at a given position.
	* @param pos The child node's position.
	* @return The child node.
	*/
	@:overload @:final private function elementAt(pos : Int) : Dynamic;
	
	/**
	* Returns this element's last child
	* @return The child node.
	*/
	@:overload @:final private function lastChild() : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	/**
	* Displays the contents of this syntax tree node (to stdout).
	* This method is intended for debugging _only_, and should be overridden
	* by all syntax tree node implementations.
	* @param indent Indentation level for syntax tree levels.
	*/
	@:overload public function display(indent : Int) : Void;
	
	/**
	* Displays the contents of this syntax tree node (to stdout).
	* This method is intended for debugging _only_ !!!
	* @param indent Indentation level for syntax tree levels.
	*/
	@:overload private function displayContents(indent : Int) : Void;
	
	/**
	* Set the indentation level for debug output.
	* @param indent Indentation level for syntax tree levels.
	*/
	@:overload @:final private function indent(indent : Int) : Void;
	
	/**
	* Report an error to the parser.
	* @param element The element in which the error occured (normally 'this'
	* but it could also be an expression/pattern/etc.)
	* @param parser The XSLT parser to report the error to.
	* @param error The error code (from util/ErrorMsg).
	* @param message Any additional error message.
	*/
	@:overload private function reportError(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser, errorCode : String, message : String) : Void;
	
	/**
	* Report a recoverable error to the parser.
	* @param element The element in which the error occured (normally 'this'
	* but it could also be an expression/pattern/etc.)
	* @param parser The XSLT parser to report the error to.
	* @param error The error code (from util/ErrorMsg).
	* @param message Any additional error message.
	*/
	@:overload private function reportWarning(element : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode, parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser, errorCode : String, message : String) : Void;
	
	
}
