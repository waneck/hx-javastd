package com.sun.xml.internal.stream.dtd.nonvalidating;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DTDGrammar
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
	
	/** Temporary Attribute decl. */
	@:protected private var fAttributeDecl : com.sun.xml.internal.stream.dtd.nonvalidating.XMLAttributeDecl;
	
	/** Default constructor. */
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
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
	@:overload @:public public function getElementDecl(elementDeclIndex : Int, elementDecl : com.sun.xml.internal.stream.dtd.nonvalidating.XMLElementDecl) : Bool;
	
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
	@:overload @:public public function getAttributeDecl(attributeDeclIndex : Int, attributeDecl : com.sun.xml.internal.stream.dtd.nonvalidating.XMLAttributeDecl) : Bool;
	
	/**
	* Returns whether the given attribute is of type CDATA or not
	*
	* @param elName The element name.
	* @param atName The attribute name.
	*
	* @return true if the attribute is of type CDATA
	*/
	@:overload @:public public function isCDATAAttribute(elName : com.sun.org.apache.xerces.internal.xni.QName, atName : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	@:overload @:public public function printElements() : Void;
	
	@:overload @:public public function printAttributes(elementDeclIndex : Int) : Void;
	
	@:overload @:protected private function createElementDecl() : Int;
	
	@:overload @:protected private function setElementDecl(elementDeclIndex : Int, elementDecl : com.sun.xml.internal.stream.dtd.nonvalidating.XMLElementDecl) : Void;
	
	@:overload @:protected private function setFirstAttributeDeclIndex(elementDeclIndex : Int, newFirstAttrIndex : Int) : Void;
	
	@:overload @:protected private function createAttributeDecl() : Int;
	
	@:overload @:protected private function setAttributeDecl(elementDeclIndex : Int, attributeDeclIndex : Int, attributeDecl : com.sun.xml.internal.stream.dtd.nonvalidating.XMLAttributeDecl) : Void;
	
	@:overload @:public public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public public function getNotationDecls() : java.util.List<Dynamic>;
	
	@:overload @:public public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
/**
* A simple Hashtable implementation that takes a tuple (String, String)
* as the key and a int as value.
*
* @author Eric Ye, IBM
* @author Andy Clark, IBM
*/
@:native('com$sun$xml$internal$stream$dtd$nonvalidating$DTDGrammar$QNameHashtable') extern class DTDGrammar_QNameHashtable
{
	@:public @:static @:final public static var UNIQUE_STRINGS(default, null) : Bool;
	
	/** Associates the given value with the specified key tuple. */
	@:overload @:public public function put(key : String, value : Int) : Void;
	
	/** Returns the value associated with the specified key tuple. */
	@:overload @:public public function get(key : String) : Int;
	
	/** Returns a hash value for the specified symbol. */
	@:overload @:protected private function hash(symbol : String) : Int;
	
	
}
