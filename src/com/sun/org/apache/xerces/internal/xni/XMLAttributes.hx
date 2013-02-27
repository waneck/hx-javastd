package com.sun.org.apache.xerces.internal.xni;
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
/**
* The XMLAttributes interface defines a collection of attributes for
* an element. In the parser, the document source would scan the entire
* start element and collect the attributes. The attributes are
* communicated to the document handler in the startElement method.
* <p>
* The attributes are read-write so that subsequent stages in the document
* pipeline can modify the values or change the attributes that are
* propogated to the next stage.
*
* @see XMLDocumentHandler#startElement
*
* @author Andy Clark, IBM
*
*/
extern interface XMLAttributes
{
	/**
	* Adds an attribute. The attribute's non-normalized value of the
	* attribute will have the same value as the attribute value until
	* set using the <code>setNonNormalizedValue</code> method. Also,
	* the added attribute will be marked as specified in the XML instance
	* document unless set otherwise using the <code>setSpecified</code>
	* method.
	* <p>
	* <strong>Note:</strong> If an attribute of the same name already
	* exists, the old values for the attribute are replaced by the new
	* values.
	*
	* @param attrName  The attribute name.
	* @param attrType  The attribute type. The type name is determined by
	*                  the type specified for this attribute in the DTD.
	*                  For example: "CDATA", "ID", "NMTOKEN", etc. However,
	*                  attributes of type enumeration will have the type
	*                  value specified as the pipe ('|') separated list of
	*                  the enumeration values prefixed by an open
	*                  parenthesis and suffixed by a close parenthesis.
	*                  For example: "(true|false)".
	* @param attrValue The attribute value.
	*
	* @return Returns the attribute index.
	*
	* @see #setNonNormalizedValue
	* @see #setSpecified
	*/
	@:overload public function addAttribute(attrName : com.sun.org.apache.xerces.internal.xni.QName, attrType : String, attrValue : String) : Int;
	
	/**
	* Removes all of the attributes. This method will also remove all
	* entities associated to the attributes.
	*/
	@:overload public function removeAllAttributes() : Void;
	
	/**
	* Removes the attribute at the specified index.
	* <p>
	* <strong>Note:</strong> This operation changes the indexes of all
	* attributes following the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	*/
	@:overload public function removeAttributeAt(attrIndex : Int) : Void;
	
	/**
	* Returns the number of attributes in the list.
	* <p>
	* Once you know the number of attributes, you can iterate
	* through the list.
	*
	* @see #getURI(int)
	* @see #getLocalName(int)
	* @see #getQName(int)
	* @see #getType(int)
	* @see #getValue(int)
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Look up the index of an attribute by XML 1.0 qualified name.
	*
	* @param qName The qualified (prefixed) name.
	*
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(qName : String) : Int;
	
	/**
	* Look up the index of an attribute by Namespace name.
	*
	* @param uri       The Namespace URI, or the empty string if
	*                  the name has no Namespace URI.
	* @param localName The attribute's local name.
	*
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(uri : String, localPart : String) : Int;
	
	/**
	* Sets the name of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param attrName  The new attribute name.
	*/
	@:overload public function setName(attrIndex : Int, attrName : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	/**
	* Sets the fields in the given QName structure with the values
	* of the attribute name at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param attrName  The attribute name structure to fill in.
	*/
	@:overload public function getName(attrIndex : Int, attrName : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	/**
	* Returns the prefix of the attribute at the specified index.
	*
	* @param index The index of the attribute.
	*/
	@:overload public function getPrefix(index : Int) : String;
	
	/**
	* Look up an attribute's Namespace URI by index.
	*
	* @param index The attribute index (zero-based).
	*
	* @return The Namespace URI, or the empty string if none
	*         is available, or null if the index is out of
	*         range.
	*
	* @see #getLength
	*/
	@:overload public function getURI(index : Int) : String;
	
	/**
	* Look up an attribute's local name by index.
	*
	* @param index The attribute index (zero-based).
	*
	* @return The local name, or the empty string if Namespace
	*         processing is not being performed, or null
	*         if the index is out of range.
	*
	* @see #getLength
	*/
	@:overload public function getLocalName(index : Int) : String;
	
	/**
	* Look up an attribute's XML 1.0 qualified name by index.
	*
	* @param index The attribute index (zero-based).
	*
	* @return The XML 1.0 qualified name, or the empty string
	*         if none is available, or null if the index
	*         is out of range.
	*
	* @see #getLength
	*/
	@:overload public function getQName(index : Int) : String;
	
	@:overload public function getQualifiedName(index : Int) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* Sets the type of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param attrType  The attribute type. The type name is determined by
	*                  the type specified for this attribute in the DTD.
	*                  For example: "CDATA", "ID", "NMTOKEN", etc. However,
	*                  attributes of type enumeration will have the type
	*                  value specified as the pipe ('|') separated list of
	*                  the enumeration values prefixed by an open
	*                  parenthesis and suffixed by a close parenthesis.
	*                  For example: "(true|false)".
	*/
	@:overload public function setType(attrIndex : Int, attrType : String) : Void;
	
	/**
	* Look up an attribute's type by index.
	* <p>
	* The attribute type is one of the strings "CDATA", "ID",
	* "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY", "ENTITIES",
	* or "NOTATION" (always in upper case).
	* <p>
	* If the parser has not read a declaration for the attribute,
	* or if the parser does not report attribute types, then it must
	* return the value "CDATA" as stated in the XML 1.0 Recommentation
	* (clause 3.3.3, "Attribute-Value Normalization").
	* <p>
	* For an enumerated attribute that is not a notation, the
	* parser will report the type as "NMTOKEN".
	*
	* @param index The attribute index (zero-based).
	*
	* @return The attribute's type as a string, or null if the
	*         index is out of range.
	*
	* @see #getLength
	*/
	@:overload public function getType(index : Int) : String;
	
	/**
	* Look up an attribute's type by XML 1.0 qualified name.
	* <p>
	* See {@link #getType(int) getType(int)} for a description
	* of the possible types.
	*
	* @param qName The XML 1.0 qualified name.
	*
	* @return The attribute type as a string, or null if the
	*         attribute is not in the list or if qualified names
	*         are not available.
	*/
	@:overload public function getType(qName : String) : String;
	
	/**
	* Look up an attribute's type by Namespace name.
	* <p>
	* See {@link #getType(int) getType(int)} for a description
	* of the possible types.
	*
	* @param uri       The Namespace URI, or the empty String if the
	*                  name has no Namespace URI.
	* @param localName The local name of the attribute.
	*
	* @return The attribute type as a string, or null if the
	*         attribute is not in the list or if Namespace
	*         processing is not being performed.
	*/
	@:overload public function getType(uri : String, localName : String) : String;
	
	/**
	* Sets the value of the attribute at the specified index. This
	* method will overwrite the non-normalized value of the attribute.
	*
	* @param attrIndex The attribute index.
	* @param attrValue The new attribute value.
	*
	* @see #setNonNormalizedValue
	*/
	@:overload public function setValue(attrIndex : Int, attrValue : String) : Void;
	
	@:overload public function setValue(attrIndex : Int, attrValue : String, value : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* Look up an attribute's value by index.
	* <p>
	* If the attribute value is a list of tokens (IDREFS,
	* ENTITIES, or NMTOKENS), the tokens will be concatenated
	* into a single string with each token separated by a
	* single space.
	*
	* @param index The attribute index (zero-based).
	*
	* @return The attribute's value as a string, or null if the
	*         index is out of range.
	*
	* @see #getLength
	*/
	@:overload public function getValue(index : Int) : String;
	
	/**
	* Look up an attribute's value by XML 1.0 qualified name.
	* <p>
	* See {@link #getValue(int) getValue(int)} for a description
	* of the possible values.
	*
	* @param qName The XML 1.0 qualified name.
	*
	* @return The attribute value as a string, or null if the
	*         attribute is not in the list or if qualified names
	*         are not available.
	*/
	@:overload public function getValue(qName : String) : String;
	
	/**
	* Look up an attribute's value by Namespace name.
	* <p>
	* See {@link #getValue(int) getValue(int)} for a description
	* of the possible values.
	*
	* @param uri       The Namespace URI, or the empty String if the
	*                  name has no Namespace URI.
	* @param localName The local name of the attribute.
	*
	* @return The attribute value as a string, or null if the
	*         attribute is not in the list.
	*/
	@:overload public function getValue(uri : String, localName : String) : String;
	
	/**
	* Sets the non-normalized value of the attribute at the specified
	* index.
	*
	* @param attrIndex The attribute index.
	* @param attrValue The new non-normalized attribute value.
	*/
	@:overload public function setNonNormalizedValue(attrIndex : Int, attrValue : String) : Void;
	
	/**
	* Returns the non-normalized value of the attribute at the specified
	* index. If no non-normalized value is set, this method will return
	* the same value as the <code>getValue(int)</code> method.
	*
	* @param attrIndex The attribute index.
	*/
	@:overload public function getNonNormalizedValue(attrIndex : Int) : String;
	
	/**
	* Sets whether an attribute is specified in the instance document
	* or not.
	*
	* @param attrIndex The attribute index.
	* @param specified True if the attribute is specified in the instance
	*                  document.
	*/
	@:overload public function setSpecified(attrIndex : Int, specified : Bool) : Void;
	
	/**
	* Returns true if the attribute is specified in the instance document.
	*
	* @param attrIndex The attribute index.
	*/
	@:overload public function isSpecified(attrIndex : Int) : Bool;
	
	/**
	* Look up an augmentation by attribute's index.
	*
	* @param attributeIndex The attribute index.
	* @return Augmentations
	*/
	@:overload public function getAugmentations(attributeIndex : Int) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Look up an augmentation by namespace name.
	*
	* @param uri       The Namespace URI, or the empty string if
	*                  the name has no Namespace URI.
	* @param localPart
	* @return Augmentations
	*/
	@:overload public function getAugmentations(uri : String, localPart : String) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Look up an augmentation by XML 1.0 qualified name.
	* <p>
	*
	* @param qName The XML 1.0 qualified name.
	*
	* @return Augmentations
	*
	*/
	@:overload public function getAugmentations(qName : String) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Sets the augmentations of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param augs      The augmentations.
	*/
	@:overload public function setAugmentations(attrIndex : Int, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
