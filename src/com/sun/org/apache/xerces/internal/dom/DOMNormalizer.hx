package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004, 2005 The Apache Software Foundation.
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
extern class DOMNormalizer implements com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
{
	/** Debug normalize document*/
	private static var DEBUG_ND(default, null) : Bool;
	
	/** Debug namespace fix up algorithm*/
	private static var DEBUG(default, null) : Bool;
	
	/** Debug document handler events */
	private static var DEBUG_EVENTS(default, null) : Bool;
	
	/** prefix added by namespace fixup algorithm should follow a pattern "NS" + index*/
	private static var PREFIX(default, null) : String;
	
	private var fConfiguration : com.sun.org.apache.xerces.internal.dom.DOMConfigurationImpl;
	
	private var fDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl;
	
	private var fAttrProxy(default, null) : com.sun.org.apache.xerces.internal.dom.DOMNormalizer.DOMNormalizer_XMLAttributesProxy;
	
	private var fQName(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Validation handler represents validator instance. */
	private var fValidationHandler : com.sun.org.apache.xerces.internal.impl.RevalidationHandler;
	
	/** symbol table */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** error handler. may be null. */
	private var fErrorHandler : org.w3c.dom.DOMErrorHandler;
	
	private var fNamespaceValidation : Bool;
	
	private var fPSVI : Bool;
	
	/** The namespace context of this document: stores namespaces in scope */
	private var fNamespaceContext(default, null) : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** Stores all namespace bindings on the current element */
	private var fLocalNSBinder(default, null) : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** list of attributes */
	private var fAttributeList(default, null) : java.util.ArrayList<Dynamic>;
	
	/** DOM Locator -  for namespace fixup algorithm */
	private var fLocator(default, null) : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl;
	
	/** for setting the PSVI */
	private var fCurrentNode : org.w3c.dom.Node;
	
	/**
	* If the user stops the process, this exception will be thrown.
	*/
	public static var abort(default, null) : java.lang.RuntimeException;
	
	@:overload public function new() : Void;
	
	/**
	* Normalizes document.
	* Note: reset() must be called before this method.
	*/
	@:overload private function normalizeDocument(document : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, config : com.sun.org.apache.xerces.internal.dom.DOMConfigurationImpl) : Void;
	
	/**
	*
	* This method acts as if the document was going through a save
	* and load cycle, putting the document in a "normal" form. The actual result
	* depends on the features being set and governing what operations actually
	* take place. See setNormalizationFeature for details. Noticeably this method
	* normalizes Text nodes, makes the document "namespace wellformed",
	* according to the algorithm described below in pseudo code, by adding missing
	* namespace declaration attributes and adding or changing namespace prefixes, updates
	* the replacement tree of EntityReference nodes,normalizes attribute values, etc.
	*
	* @param node   Modified node or null. If node is returned, we need
	*               to normalize again starting on the node returned.
	* @return  the normalized Node
	*/
	@:overload private function normalizeNode(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:final private function expandEntityRef(parent : org.w3c.dom.Node, reference : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function namespaceFixUp(element : com.sun.org.apache.xerces.internal.dom.ElementImpl, attributes : com.sun.org.apache.xerces.internal.dom.AttributeMap) : Void;
	
	/**
	* Adds a namespace attribute or replaces the value of existing namespace
	* attribute with the given prefix and value for URI.
	* In case prefix is empty will add/update default namespace declaration.
	*
	* @param prefix
	* @param uri
	* @exception IOException
	*/
	@:overload @:final private function addNamespaceDecl(prefix : String, uri : String, element : com.sun.org.apache.xerces.internal.dom.ElementImpl) : Void;
	
	/**
	* Check if CDATA section is well-formed
	* @param datavalue
	* @param isXML11Version = true if XML 1.1
	*/
	@:overload @:final public static function isCDataWF(errorHandler : org.w3c.dom.DOMErrorHandler, error : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl, locator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl, datavalue : String, isXML11Version : Bool) : Void;
	
	/**
	* NON-DOM: check for valid XML characters as per the XML version
	* @param datavalue
	* @param isXML11Version = true if XML 1.1
	*/
	@:overload @:final public static function isXMLCharWF(errorHandler : org.w3c.dom.DOMErrorHandler, error : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl, locator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl, datavalue : String, isXML11Version : Bool) : Void;
	
	/**
	* NON-DOM: check if value of the comment is well-formed
	* @param datavalue
	* @param isXML11Version = true if XML 1.1
	*/
	@:overload @:final public static function isCommentWF(errorHandler : org.w3c.dom.DOMErrorHandler, error : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl, locator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl, datavalue : String, isXML11Version : Bool) : Void;
	
	/** NON-DOM: check if attribute value is well-formed
	* @param attributes
	* @param a
	* @param value
	*/
	@:overload @:final public static function isAttrValueWF(errorHandler : org.w3c.dom.DOMErrorHandler, error : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl, locator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl, attributes : org.w3c.dom.NamedNodeMap, a : org.w3c.dom.Attr, value : String, xml11Version : Bool) : Void;
	
	/**
	* Reports a DOM error to the user handler.
	*
	* If the error is fatal, the processing will be always aborted.
	*/
	@:overload @:final public static function reportDOMError(errorHandler : org.w3c.dom.DOMErrorHandler, error : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl, locator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl, message : String, severity : java.StdTypes.Int16, type : String) : Void;
	
	@:overload @:final private function updateQName(node : org.w3c.dom.Node, qname : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	/**
	* The start of the document.
	*
	* @param locator  The document locator, or null if the document
	*                 location cannot be reported during the parsing
	*                 of this document. However, it is <em>strongly</em>
	*                 recommended that a locator be supplied that can
	*                 at least report the system identifier of the
	*                 document.
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
	*
	* @param augs     Additional information that may include infoset augmentations
	* @exception XNIException
	*                   Thrown by handler to signal an error.
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
	* @param augs       Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of the DOCTYPE line in the document.
	*
	* @param rootElement
	*                 The name of the root element.
	* @param publicId The public identifier if an external DTD or null
	*                 if the external DTD is specified using SYSTEM.
	* @param systemId The system identifier if an external DTD, null
	*                 otherwise.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text   The text in the comment.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by application to signal an error.
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
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs       Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs       Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	
	/**
	* Character content.
	*
	* @param text   The content.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
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
	* @param text   The ignorable whitespace.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs    Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Sets the document source. */
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	/** Returns the document source. */
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	
}
@:native('com$sun$org$apache$xerces$internal$dom$DOMNormalizer$XMLAttributesProxy') extern class DOMNormalizer_XMLAttributesProxy implements com.sun.org.apache.xerces.internal.xni.XMLAttributes
{
	private var fAttributes : com.sun.org.apache.xerces.internal.dom.AttributeMap;
	
	private var fDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl;
	
	private var fElement : com.sun.org.apache.xerces.internal.dom.ElementImpl;
	
	private var fAugmentations(default, null) : java.util.Vector<Dynamic>;
	
	@:overload public function setAttributes(attributes : com.sun.org.apache.xerces.internal.dom.AttributeMap, doc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, elem : com.sun.org.apache.xerces.internal.dom.ElementImpl) : Void;
	
	/**
	* This method adds default declarations
	* @see com.sun.org.apache.xerces.internal.xni.XMLAttributes#addAttribute(QName, String, String)
	*/
	@:overload public function addAttribute(qname : com.sun.org.apache.xerces.internal.xni.QName, attrType : String, attrValue : String) : Int;
	
	@:overload public function removeAllAttributes() : Void;
	
	@:overload public function removeAttributeAt(attrIndex : Int) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getIndex(qName : String) : Int;
	
	@:overload public function getIndex(uri : String, localPart : String) : Int;
	
	@:overload public function setName(attrIndex : Int, attrName : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function getName(attrIndex : Int, attrName : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function getPrefix(index : Int) : String;
	
	@:overload public function getURI(index : Int) : String;
	
	@:overload public function getLocalName(index : Int) : String;
	
	@:overload public function getQName(index : Int) : String;
	
	@:overload public function getQualifiedName(index : Int) : com.sun.org.apache.xerces.internal.xni.QName;
	
	@:overload public function setType(attrIndex : Int, attrType : String) : Void;
	
	@:overload public function getType(index : Int) : String;
	
	@:overload public function getType(qName : String) : String;
	
	@:overload public function getType(uri : String, localName : String) : String;
	
	@:overload public function setValue(attrIndex : Int, attrValue : String) : Void;
	
	@:overload public function setValue(attrIndex : Int, attrValue : String, value : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	@:overload public function getValue(index : Int) : String;
	
	@:overload public function getValue(qName : String) : String;
	
	@:overload public function getValue(uri : String, localName : String) : String;
	
	@:overload public function setNonNormalizedValue(attrIndex : Int, attrValue : String) : Void;
	
	@:overload public function getNonNormalizedValue(attrIndex : Int) : String;
	
	@:overload public function setSpecified(attrIndex : Int, specified : Bool) : Void;
	
	@:overload public function isSpecified(attrIndex : Int) : Bool;
	
	@:overload public function getAugmentations(attributeIndex : Int) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	@:overload public function getAugmentations(uri : String, localPart : String) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	@:overload public function getAugmentations(qName : String) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Sets the augmentations of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param augs      The augmentations.
	*/
	@:overload public function setAugmentations(attrIndex : Int, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
