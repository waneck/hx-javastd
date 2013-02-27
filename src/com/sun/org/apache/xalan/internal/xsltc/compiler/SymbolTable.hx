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
* $Id: SymbolTable.java,v 1.5 2005/09/28 13:48:16 pvedula Exp $
*/
@:internal extern class SymbolTable
{
	@:overload public function getDecimalFormatting(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.DecimalFormatting;
	
	@:overload public function addDecimalFormatting(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, symbols : com.sun.org.apache.xalan.internal.xsltc.compiler.DecimalFormatting) : Void;
	
	@:overload public function getKey(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Key;
	
	@:overload public function addKey(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, key : com.sun.org.apache.xalan.internal.xsltc.compiler.Key) : Void;
	
	@:overload public function addStylesheet(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, node : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload public function lookupStylesheet(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload public function addTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	@:overload public function lookupTemplate(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	@:overload public function addVariable(variable : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable) : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable;
	
	@:overload public function addParam(parameter : com.sun.org.apache.xalan.internal.xsltc.compiler.Param) : com.sun.org.apache.xalan.internal.xsltc.compiler.Param;
	
	@:overload public function lookupVariable(qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Variable;
	
	@:overload public function lookupParam(qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.Param;
	
	@:overload public function lookupName(qname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode;
	
	@:overload public function addAttributeSet(atts : com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeSet) : com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeSet;
	
	@:overload public function lookupAttributeSet(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeSet;
	
	/**
	* Add a primitive operator or function to the symbol table. To avoid
	* name clashes with user-defined names, the prefix <tt>PrimopPrefix</tt>
	* is prepended.
	*/
	@:overload public function addPrimop(name : String, mtype : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType) : Void;
	
	/**
	* Lookup a primitive operator or function in the symbol table by
	* prepending the prefix <tt>PrimopPrefix</tt>.
	*/
	@:overload public function lookupPrimop(name : String) : java.util.Vector<Dynamic>;
	
	@:overload public function generateNamespacePrefix() : String;
	
	@:overload public function setCurrentNode(node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	@:overload public function lookupNamespace(prefix : String) : String;
	
	/**
	* Adds an alias for a namespace prefix
	*/
	@:overload public function addPrefixAlias(prefix : String, alias : String) : Void;
	
	/**
	* Retrieves any alias for a given namespace prefix
	*/
	@:overload public function lookupPrefixAlias(prefix : String) : String;
	
	/**
	* Register a namespace URI so that it will not be declared in the output
	* unless it is actually referenced in the output.
	*/
	@:overload public function excludeURI(uri : String) : Void;
	
	/**
	* Exclude a series of namespaces given by a list of whitespace
	* separated namespace prefixes.
	*/
	@:overload public function excludeNamespaces(prefixes : String) : Void;
	
	/**
	* Check if a namespace should not be declared in the output (unless used)
	*/
	@:overload public function isExcludedNamespace(uri : String) : Bool;
	
	/**
	* Turn of namespace declaration exclusion
	*/
	@:overload public function unExcludeNamespaces(prefixes : String) : Void;
	
	/**
	* Exclusion of namespaces by a stylesheet does not extend to any stylesheet
	* imported or included by the stylesheet.  Upon entering the context of a
	* new stylesheet, a call to this method is needed to clear the current set
	* of excluded namespaces temporarily.  Every call to this method requires
	* a corresponding call to {@link #popExcludedNamespacesContext()}.
	*/
	@:overload public function pushExcludedNamespacesContext() : Void;
	
	/**
	* Exclusion of namespaces by a stylesheet does not extend to any stylesheet
	* imported or included by the stylesheet.  Upon exiting the context of a
	* stylesheet, a call to this method is needed to restore the set of
	* excluded namespaces that was in effect prior to entering the context of
	* the current stylesheet.
	*/
	@:overload public function popExcludedNamespacesContext() : Void;
	
	
}
