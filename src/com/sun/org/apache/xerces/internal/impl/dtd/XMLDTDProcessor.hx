package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2002 The Apache Software Foundation.
* All rights reserved.
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
extern class XMLDTDProcessor implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLDTDFilter implements com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelFilter
{
	/** Feature identifier: validation. */
	private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: notify character references. */
	private static var NOTIFY_CHAR_REFS(default, null) : String;
	
	/** Feature identifier: warn on duplicate attdef */
	private static var WARN_ON_DUPLICATE_ATTDEF(default, null) : String;
	
	/** Feature identifier: warn on undeclared element referenced in content model. */
	private static var WARN_ON_UNDECLARED_ELEMDEF(default, null) : String;
	
	private static var PARSER_SETTINGS(default, null) : String;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	private static var GRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: validator . */
	private static var DTD_VALIDATOR(default, null) : String;
	
	/** Validation. */
	private var fValidation : Bool;
	
	/** Validation against only DTD */
	private var fDTDValidation : Bool;
	
	/** warn on duplicate attribute definition, this feature works only when validation is true */
	private var fWarnDuplicateAttdef : Bool;
	
	/** warn on undeclared element referenced in content model, this feature only works when valiation is true */
	private var fWarnOnUndeclaredElemdef : Bool;
	
	/** Symbol table. */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Grammar bucket. */
	private var fGrammarBucket : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammarBucket;
	
	private var fValidator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	private var fLocale : java.util.Locale;
	
	/** DTD handler. */
	private var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/** DTD source. */
	private var fDTDSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	/** DTD content model handler. */
	private var fDTDContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/** DTD content model source. */
	private var fDTDContentModelSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	/** DTD Grammar. */
	private var fDTDGrammar : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
	
	/** True if in an ignore conditional section of the DTD. */
	private var fInDTDIgnore : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
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
	
	@:overload private function reset() : Void;
	
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
	
	/**
	* Sets the DTD handler.
	*
	* @param dtdHandler The DTD handler.
	*/
	@:overload public function setDTDHandler(dtdHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	/**
	* Returns the DTD handler.
	*
	* @return The DTD handler.
	*/
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/**
	* Sets the DTD content model handler.
	*
	* @param dtdContentModelHandler The DTD content model handler.
	*/
	@:overload public function setDTDContentModelHandler(dtdContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler) : Void;
	
	/**
	* Gets the DTD content model handler.
	*
	* @return dtdContentModelHandler The DTD content model handler.
	*/
	@:overload public function getDTDContentModelHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/**
	* The start of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endExternalSubset(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Check standalone entity reference.
	* Made static to make common between the validator and loader.
	*
	* @param name
	*@param grammar    grammar to which entity belongs
	* @param tempEntityDecl    empty entity declaration to put results in
	* @param errorReporter     error reporter to send errors to
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload private static function checkStandaloneEntityRef(name : String, grammar : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar, tempEntityDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLEntityDecl, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs   Additional information that may include infoset augmentations
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
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startParameterEntity call.
	* <p>
	* <strong>Note:</strong> This method is only called for external
	* parameter entities referenced in the DTD.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function endParameterEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	*                      pertinent to this external entity.
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
	
	@:overload public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	@:overload public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
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
	
	@:overload private function isValidNmtoken(nmtoken : String) : Bool;
	
	@:overload private function isValidName(name : String) : Bool;
	
	
}
