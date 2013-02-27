package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2000-2002 The Apache Software Foundation.  All rights
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
extern class XMLNamespaceBinder implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter
{
	/** Feature identifier: namespaces. */
	private static var NAMESPACES(default, null) : String;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Namespaces. */
	private var fNamespaces : Bool;
	
	/** Symbol table. */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Document handler. */
	private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/** Only pass start and end prefix mapping events. */
	private var fOnlyPassPrefixMappingEvents : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Sets whether the namespace binder only passes the prefix mapping
	* events to the registered document handler or passes all document
	* events.
	*
	* @param onlyPassPrefixMappingEvents True to pass only the prefix
	*                                    mapping events; false to pass
	*                                    all events.
	*/
	@:overload public function setOnlyPassPrefixMappingEvents(onlyPassPrefixMappingEvents : Bool) : Void;
	
	/**
	* Returns true if the namespace binder only passes the prefix mapping
	* events to the registered document handler; false if the namespace
	* binder passes all document events.
	*/
	@:overload public function getOnlyPassPrefixMappingEvents() : Bool;
	
	/**
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on initialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
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
	* Sets the value of a property during parsing.
	*
	* @param propertyId
	* @param value
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
	
	/** Sets the document handler to receive information about the document. */
	@:overload public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the document handler */
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** Sets the document source */
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	/** Returns the document source */
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/**
	* This method notifies the start of a general entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name     The name of the general entity.
	* @param identifier The resource identifier.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal entities or a document entity that is
	*                 parsed from a java.io.Reader).
	* @param augs     Additional information that may include infoset augmentations
	*
	* @exception XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startEntity call.
	* <p>
	* <strong>Note:</strong> This method will never be called for the
	* document entity; it is only called for external general entities
	* referenced in document content.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the document.
	*
	* @param locator  The system identifier of the entity if the entity
	*                 is external, null otherwise.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal entities or a document entity that is
	*                 parsed from a java.io.Reader).
	* @param namespaceContext
	*                 The namespace context in effect at the
	*                 start of this document.
	*                 This object represents the current context.
	*                 Implementors of this class are responsible
	*                 for copying the namespace bindings from the
	*                 the current context (and its parent contexts)
	*                 if that information is important.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of an XMLDecl line in the document. If
	* present, this method will be called immediately following the
	* startDocument call.
	*
	* @param version    The XML version.
	* @param encoding   The IANA encoding name of the document, or null if
	*                   not specified.
	* @param standalone The standalone value, or null if not specified.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of the DOCTYPE line in the document.
	*
	* @param rootElement The name of the root element.
	* @param publicId    The public identifier if an external DTD or null
	*                    if the external DTD is specified using SYSTEM.
	* @param systemId    The system identifier if an external DTD, null
	*                    otherwise.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A processing instruction. Processing instructions consist of a
	* target name and, optionally, text data. The data is only meaningful
	* to the application.
	* <p>
	* Typically, a processing instruction's data will contain a series
	* of pseudo-attributes. These pseudo-attributes follow the form of
	* element attributes but are <strong>not</strong> parsed or presented
	* to the application as anything other than text. The application is
	* responsible for parsing the data.
	*
	* @param target The target.
	* @param data   The data or null if none specified.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Binds the namespaces. This method will handle calling the
	* document handler to start the prefix mappings.
	* <p>
	* <strong>Note:</strong> This method makes use of the
	* fAttributeQName variable. Any contents of the variable will
	* be destroyed. Caller should copy the values out of this
	* temporary variable before calling this method.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Ignorable whitespace. For this method to be called, the document
	* source must have some way of determining that the text containing
	* only whitespace characters should be considered ignorable. For
	* example, the validator can determine if a length of whitespace
	* characters in the document are ignorable based on the element
	* content model.
	*
	* @param text The ignorable whitespace.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of a general entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name   The name of the entity.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Handles start element. */
	@:overload private function handleStartElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, isEmpty : Bool) : Void;
	
	/** Handles end element. */
	@:overload private function handleEndElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, isEmpty : Bool) : Void;
	
	@:overload private function prefixBoundToNullURI(uri : String, localpart : String) : Bool;
	
	
}
