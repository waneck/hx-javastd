package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class AbstractXMLDocumentParser extends com.sun.org.apache.xerces.internal.parsers.XMLParser implements com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
{
	/** True if inside DTD. */
	private var fInDTD : Bool;
	
	/** Document source*/
	private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/** DTD source*/
	private var fDTDSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	/** DTD content model source*/
	private var fDTDContentModelSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	/**
	* Constructs a document parser using the default symbol table
	* and grammar pool.
	*/
	@:overload private function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
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
	* @param augs   Additional information that may include infoset augmentations
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
	* @param augs   Additional information that may include infoset augmentations
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
	* @param augs   Additional information that may include infoset augmentations
	*                    otherwise.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element. If the document specifies the start element
	* by using an empty tag, then the startElement method will immediately
	* be followed by the endElement method, with no intervening methods.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	* @param augs   Additional information that may include infoset augmentations
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
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	
	/**
	* The end of the document.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the start of an entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name     The name of the entity.
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
	* This method notifies the end of an entity.
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
	
	/** Sets the document source */
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	/** Returns the document source */
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
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
	@:overload public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the DTD external subset.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD external subset.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endExternalSubset(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the start of an entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name     The name of the entity.
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
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity.
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
	@:overload public function endParameterEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Characters within an IGNORE conditional section.
	*
	* @param text The ignored text.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function elementDecl(name : String, contentModel : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function startAttlist(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an attribute list.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endAttlist(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function startConditional(type : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a conditional section.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endConditional(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	@:overload public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startContentModel(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of ANY.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #empty
	* @see #startGroup
	*/
	@:overload public function any(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of EMPTY.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #startGroup
	*/
	@:overload public function empty(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A start of either a mixed or children content model. A mixed
	* content model will immediately be followed by a call to the
	* <code>pcdata()</code> method. A children content model will
	* contain additional groups and/or elements.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #empty
	*/
	@:overload public function startGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The appearance of "#PCDATA" within a group signifying a
	* mixed content model. This method will be the first called
	* following the content model's <code>startGroup()</code>.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #startGroup
	*/
	@:overload public function pcdata(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A referenced element in a mixed or children content model.
	*
	* @param elementName The name of the referenced element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function element(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The separator between choices or sequences of a mixed or children
	* content model.
	*
	* @param separator The type of children separator.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #SEPARATOR_CHOICE
	* @see #SEPARATOR_SEQUENCE
	*/
	@:overload public function separator(separator : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The occurrence count for a child in a children content model or
	* for the mixed content model group.
	*
	* @param occurrence The occurrence count for the last element
	*                   or group.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #OCCURS_ZERO_OR_ONE
	* @see #OCCURS_ZERO_OR_MORE
	* @see #OCCURS_ONE_OR_MORE
	*/
	@:overload public function occurrence(occurrence : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a group for mixed or children content models.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a content model.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endContentModel(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	@:overload public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	/**
	* reset all components before parsing
	*/
	@:overload override private function reset() : Void;
	
	
}
