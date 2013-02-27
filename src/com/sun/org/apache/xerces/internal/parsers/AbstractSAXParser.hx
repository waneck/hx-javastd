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
extern class AbstractSAXParser extends com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser implements com.sun.org.apache.xerces.internal.xs.PSVIProvider implements org.xml.sax.Parser implements org.xml.sax.XMLReader
{
	/** Feature identifier: namespaces. */
	private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: namespace prefixes. */
	private static var NAMESPACE_PREFIXES(default, null) : String;
	
	/** Feature id: string interning. */
	private static var STRING_INTERNING(default, null) : String;
	
	/** Feature identifier: allow notation and unparsed entity events to be sent out of order. */
	private static var ALLOW_UE_AND_NOTATION_EVENTS(default, null) : String;
	
	/** Property id: lexical handler. */
	private static var LEXICAL_HANDLER(default, null) : String;
	
	/** Property id: declaration handler. */
	private static var DECLARATION_HANDLER(default, null) : String;
	
	/** Property id: DOM node. */
	private static var DOM_NODE(default, null) : String;
	
	/** Namespaces. */
	private var fNamespaces : Bool;
	
	/** Namespace prefixes. */
	private var fNamespacePrefixes : Bool;
	
	/** Lexical handler parameter entities. */
	private var fLexicalHandlerParameterEntities : Bool;
	
	/** Standalone document declaration. */
	private var fStandalone : Bool;
	
	/** Resolve DTD URIs. */
	private var fResolveDTDURIs : Bool;
	
	/** Use EntityResolver2. */
	private var fUseEntityResolver2 : Bool;
	
	/**
	* XMLNS URIs: Namespace declarations in the
	* http://www.w3.org/2000/xmlns/ namespace.
	*/
	private var fXMLNSURIs : Bool;
	
	/** Content handler. */
	private var fContentHandler : org.xml.sax.ContentHandler;
	
	/** Document handler. */
	private var fDocumentHandler : org.xml.sax.DocumentHandler;
	
	/** Namespace context */
	private var fNamespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** DTD handler. */
	private var fDTDHandler : org.xml.sax.DTDHandler;
	
	/** Decl handler. */
	private var fDeclHandler : org.xml.sax.ext.DeclHandler;
	
	/** Lexical handler. */
	private var fLexicalHandler : org.xml.sax.ext.LexicalHandler;
	
	private var fQName : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* validation and namespaces).
	*/
	private var fParseInProgress : Bool;
	
	private var fVersion : String;
	
	private var fDeclaredAttrs : com.sun.org.apache.xerces.internal.util.SymbolHash;
	
	/** Default constructor. */
	@:overload private function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* The start of the document.
	*
	* @param locator The document locator, or null if the document
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
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of an XMLDecl line in the document. If
	* present, this method will be called immediately following the
	* startDocument call.
	*
	* @param version    The XML version.
	* @param encoding   The IANA encoding name of the document, or null if
	*                   not specified.
	* @param standalone The standalone value, or null if not specified.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload override public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies of the start of an entity. The DTD has the
	* pseudo-name of "[dtd]" parameter entity names start with '%'; and
	* general entity names are just the entity name.
	* <p>
	* <strong>Note:</strong> Since the document is an entity, the handler
	* will be notified of the start of the document entity by calling the
	* startEntity method with the entity name "[xml]" <em>before</em> calling
	* the startDocument method. When exposing entity boundaries through the
	* SAX API, the document entity is never reported, however.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name     The name of the entity.
	* @param identifier The resource identifier.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal parameter entities).
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The DTD has the pseudo-name
	* of "[dtd]" parameter entity names start with '%'; and general entity
	* names are just the entity name.
	* <p>
	* <strong>Note:</strong> Since the document is an entity, the handler
	* will be notified of the end of the document entity by calling the
	* endEntity method with the entity name "[xml]" <em>after</em> calling
	* the endDocument method. When exposing entity boundaries through the
	* SAX API, the document entity is never reported, however.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name The name of the entity.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload override public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload override public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload override public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endExternalSubset(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies of the start of parameter entity. The DTD has the
	* pseudo-name of "[dtd]" parameter entity names start with '%'; and
	* general entity names are just the entity name.
	* <p>
	* <strong>Note:</strong> Since the document is an entity, the handler
	* will be notified of the start of the document entity by calling the
	* startEntity method with the entity name "[xml]" <em>before</em> calling
	* the startDocument method. When exposing entity boundaries through the
	* SAX API, the document entity is never reported, however.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
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
	@:overload override public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The DTD has the pseudo-name
	* of "[dtd]" parameter entity names start with '%'; and general entity
	* names are just the entity name.
	* <p>
	* <strong>Note:</strong> Since the document is an entity, the handler
	* will be notified of the end of the document entity by calling the
	* endEntity method with the entity name "[xml]" <em>after</em> calling
	* the endDocument method. When exposing entity boundaries through the
	* SAX API, the document entity is never reported, however.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name The name of the parameter entity.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endParameterEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An element declaration.
	*
	* @param name         The name of the element.
	* @param contentModel The element content model.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function elementDecl(name : String, contentModel : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	*
	* @param nonNormalizedDefaultValue  The attribute default value with no normalization
	*                      performed, or null if no default value is specified.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An external entity declaration.
	*
	* @param name     The name of the entity. Parameter entity names start
	*                 with '%', whereas the name of a general entity is just
	*                 the entity name.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An unparsed entity declaration.
	*
	* @param name     The name of the entity.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param notation The name of the notation.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload override public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Parses the input source specified by the given system identifier.
	* <p>
	* This method is equivalent to the following:
	* <pre>
	*     parse(new InputSource(systemId));
	* </pre>
	*
	* @param systemId The system identifier (URI).
	*
	* @exception org.xml.sax.SAXException Throws exception on SAX error.
	* @exception java.io.IOException Throws exception on i/o error.
	*/
	@:overload public function parse(systemId : String) : Void;
	
	/**
	* parse
	*
	* @param inputSource
	*
	* @exception org.xml.sax.SAXException
	* @exception java.io.IOException
	*/
	@:overload public function parse(inputSource : org.xml.sax.InputSource) : Void;
	
	/**
	* Sets the resolver used to resolve external entities. The EntityResolver
	* interface supports resolution of public and system identifiers.
	*
	* @param resolver The new entity resolver. Passing a null value will
	*                 uninstall the currently installed resolver.
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none
	*         has been registered.
	* @see #setEntityResolver
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Allow an application to register an error event handler.
	*
	* <p>If the application does not register an error handler, all
	* error events reported by the SAX parser will be silently
	* ignored; however, normal processing may not continue.  It is
	* highly recommended that all SAX applications implement an
	* error handler to avoid unexpected bugs.</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param errorHandler The error handler.
	* @see #getErrorHandler
	*/
	@:overload public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none
	*         has been registered.
	* @see #setErrorHandler
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception SAXException An exception thrown if the parser does not
	*                         support the specified locale.
	*
	* @see org.xml.sax.Parser
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Allow an application to register a DTD event handler.
	* <p>
	* If the application does not register a DTD handler, all DTD
	* events reported by the SAX parser will be silently ignored.
	* <p>
	* Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.
	*
	* @param dtdHandler The DTD handler.
	*

	* @see #getDTDHandler
	*/
	@:overload public function setDTDHandler(dtdHandler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Allow an application to register a document event handler.
	* <p>
	* If the application does not register a document handler, all
	* document events reported by the SAX parser will be silently
	* ignored (this is the default behaviour implemented by
	* HandlerBase).
	* <p>
	* Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.
	*
	* @param documentHandler The document handler.
	*/
	@:overload public function setDocumentHandler(documentHandler : org.xml.sax.DocumentHandler) : Void;
	
	/**
	* Allow an application to register a content event handler.
	* <p>
	* If the application does not register a content handler, all
	* content events reported by the SAX parser will be silently
	* ignored.
	* <p>
	* Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.
	*
	* @param contentHandler The content handler.
	*
	* @see #getContentHandler
	*/
	@:overload public function setContentHandler(contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Return the current content handler.
	*
	* @return The current content handler, or null if none
	*         has been registered.
	*
	* @see #setContentHandler
	*/
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Return the current DTD handler.
	*
	* @return The current DTD handler, or null if none
	*         has been registered.
	* @see #setDTDHandler
	*/
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Set the state of any feature in a SAX2 parser.  The parser
	* might not recognize the feature, and if it does recognize
	* it, it might not be able to fulfill the request.
	*
	* @param featureId The unique identifier (URI) of the feature.
	* @param state The requested state of the feature (true or false).
	*
	* @exception SAXNotRecognizedException If the
	*            requested feature is not known.
	* @exception SAXNotSupportedException If the
	*            requested feature is known, but the requested
	*            state is not supported.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Query the state of a feature.
	*
	* Query the current state of any feature in a SAX2 parser.  The
	* parser might not recognize the feature.
	*
	* @param featureId The unique identifier (URI) of the feature
	*                  being set.
	* @return The current state of the feature.
	* @exception org.xml.sax.SAXNotRecognizedException If the
	*            requested feature is not known.
	* @exception SAXNotSupportedException If the
	*            requested feature is known but not supported.
	*/
	@:overload override public function getFeature(featureId : String) : Bool;
	
	/**
	* Set the value of any property in a SAX2 parser.  The parser
	* might not recognize the property, and if it does recognize
	* it, it might not support the requested value.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @param value The value to which the property is being set.
	*
	* @exception SAXNotRecognizedException If the
	*            requested property is not known.
	* @exception SAXNotSupportedException If the
	*            requested property is known, but the requested
	*            value is not supported.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Query the value of a property.
	*
	* Return the current value of a property in a SAX2 parser.
	* The parser might not recognize the property.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @return The current value of the property.
	* @exception org.xml.sax.SAXNotRecognizedException If the
	*            requested property is not known.
	* @exception SAXNotSupportedException If the
	*            requested property is known but not supported.
	*/
	@:overload public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Set the DTD declaration event handler.
	* <p>
	* This method is the equivalent to the property:
	* <pre>
	* http://xml.org/sax/properties/declaration-handler
	* </pre>
	*
	* @param handler The new handler.
	*
	* @see #getDeclHandler
	* @see #setProperty
	*/
	@:overload private function setDeclHandler(handler : org.xml.sax.ext.DeclHandler) : Void;
	
	/**
	* Returns the DTD declaration event handler.
	*
	* @see #setDeclHandler
	*/
	@:overload private function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	/**
	* Set the lexical event handler.
	* <p>
	* This method is the equivalent to the property:
	* <pre>
	* http://xml.org/sax/properties/lexical-handler
	* </pre>
	*
	* @param handler lexical event handler
	*
	* @see #getLexicalHandler
	* @see #setProperty
	*/
	@:overload private function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**
	* Returns the lexical handler.
	*
	* @see #setLexicalHandler
	*/
	@:overload private function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Send startPrefixMapping events
	*/
	@:overload @:final private function startNamespaceMapping() : Void;
	
	/**
	* Send endPrefixMapping events
	*/
	@:overload @:final private function endNamespaceMapping() : Void;
	
	/**
	* Reset all components before parsing.
	*
	* @throws XNIException Thrown if an error occurs during initialization.
	*/
	@:overload override public function reset() : Void;
	
	@:overload public function getElementPSVI() : com.sun.org.apache.xerces.internal.xs.ElementPSVI;
	
	@:overload public function getAttributePSVI(index : Int) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	@:overload public function getAttributePSVIByName(uri : String, localname : String) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	
}
@:native('com$sun$org$apache$xerces$internal$parsers$AbstractSAXParser$LocatorProxy') extern class AbstractSAXParser_LocatorProxy implements org.xml.sax.ext.Locator2
{
	/** XML locator. */
	private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/** Constructs an XML locator proxy. */
	@:overload public function new(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator) : Void;
	
	/** Public identifier. */
	@:overload public function getPublicId() : String;
	
	/** System identifier. */
	@:overload public function getSystemId() : String;
	
	/** Line number. */
	@:overload public function getLineNumber() : Int;
	
	/** Column number. */
	@:overload public function getColumnNumber() : Int;
	
	@:overload public function getXMLVersion() : String;
	
	@:overload public function getEncoding() : String;
	
	
}
@:native('com$sun$org$apache$xerces$internal$parsers$AbstractSAXParser$AttributesProxy') extern class AbstractSAXParser_AttributesProxy implements org.xml.sax.AttributeList implements org.xml.sax.ext.Attributes2
{
	/** XML attributes. */
	private var fAttributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	/** Sets the XML attributes. */
	@:overload public function setAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getName(i : Int) : String;
	
	@:overload public function getQName(index : Int) : String;
	
	@:overload public function getURI(index : Int) : String;
	
	@:overload public function getLocalName(index : Int) : String;
	
	@:overload public function getType(i : Int) : String;
	
	@:overload public function getType(name : String) : String;
	
	@:overload public function getType(uri : String, localName : String) : String;
	
	@:overload public function getValue(i : Int) : String;
	
	@:overload public function getValue(name : String) : String;
	
	@:overload public function getValue(uri : String, localName : String) : String;
	
	@:overload public function getIndex(qName : String) : Int;
	
	@:overload public function getIndex(uri : String, localPart : String) : Int;
	
	@:overload public function isDeclared(index : Int) : Bool;
	
	@:overload public function isDeclared(qName : String) : Bool;
	
	@:overload public function isDeclared(uri : String, localName : String) : Bool;
	
	@:overload public function isSpecified(index : Int) : Bool;
	
	@:overload public function isSpecified(qName : String) : Bool;
	
	@:overload public function isSpecified(uri : String, localName : String) : Bool;
	
	
}
