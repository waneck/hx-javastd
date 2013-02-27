package com.sun.org.apache.xerces.internal.xinclude;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2001-2003 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XPointerElementHandler implements com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
{
	/** Property identifier: error handler. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: grammar pool . */
	private static var GRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: grammar pool . */
	private static var ENTITY_RESOLVER(default, null) : String;
	
	private static var XPOINTER_SCHEMA(default, null) : String;
	
	private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	private var fParentXIncludeHandler : com.sun.org.apache.xerces.internal.xinclude.XIncludeHandler;
	
	private var fDocLocation : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	private var fNamespaceContext : com.sun.org.apache.xerces.internal.xinclude.XIncludeNamespaceSupport;
	
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	private var fGrammarDesc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	private var fDTDGrammar : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
	
	private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	private var fSettings : com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
	
	private var fPointer : java.lang.StringBuffer;
	
	@:overload public function new() : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Sets the state of a feature. This method is called by the component
	* manager any time after reset when a feature changes state.
	* <p>
	* <strong>Note:</strong> Components should silently ignore features
	* that do not affect the operation of the component.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* <p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getPropertyDefault(propertyId : String) : Dynamic;
	
	@:overload public function setDocumentHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/**
	* set the Schema Name  eg element , xpointer
	*/
	@:overload public function setXPointerSchemaName(schemaName : String) : Void;
	
	/**
	* Return  Schema Name  eg element , xpointer
	*
	*/
	@:overload public function getXpointerSchemaName() : String;
	
	/**
	* Parent Contenhandler for the this contenthandler.
	* // not sure about the parameter type. It can be Contenthandler instead of Object type.
	*/
	@:overload public function setParent(parent : Dynamic) : Void;
	
	/**
	* return the Parent Contenthandler
	*/
	@:overload public function getParent() : Dynamic;
	
	/**
	* Content of the XPointer Schema. Xpath to be resolved.
	*/
	@:overload public function setXPointerSchemaPointer(content : String) : Void;
	
	/**
	* Return the XPointer Schema.
	*/
	@:overload public function getXPointerSchemaPointer() : String;
	
	@:overload public function isSubResourceIndentified() : Bool;
	
	@:overload public function getTokens() : Void;
	
	@:overload public function hasMoreToken() : Bool;
	
	@:overload public function getNextToken() : Bool;
	
	@:overload public function checkStringToken(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Bool;
	
	@:overload public function checkIntegerToken(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	@:overload public function addQName(element : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startGeneralEntity(name : String, resId : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	@:overload private function reportFatalError(key : String) : Void;
	
	@:overload private function reportFatalError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload private function isRootDocument() : Bool;
	
	
}
