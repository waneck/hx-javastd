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
extern class DTDGrammar implements com.sun.org.apache.xerces.internal.xni.XMLDTDHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler implements com.sun.org.apache.xerces.internal.impl.validation.EntityState implements com.sun.org.apache.xerces.internal.xni.grammars.Grammar
{
	/** Top level scope (-1). */
	@:public @:static @:final public static var TOP_LEVEL_SCOPE(default, null) : Int;
	
	@:protected private var fDTDSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	@:protected private var fDTDContentModelSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	/** Current element index. */
	@:protected private var fCurrentElementIndex : Int;
	
	/** Current attribute index. */
	@:protected private var fCurrentAttributeIndex : Int;
	
	/** fReadingExternalDTD */
	@:protected private var fReadingExternalDTD : Bool;
	
	@:protected private var fGrammarDescription : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDDescription;
	
	/** Temporary Attribute decl. */
	@:protected @:final private var fAttributeDecl(default, null) : com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl;
	
	/** Default constructor. */
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, desc : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDDescription) : Void;
	
	@:overload @:public public function getGrammarDescription() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	/**
	* Returns true if the specified element declaration is external.
	*
	* @param elementDeclIndex The element declaration index.
	*/
	@:overload @:public public function getElementDeclIsExternal(elementDeclIndex : Int) : Bool;
	
	/**
	* Returns true if the specified attribute declaration is external.
	*
	* @param attributeDeclIndex Attribute declaration index.
	*/
	@:overload @:public public function getAttributeDeclIsExternal(attributeDeclIndex : Int) : Bool;
	
	@:overload @:public public function getAttributeDeclIndex(elementDeclIndex : Int, attributeDeclName : String) : Int;
	
	/**
	* The start of the DTD.
	*
	* @param locator  The document locator, or null if the document
	*                 location cannot be reported during the parsing of
	*                 the document DTD. However, it is <em>strongly</em>
	*                 recommended that a locator be supplied that can
	*                 at least report the base system identifier of the
	*                 DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies of the start of an entity. The DTD has the
	* pseudo-name of "[dtd]" and parameter entity names start with '%'.
	* <p>
	* <strong>Note:</strong> Since the DTD is an entity, the handler
	* will be notified of the start of the DTD entity by calling the
	* startParameterEntity method with the entity name "[dtd]" <em>before</em> calling
	* the startDTD method.
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
	@:overload @:public public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endParameterEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD external subset.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endExternalSubset(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An element declaration.
	*
	* @param name         The name of the element.
	* @param contentModel The element content model.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function elementDecl(name : String, contentModel : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param nonNormalizedDefaultValue  The attribute default value with no normalization
	*                      performed, or null if no default value is specified.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An external entity declaration.
	*
	* @param name     The name of the entity. Parameter entity names start
	*                 with '%', whereas the name of a general entity is just
	*                 the entity name.
	* @param identifier    An object containing all location information
	*                      pertinent to this external entity declaration.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An unparsed entity declaration.
	*
	* @param name     The name of the entity.
	* @param identifier    An object containing all location information
	*                      pertinent to this entity.
	* @param notation The name of the notation.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A notation declaration
	*
	* @param name     The name of the notation.
	* @param identifier    An object containing all location information
	*                      pertinent to this notation.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	@:overload @:public public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
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
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload @:public public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an attribute list.
	*
	* @param elementName The name of the element that this attribute
	*                    list is associated with.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startAttlist(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an attribute list.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endAttlist(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a conditional section.
	*
	* @param type The type of the conditional section. This value will
	*             either be CONDITIONAL_INCLUDE or CONDITIONAL_IGNORE.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see XMLDTDHandler#CONDITIONAL_INCLUDE
	* @see XMLDTDHandler#CONDITIONAL_IGNORE
	*/
	@:overload @:public public function startConditional(type : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Characters within an IGNORE conditional section.
	*
	* @param text The ignored text.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*/
	@:overload @:public public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a conditional section.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endConditional(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	@:overload @:public public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startContentModel(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A start of either a mixed or children content model. A mixed
	* content model will immediately be followed by a call to the
	* <code>pcdata()</code> method. A children content model will
	* contain additional groups and/or elements.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #empty
	*/
	@:overload @:public public function startGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The appearance of "#PCDATA" within a group signifying a
	* mixed content model. This method will be the first called
	* following the content model's <code>startGroup()</code>.
	*
	*@param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #startGroup
	*/
	@:overload @:public public function pcdata(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A referenced element in a mixed or children content model.
	*
	* @param elementName The name of the referenced element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function element(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The separator between choices or sequences of a mixed or children
	* content model.
	*
	* @param separator The type of children separator.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#SEPARATOR_CHOICE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#SEPARATOR_SEQUENCE
	*/
	@:overload @:public public function separator(separator : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The occurrence count for a child in a children content model or
	* for the mixed content model group.
	*
	* @param occurrence The occurrence count for the last element
	*                   or group.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ZERO_OR_ONE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ZERO_OR_MORE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ONE_OR_MORE
	*/
	@:overload @:public public function occurrence(occurrence : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a group for mixed or children content models.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of ANY.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #empty
	* @see #startGroup
	*/
	@:overload @:public public function any(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of EMPTY.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #startGroup
	*/
	@:overload @:public public function empty(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a content model.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endContentModel(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Returns true if this grammar is namespace aware. */
	@:overload @:public public function isNamespaceAware() : Bool;
	
	/** Returns the symbol table. */
	@:overload @:public public function getSymbolTable() : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/**
	* Returns the index of the first element declaration. This index
	* is then used to query more information about the element declaration.
	*
	* @see #getNextElementDeclIndex
	* @see #getElementDecl
	*/
	@:overload @:public public function getFirstElementDeclIndex() : Int;
	
	/**
	* Returns the next index of the element declaration following the
	* specified element declaration.
	*
	* @param elementDeclIndex The element declaration index.
	*/
	@:overload @:public public function getNextElementDeclIndex(elementDeclIndex : Int) : Int;
	
	/**
	* getElementDeclIndex
	*
	* @param elementDeclName
	*
	* @return index of the elementDeclName in scope
	*/
	@:overload @:public public function getElementDeclIndex(elementDeclName : String) : Int;
	
	/** Returns the element decl index.
	* @param elementDeclQName qualilfied name of the element
	*/
	@:overload @:public public function getElementDeclIndex(elementDeclQName : com.sun.org.apache.xerces.internal.xni.QName) : Int;
	
	/** make separate function for getting contentSpecType of element.
	* we can avoid setting of the element values.
	*/
	@:overload @:public public function getContentSpecType(elementIndex : Int) : java.StdTypes.Int16;
	
	/**
	* getElementDecl
	*
	* @param elementDeclIndex
	* @param elementDecl The values of this structure are set by this call.
	*
	* @return True if find the element, False otherwise.
	*/
	@:overload @:public public function getElementDecl(elementDeclIndex : Int, elementDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl) : Bool;
	
	/**
	* getFirstAttributeDeclIndex
	*
	* @param elementDeclIndex
	*
	* @return index of the first attribute for element declaration elementDeclIndex
	*/
	@:overload @:public public function getFirstAttributeDeclIndex(elementDeclIndex : Int) : Int;
	
	/**
	* getNextAttributeDeclIndex
	*
	* @param attributeDeclIndex
	*
	* @return index of the next attribute of the attribute at attributeDeclIndex
	*/
	@:overload @:public public function getNextAttributeDeclIndex(attributeDeclIndex : Int) : Int;
	
	/**
	* getAttributeDecl
	*
	* @param attributeDeclIndex
	* @param attributeDecl The values of this structure are set by this call.
	*
	* @return true if getAttributeDecl was able to fill in the value of attributeDecl
	*/
	@:overload @:public public function getAttributeDecl(attributeDeclIndex : Int, attributeDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl) : Bool;
	
	/**
	* Returns whether the given attribute is of type CDATA or not
	*
	* @param elName The element name.
	* @param atName The attribute name.
	*
	* @return true if the attribute is of type CDATA
	*/
	@:overload @:public public function isCDATAAttribute(elName : com.sun.org.apache.xerces.internal.xni.QName, atName : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* getEntityDeclIndex
	*
	* @param entityDeclName
	*
	* @return the index of the EntityDecl
	*/
	@:overload @:public public function getEntityDeclIndex(entityDeclName : String) : Int;
	
	/**
	* getEntityDecl
	*
	* @param entityDeclIndex
	* @param entityDecl
	*
	* @return true if getEntityDecl was able to fill entityDecl with the contents of the entity
	* with index entityDeclIndex
	*/
	@:overload @:public public function getEntityDecl(entityDeclIndex : Int, entityDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLEntityDecl) : Bool;
	
	/**
	* getNotationDeclIndex
	*
	* @param notationDeclName
	*
	* @return the index if found a notation with the name, otherwise -1.
	*/
	@:overload @:public public function getNotationDeclIndex(notationDeclName : String) : Int;
	
	/**
	* getNotationDecl
	*
	* @param notationDeclIndex
	* @param notationDecl
	*
	* @return return true of getNotationDecl can fill notationDecl with information about
	* the notation at notationDeclIndex.
	*/
	@:overload @:public public function getNotationDecl(notationDeclIndex : Int, notationDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLNotationDecl) : Bool;
	
	/**
	* getContentSpec
	*
	* @param contentSpecIndex
	* @param contentSpec
	*
	* @return true if find the requested contentSpec node, false otherwise
	*/
	@:overload @:public public function getContentSpec(contentSpecIndex : Int, contentSpec : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec) : Bool;
	
	/**
	* Returns the index to the content spec for the given element
	* declaration, or <code>-1</code> if the element declaration
	* index was invalid.
	*/
	@:overload @:public public function getContentSpecIndex(elementDeclIndex : Int) : Int;
	
	/**
	* getContentSpecAsString
	*
	* @param elementDeclIndex
	*
	* @return String
	*/
	@:overload @:public public function getContentSpecAsString(elementDeclIndex : Int) : String;
	
	@:overload @:public public function printElements() : Void;
	
	@:overload @:public public function printAttributes(elementDeclIndex : Int) : Void;
	
	/**
	* Adds the content spec to the given element declaration.
	*/
	@:overload @:protected private function addContentSpecToElement(elementDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl) : Void;
	
	/**
	* getElementContentModelValidator
	*
	* @param elementDeclIndex
	*
	* @return its ContentModelValidator if any.
	*/
	@:overload @:protected private function getElementContentModelValidator(elementDeclIndex : Int) : com.sun.org.apache.xerces.internal.impl.dtd.models.ContentModelValidator;
	
	@:overload @:protected private function createElementDecl() : Int;
	
	@:overload @:protected private function setElementDecl(elementDeclIndex : Int, elementDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl) : Void;
	
	@:overload @:protected private function putElementNameMapping(name : com.sun.org.apache.xerces.internal.xni.QName, scope : Int, elementDeclIndex : Int) : Void;
	
	@:overload @:protected private function setFirstAttributeDeclIndex(elementDeclIndex : Int, newFirstAttrIndex : Int) : Void;
	
	@:overload @:protected private function setContentSpecIndex(elementDeclIndex : Int, contentSpecIndex : Int) : Void;
	
	@:overload @:protected private function createAttributeDecl() : Int;
	
	@:overload @:protected private function setAttributeDecl(elementDeclIndex : Int, attributeDeclIndex : Int, attributeDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl) : Void;
	
	@:overload @:protected private function createContentSpec() : Int;
	
	@:overload @:protected private function setContentSpec(contentSpecIndex : Int, contentSpec : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec) : Void;
	
	@:overload @:protected private function createEntityDecl() : Int;
	
	@:overload @:protected private function setEntityDecl(entityDeclIndex : Int, entityDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLEntityDecl) : Void;
	
	@:overload @:protected private function createNotationDecl() : Int;
	
	@:overload @:protected private function setNotationDecl(notationDeclIndex : Int, notationDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLNotationDecl) : Void;
	
	/**
	* Create an XMLContentSpec for a single non-leaf
	*
	* @param nodeType the type of XMLContentSpec to create - from XMLContentSpec.CONTENTSPECNODE_*
	* @param nodeValue handle to an XMLContentSpec
	* @return handle to the newly create XMLContentSpec
	*/
	@:overload @:protected private function addContentSpecNode(nodeType : java.StdTypes.Int16, nodeValue : String) : Int;
	
	/**
	* create an XMLContentSpec for a leaf
	*
	* @param   elementName  the name (Element) for the node
	* @return handle to the newly create XMLContentSpec
	*/
	@:overload @:protected private function addUniqueLeafNode(elementName : String) : Int;
	
	/**
	* Create an XMLContentSpec for a two child leaf
	*
	* @param nodeType the type of XMLContentSpec to create - from XMLContentSpec.CONTENTSPECNODE_*
	* @param leftNodeIndex handle to an XMLContentSpec
	* @param rightNodeIndex handle to an XMLContentSpec
	* @return handle to the newly create XMLContentSpec
	*/
	@:overload @:protected private function addContentSpecNode(nodeType : java.StdTypes.Int16, leftNodeIndex : Int, rightNodeIndex : Int) : Int;
	
	/** Initialize content model stack. */
	@:overload @:protected private function initializeContentModelStack() : Void;
	
	@:overload @:public public function isEntityDeclared(name : String) : Bool;
	
	@:overload @:public public function isEntityUnparsed(name : String) : Bool;
	
	
}
/**
* Children list for <code>contentSpecTree</code> method.
*
* @xerces.internal
*
* @author Eric Ye, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$dtd$DTDGrammar$ChildrenList') @:internal extern class DTDGrammar_ChildrenList
{
	/** Length. */
	@:public public var length : Int;
	
	/** Left and right children names. */
	@:public public var qname : java.NativeArray<com.sun.org.apache.xerces.internal.xni.QName>;
	
	/** Left and right children types. */
	@:public public var type : java.NativeArray<Int>;
	
	@:overload @:public public function new() : Void;
	
	
}
/**
* A simple Hashtable implementation that takes a tuple (String, String)
* as the key and a int as value.
*
* @xerces.internal
*
* @author Eric Ye, IBM
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$dtd$DTDGrammar$QNameHashtable') extern class DTDGrammar_QNameHashtable
{
	/** Associates the given value with the specified key tuple. */
	@:overload @:public public function put(key : String, value : Int) : Void;
	
	/** Returns the value associated with the specified key tuple. */
	@:overload @:public public function get(key : String) : Int;
	
	
}
