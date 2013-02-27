package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
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
@:internal extern class ValidatorHandlerImpl extends javax.xml.validation.ValidatorHandler implements org.xml.sax.DTDHandler implements com.sun.org.apache.xerces.internal.impl.validation.EntityState implements com.sun.org.apache.xerces.internal.xs.PSVIProvider implements com.sun.org.apache.xerces.internal.jaxp.validation.ValidatorHelper implements com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
{
	/** Feature identifier: string interning. */
	private static var STRING_INTERNING(default, null) : String;
	
	/*
	* Constructors
	*/
	@:overload public function new(grammarContainer : com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer) : Void;
	
	@:overload public function new(componentManager : com.sun.org.apache.xerces.internal.jaxp.validation.XMLSchemaValidatorComponentManager) : Void;
	
	/*
	* ValidatorHandler methods
	*/
	@:overload override public function setContentHandler(receiver : org.xml.sax.ContentHandler) : Void;
	
	@:overload override public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload override public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload override public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload override public function setResourceResolver(resourceResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	@:overload override public function getResourceResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	@:overload override public function getTypeInfoProvider() : javax.xml.validation.TypeInfoProvider;
	
	@:overload override public function getFeature(name : String) : Bool;
	
	@:overload override public function setFeature(name : String, value : Bool) : Void;
	
	@:overload override public function getProperty(name : String) : Dynamic;
	
	@:overload override public function setProperty(name : String, object : Dynamic) : Void;
	
	/*
	* EntityState methods
	*/
	@:overload public function isEntityDeclared(name : String) : Bool;
	
	@:overload public function isEntityUnparsed(name : String) : Bool;
	
	/*
	* XMLDocumentHandler methods
	*/
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/*
	* ContentHandler methods
	*/
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload override public function skippedEntity(name : String) : Void;
	
	/*
	* DTDHandler methods
	*/
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/*
	* ValidatorHelper methods
	*/
	@:overload public function validate(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	/*
	* PSVIProvider methods
	*/
	@:overload public function getElementPSVI() : com.sun.org.apache.xerces.internal.xs.ElementPSVI;
	
	@:overload public function getAttributePSVI(index : Int) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	@:overload public function getAttributePSVIByName(uri : String, localname : String) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	
}
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$ValidatorHandlerImpl$XMLSchemaTypeInfoProvider') @:internal extern class ValidatorHandlerImpl_XMLSchemaTypeInfoProvider extends javax.xml.validation.TypeInfoProvider
{
	@:overload override public function getAttributeTypeInfo(index : Int) : org.w3c.dom.TypeInfo;
	
	@:overload public function getAttributeTypeInfo(attributeUri : String, attributeLocalName : String) : org.w3c.dom.TypeInfo;
	
	@:overload public function getAttributeTypeInfo(attributeQName : String) : org.w3c.dom.TypeInfo;
	
	@:overload override public function getElementTypeInfo() : org.w3c.dom.TypeInfo;
	
	@:overload override public function isIdAttribute(index : Int) : Bool;
	
	@:overload override public function isSpecified(index : Int) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$ValidatorHandlerImpl$ResolutionForwarder') @:internal extern class ValidatorHandlerImpl_ResolutionForwarder implements org.xml.sax.ext.EntityResolver2
{
	/** The DOM entity resolver. */
	private var fEntityResolver : org.w3c.dom.ls.LSResourceResolver;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Wraps the specified DOM entity resolver. */
	@:overload public function new(entityResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/** Sets the DOM entity resolver. */
	@:overload public function setEntityResolver(entityResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/** Returns the DOM entity resolver. */
	@:overload public function getEntityResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	/**
	* Always returns <code>null</code>. An LSResourceResolver has no corresponding method.
	*/
	@:overload public function getExternalSubset(name : String, baseURI : String) : org.xml.sax.InputSource;
	
	/**
	* Resolves the given resource and adapts the <code>LSInput</code>
	* returned into an <code>InputSource</code>.
	*/
	@:overload public function resolveEntity(name : String, publicId : String, baseURI : String, systemId : String) : org.xml.sax.InputSource;
	
	/** Delegates to EntityResolver2.resolveEntity(String, String, String, String). */
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	
}
