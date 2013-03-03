package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class AbstractDOMParser extends com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser
{
	/** Feature id: namespace. */
	@:protected @:static @:final private static var NAMESPACES(default, null) : String;
	
	/** Feature id: create entity ref nodes. */
	@:protected @:static @:final private static var CREATE_ENTITY_REF_NODES(default, null) : String;
	
	/** Feature id: include comments. */
	@:protected @:static @:final private static var INCLUDE_COMMENTS_FEATURE(default, null) : String;
	
	/** Feature id: create cdata nodes. */
	@:protected @:static @:final private static var CREATE_CDATA_NODES_FEATURE(default, null) : String;
	
	/** Feature id: include ignorable whitespace. */
	@:protected @:static @:final private static var INCLUDE_IGNORABLE_WHITESPACE(default, null) : String;
	
	/** Feature id: defer node expansion. */
	@:protected @:static @:final private static var DEFER_NODE_EXPANSION(default, null) : String;
	
	/** Property id: document class name. */
	@:protected @:static @:final private static var DOCUMENT_CLASS_NAME(default, null) : String;
	
	@:protected @:static @:final private static var CURRENT_ELEMENT_NODE(default, null) : String;
	
	/** Default document class name. */
	@:protected @:static @:final private static var DEFAULT_DOCUMENT_CLASS_NAME(default, null) : String;
	
	@:protected @:static @:final private static var CORE_DOCUMENT_CLASS_NAME(default, null) : String;
	
	@:protected @:static @:final private static var PSVI_DOCUMENT_CLASS_NAME(default, null) : String;
	
	/** DOM L3 error handler */
	@:protected private var fErrorHandler : com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
	
	/** True if inside DTD. */
	@:protected private var fInDTD : Bool;
	
	/** Create entity reference nodes. */
	@:protected private var fCreateEntityRefNodes : Bool;
	
	/** Include ignorable whitespace. */
	@:protected private var fIncludeIgnorableWhitespace : Bool;
	
	/** Include Comments. */
	@:protected private var fIncludeComments : Bool;
	
	/** Create cdata nodes. */
	@:protected private var fCreateCDATANodes : Bool;
	
	/** The document. */
	@:protected private var fDocument : org.w3c.dom.Document;
	
	/** The default Xerces document implementation, if used. */
	@:protected private var fDocumentImpl : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl;
	
	/** Whether to store PSVI information in DOM tree. */
	@:protected private var fStorePSVI : Bool;
	
	/** The document class name to use. */
	@:protected private var fDocumentClassName : String;
	
	/** The document type node. */
	@:protected private var fDocumentType : org.w3c.dom.DocumentType;
	
	/** Current node. */
	@:protected private var fCurrentNode : org.w3c.dom.Node;
	
	@:protected private var fCurrentCDATASection : org.w3c.dom.CDATASection;
	
	@:protected private var fCurrentEntityDecl : com.sun.org.apache.xerces.internal.dom.EntityImpl;
	
	@:protected private var fDeferredEntityDecl : Int;
	
	/** Character buffer */
	@:protected @:final private var fStringBuilder(default, null) : java.lang.StringBuilder;
	
	/** Internal subset buffer. */
	@:protected private var fInternalSubset : java.lang.StringBuilder;
	
	@:protected private var fDeferNodeExpansion : Bool;
	
	@:protected private var fNamespaceAware : Bool;
	
	@:protected private var fDeferredDocumentImpl : com.sun.org.apache.xerces.internal.dom.DeferredDocumentImpl;
	
	@:protected private var fDocumentIndex : Int;
	
	@:protected private var fDocumentTypeIndex : Int;
	
	@:protected private var fCurrentNodeIndex : Int;
	
	@:protected private var fCurrentCDATASectionIndex : Int;
	
	/** True if inside DTD external subset. */
	@:protected private var fInDTDExternalSubset : Bool;
	
	/** Root element node. */
	@:protected private var fRoot : org.w3c.dom.Node;
	
	/** True if inside CDATA section. */
	@:protected private var fInCDATASection : Bool;
	
	/** True if saw the first chunk of characters*/
	@:protected private var fFirstChunk : Bool;
	
	/** LSParserFilter: specifies that element with given QNAME and all its children
	* must be rejected */
	@:protected private var fFilterReject : Bool;
	
	/** Base uri stack*/
	@:protected @:final private var fBaseURIStack(default, null) : java.util.Stack<Dynamic>;
	
	/** LSParserFilter: tracks the element depth within a rejected subtree. */
	@:protected private var fRejectedElementDepth : Int;
	
	/** LSParserFilter: store depth of skipped elements */
	@:protected private var fSkippedElemStack : java.util.Stack<Dynamic>;
	
	/** LSParserFilter: true if inside entity reference */
	@:protected private var fInEntityRef : Bool;
	
	@:protected private var fDOMFilter : org.w3c.dom.ls.LSParserFilter;
	
	/** Default constructor. */
	@:overload @:protected private function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* This method retrieves the name of current document class.
	*/
	@:overload @:protected private function getDocumentClassName() : String;
	
	/**
	* This method allows the programmer to decide which document
	* factory to use when constructing the DOM tree. However, doing
	* so will lose the functionality of the default factory. Also,
	* a document class other than the default will lose the ability
	* to defer node expansion on the DOM tree produced.
	*
	* @param documentClassName The fully qualified class name of the
	*                      document factory to use when constructing
	*                      the DOM tree.
	*
	* @see #getDocumentClassName
	* @see #DEFAULT_DOCUMENT_CLASS_NAME
	*/
	@:overload @:protected private function setDocumentClassName(documentClassName : String) : Void;
	
	/** Returns the DOM document object. */
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	/**
	* Drops all references to the last DOM which was built by this parser.
	*/
	@:overload @:public @:final public function dropDocumentReferences() : Void;
	
	/**
	* Resets the parser state.
	*
	* @throws SAXException Thrown on initialization error.
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
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
	@:overload @:public override public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param augs       Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs       Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload @:public override public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param augs       Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the document.
	*
	* @param locator The system identifier of the entity if the entity
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
	@:overload @:public override public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload @:public override public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element. If the document specifies the start element
	* by using an empty tag, then the startElement method will immediately
	* be followed by the endElement method, with no intervening methods.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload @:public override public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload @:public override public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Record baseURI information for the Element (by adding xml:base attribute)
	* or for the ProcessingInstruction (by setting a baseURI field)
	* Non deferred DOM.
	*
	* @param node
	*/
	@:overload @:protected @:final private function handleBaseURI(node : org.w3c.dom.Node) : Void;
	
	/**
	*
	* Record baseURI information for the Element (by adding xml:base attribute)
	* or for the ProcessingInstruction (by setting a baseURI field)
	* Deferred DOM.
	*
	* @param node
	*/
	@:overload @:protected @:final private function handleBaseURI(node : Int) : Void;
	
	/**
	* The start of the DTD.
	*
	* @param locator  The document locator, or null if the document
	*                 location cannot be reported during the parsing of
	*                 the document DTD. However, it is <em>strongly</em>
	*                 recommended that a locator be supplied that can
	*                 at least report the base system identifier of the
	*                 DTD.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a conditional section.
	*
	* @param type The type of the conditional section. This value will
	*             either be CONDITIONAL_INCLUDE or CONDITIONAL_IGNORE.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #CONDITIONAL_INCLUDE
	* @see #CONDITIONAL_IGNORE
	*/
	@:overload @:public override public function startConditional(type : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a conditional section.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endConditional(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endExternalSubset(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An internal entity declaration.
	*
	* @param name The name of the entity. Parameter entity names start with
	*             '%', whereas the name of a general entity is just the
	*             entity name.
	* @param text The value of the entity.
	* @param nonNormalizedText The non-normalized value of the entity. This
	*             value contains the same sequence of characters that was in
	*             the internal entity declaration, without any entity
	*             references expanded.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An external entity declaration.
	*
	* @param name     The name of the entity. Parameter entity names start
	*                 with '%', whereas the name of a general entity is just
	*                 the entity name.
	* @param identifier    An object containing all location information
	*                      pertinent to this notation.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies of the start of a parameter entity. The parameter
	* entity name start with a '%' character.
	*
	* @param name     The name of the parameter entity.
	* @param identifier The resource identifier.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal parameter entities).
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of a parameter entity. Parameter entity
	* names begin with a '%' character.
	*
	* @param name The name of the parameter entity.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endParameterEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An unparsed entity declaration.
	*
	* @param name     The name of the entity.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param notation The name of the notation.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A notation declaration
	*
	* @param name     The name of the notation.
	* @param identifier    An object containing all location information
	*                      pertinent to this notation.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Characters within an IGNORE conditional section.
	*
	* @param text The ignored text.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An element declaration.
	*
	* @param name         The name of the element.
	* @param contentModel The element content model.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function elementDecl(name : String, contentModel : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An attribute declaration.
	*
	* @param elementName   The name of the element that this attribute
	*                      is associated with.
	* @param attributeName The name of the attribute.
	* @param type          The attribute type. This value will be one of
	*                      the following: "CDATA", "ENTITY", "ENTITIES",
	*                      "ENUMERATION", "ID", "IDREF", "IDREFS",
	*                      "NMTOKEN", "NMTOKENS", or "NOTATION".
	* @param enumeration   If the type has the value "ENUMERATION" or
	*                      "NOTATION", this array holds the allowed attribute
	*                      values; otherwise, this array is null.
	* @param defaultType   The attribute default type. This value will be
	*                      one of the following: "#FIXED", "#IMPLIED",
	*                      "#REQUIRED", or null.
	* @param defaultValue  The attribute default value, or null if no
	*                      default value is specified.
	* @param nonNormalizedDefaultValue  The attribute default value with no normalization
	*                      performed, or null if no default value is specified.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an attribute list.
	*
	* @param elementName The name of the element that this attribute
	*                    list is associated with.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startAttlist(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an attribute list.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endAttlist(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:protected private function createElementNode(element : com.sun.org.apache.xerces.internal.xni.QName) : org.w3c.dom.Element;
	
	@:overload @:protected private function createAttrNode(attrQName : com.sun.org.apache.xerces.internal.xni.QName) : org.w3c.dom.Attr;
	
	/*
	* When the first characters() call is received, the data is stored in
	* a new Text node. If right after the first characters() we receive another chunk of data,
	* the data from the Text node, following the new characters are appended
	* to the fStringBuffer and the text node data is set to empty.
	*
	* This function is called when the state is changed and the
	* data must be appended to the current node.
	*
	* Note: if DOMFilter is set, you must make sure that if Node is skipped,
	* or removed fFistChunk must be set to true, otherwise some data can be lost.
	*
	*/
	@:overload @:protected private function setCharacterData(sawChars : Bool) : Void;
	
	/**
	* @see org.w3c.dom.ls.LSParser#abort()
	*/
	@:overload @:public public function abort() : Void;
	
	
}
/**
* If the user stops the process, this exception will be thrown.
*/
@:native('com$sun$org$apache$xerces$internal$parsers$AbstractDOMParser$Abort') @:internal extern class AbstractDOMParser_Abort extends java.lang.RuntimeException
{
	@:overload @:public override public function fillInStackTrace() : java.lang.Throwable;
	
	
}
