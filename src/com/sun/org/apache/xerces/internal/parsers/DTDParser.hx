package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class DTDParser extends com.sun.org.apache.xerces.internal.parsers.XMLGrammarParser implements com.sun.org.apache.xerces.internal.xni.XMLDTDHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
{
	/** fDTDScanner */
	private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/**
	*
	*
	* @param symbolTable
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* getDTDGrammar
	*
	* @return the grammar created by this parser
	*/
	@:overload public function getDTDGrammar() : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
	
	/**
	* This method notifies of the start of an entity. The DTD has the
	* pseudo-name of "[dtd]" and parameter entity names start with '%'.
	* <p>
	* <strong>Note:</strong> Since the DTD is an entity, the handler
	* will be notified of the start of the DTD entity by calling the
	* startEntity method with the entity name "[dtd]" <em>before</em> calling
	* the startDTD method.
	*
	* @param name     The name of the entity.
	* @param publicId The public identifier of the entity if the entity
	*                 is external, null otherwise.
	* @param systemId The system identifier of the entity if the entity
	*                 is external, null otherwise.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal parameter entities).
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startEntity(name : String, publicId : String, systemId : String, encoding : String) : Void;
	
	/**
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startEntity call.
	* <p>
	* <strong>Note:</strong> This method is only called for external
	* parameter entities referenced in the DTD.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String) : Void;
	
	/**
	* The start of the DTD.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the external subset.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the external subset.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endExternalSubset(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An element declaration.
	*
	* @param name         The name of the element.
	* @param contentModel The element content model.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function elementDecl(name : String, contentModel : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an attribute list.
	*
	* @param elementName The name of the element that this attribute
	*                    list is associated with.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startAttlist(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param enumeration   If the type has the value "ENUMERATION", this
	*                      array holds the allowed attribute values;
	*                      otherwise, this array is null.
	* @param defaultType   The attribute default type. This value will be
	*                      one of the following: "#FIXED", "#IMPLIED",
	*                      "#REQUIRED", or null.
	* @param defaultValue  The attribute default value, or null if no
	*                      default value is specified.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an attribute list.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endAttlist(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An external entity declaration.
	*
	* @param name     The name of the entity. Parameter entity names start
	*                 with '%', whereas the name of a general entity is just
	*                 the entity name.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An unparsed entity declaration.
	*
	* @param name     The name of the entity.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param notation The name of the notation.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A notation declaration
	*
	* @param name     The name of the notation.
	* @param identifier    An object containing all location information
	*                      pertinent to this notation.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a conditional section.
	*
	* @param type The type of the conditional section. This value will
	*             either be CONDITIONAL_INCLUDE or CONDITIONAL_IGNORE.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see XMLDTDHandler#CONDITIONAL_INCLUDE
	* @see XMLDTDHandler#CONDITIONAL_IGNORE
	*/
	@:overload public function startConditional(type : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a conditional section.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endConditional(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endDTD(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The DTD has the pseudo-name
	* of "[dtd]" and parameter entity names start with '%'.
	* <p>
	* <strong>Note:</strong> Since the DTD is an entity, the handler
	* will be notified of the end of the DTD entity by calling the
	* endEntity method with the entity name "[dtd]" <em>after</em> calling
	* the endDTD method.
	*
	* @param name The name of the entity.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endEntity(name : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param type        The content model type.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_EMPTY
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_ANY
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_MIXED
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function startContentModel(elementName : String, type : java.StdTypes.Int16) : Void;
	
	/**
	* A referenced element in a mixed content model. If the mixed content
	* model only allows text content, then this method will not be called
	* for that model. However, if this method is called for a mixed
	* content model, then the zero or more occurrence count is implied.
	* <p>
	* <strong>Note:</strong> This method is only called after a call to
	* the startContentModel method where the type is TYPE_MIXED.
	*
	* @param elementName The name of the referenced element.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_MIXED
	*/
	@:overload public function mixedElement(elementName : String) : Void;
	
	/**
	* The start of a children group.
	* <p>
	* <strong>Note:</strong> This method is only called after a call to
	* the startContentModel method where the type is TYPE_CHILDREN.
	* <p>
	* <strong>Note:</strong> Children groups can be nested and have
	* associated occurrence counts.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function childrenStartGroup() : Void;
	
	/**
	* A referenced element in a children content model.
	*
	* @param elementName The name of the referenced element.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function childrenElement(elementName : String) : Void;
	
	/**
	* The separator between choices or sequences of a children content
	* model.
	* <p>
	* <strong>Note:</strong> This method is only called after a call to
	* the startContentModel method where the type is TYPE_CHILDREN.
	*
	* @param separator The type of children separator.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see XMLDTDContentModelHandler#SEPARATOR_CHOICE
	* @see XMLDTDContentModelHandler#SEPARATOR_SEQUENCE
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function childrenSeparator(separator : java.StdTypes.Int16) : Void;
	
	/**
	* The occurrence count for a child in a children content model.
	* <p>
	* <strong>Note:</strong> This method is only called after a call to
	* the startContentModel method where the type is TYPE_CHILDREN.
	*
	* @param occurrence The occurrence count for the last children element
	*                   or children group.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see XMLDTDContentModelHandler#OCCURS_ZERO_OR_ONE
	* @see XMLDTDContentModelHandler#OCCURS_ZERO_OR_MORE
	* @see XMLDTDContentModelHandler#OCCURS_ONE_OR_MORE
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function childrenOccurrence(occurrence : java.StdTypes.Int16) : Void;
	
	/**
	* The end of a children group.
	* <p>
	* <strong>Note:</strong> This method is only called after a call to
	* the startContentModel method where the type is TYPE_CHILDREN.
	*
	* @see com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl#TYPE_CHILDREN
	*/
	@:overload public function childrenEndGroup() : Void;
	
	/**
	* The end of a content model.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endContentModel() : Void;
	
	/**
	* Characters within an IGNORE conditional section.
	*
	* @param text The ignored text.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The separator between choices or sequences of a mixed or children
	* content model.
	*
	* @param separator The type of children separator.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #SEPARATOR_CHOICE
	* @see #SEPARATOR_SEQUENCE
	*/
	@:overload public function separator(separator : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	@:overload public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	@:overload public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	@:overload public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	/**
	* This method notifies the end of a parameter entity. Parameter entity
	* names begin with a '%' character.
	*
	* @param name The name of the parameter entity.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endParameterEntity(name : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a content model.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endContentModel(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of ANY.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #empty
	* @see #startGroup
	*/
	@:overload public function any(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The appearance of "#PCDATA" within a group signifying a
	* mixed content model. This method will be the first called
	* following the content model's <code>startGroup()</code>.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #startGroup
	*/
	@:overload public function pcdata(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A start of either a mixed or children content model. A mixed
	* content model will immediately be followed by a call to the
	* <code>pcdata()</code> method. A children content model will
	* contain additional groups and/or elements.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #empty
	*/
	@:overload public function startGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A referenced element in a mixed or children content model.
	*
	* @param elementName The name of the referenced element.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function element(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startEntity call.
	* <p>
	* <strong>Note:</strong> This method is only called for external
	* parameter entities referenced in the DTD.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startContentModel(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a group for mixed or children content models.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of EMPTY.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @see #any
	* @see #startGroup
	*/
	@:overload public function empty(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The occurrence count for a child in a children content model or
	* for the mixed content model group.
	*
	* @param occurrence The occurrence count for the last element
	*                   or group.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #OCCURS_ZERO_OR_ONE
	* @see #OCCURS_ZERO_OR_MORE
	* @see #OCCURS_ONE_OR_MORE
	*/
	@:overload public function occurrence(occurrence : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
