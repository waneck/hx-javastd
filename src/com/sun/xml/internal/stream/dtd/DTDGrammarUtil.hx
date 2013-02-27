package com.sun.xml.internal.stream.dtd;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DTDGrammarUtil
{
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	private static var NAMESPACES(default, null) : String;
	
	private var fDTDGrammar : com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
	
	/** Namespaces. */
	private var fNamespaces : Bool;
	
	/** Symbol table. */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Default constructor. */
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function new(grammar : com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function new(grammar : com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	/*
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on finitialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* The start of an element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	/**
	* The start of a CDATA section.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Add default attributes and validate. */
	@:overload public function addDTDDefaultAttrs(elementName : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/** Handle element
	* @return true if validator is removed from the pipeline
	*/
	@:overload private function handleStartElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/** Handle end element. */
	@:overload private function handleEndElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function isInElementContent() : Bool;
	
	@:overload public function isIgnorableWhiteSpace(text : com.sun.org.apache.xerces.internal.xni.XMLString) : Bool;
	
	
}
