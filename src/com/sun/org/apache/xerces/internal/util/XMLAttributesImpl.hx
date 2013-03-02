package com.sun.org.apache.xerces.internal.util;
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
extern class XMLAttributesImpl implements com.sun.org.apache.xerces.internal.xni.XMLAttributes implements com.sun.xml.internal.stream.XMLBufferListener
{
	/** Default table size. */
	private static var TABLE_SIZE(default, null) : Int;
	
	/**
	* Threshold at which an instance is treated
	* as a large attribute list.
	*/
	private static var SIZE_LIMIT(default, null) : Int;
	
	/** Namespaces. */
	private var fNamespaces : Bool;
	
	/**
	* Usage count for the attribute table view.
	* Incremented each time all attributes are removed
	* when the attribute table view is in use.
	*/
	private var fLargeCount : Int;
	
	/** Attribute count. */
	private var fLength : Int;
	
	/** Attribute information. */
	private var fAttributes : java.NativeArray<com.sun.org.apache.xerces.internal.util.XMLAttributesImpl.XMLAttributesImpl_Attribute>;
	
	/**
	* Hashtable of attribute information.
	* Provides an alternate view of the attribute specification.
	*/
	private var fAttributeTableView : java.NativeArray<com.sun.org.apache.xerces.internal.util.XMLAttributesImpl.XMLAttributesImpl_Attribute>;
	
	/**
	* Tracks whether each chain in the hash table is stale
	* with respect to the current state of this object.
	* A chain is stale if its state is not the same as the number
	* of times the attribute table view has been used.
	*/
	private var fAttributeTableViewChainState : java.NativeArray<Int>;
	
	/**
	* Actual number of buckets in the table view.
	*/
	private var fTableViewBuckets : Int;
	
	/**
	* Indicates whether the table view contains consistent data.
	*/
	private var fIsTableViewConsistent : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* @param tableSize initial size of table view
	*/
	@:overload public function new(tableSize : Int) : Void;
	
	/**
	* Sets whether namespace processing is being performed. This state
	* is needed to return the correct value from the getLocalName method.
	*
	* @param namespaces True if namespace processing is turned on.
	*
	* @see #getLocalName
	*/
	@:overload public function setNamespaces(namespaces : Bool) : Void;
	
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
	* @param name  The attribute name.
	* @param type  The attribute type. The type name is determined by
	*                  the type specified for this attribute in the DTD.
	*                  For example: "CDATA", "ID", "NMTOKEN", etc. However,
	*                  attributes of type enumeration will have the type
	*                  value specified as the pipe ('|') separated list of
	*                  the enumeration values prefixed by an open
	*                  parenthesis and suffixed by a close parenthesis.
	*                  For example: "(true|false)".
	* @param value The attribute value.
	*
	* @return Returns the attribute index.
	*
	* @see #setNonNormalizedValue
	* @see #setSpecified
	*/
	@:overload public function addAttribute(name : com.sun.org.apache.xerces.internal.xni.QName, type : String, value : String) : Int;
	
	@:overload public function addAttribute(name : com.sun.org.apache.xerces.internal.xni.QName, type : String, value : String, valueCache : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
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
	* Return the number of attributes in the list.
	*
	* <p>Once you know the number of attributes, you can iterate
	* through the list.</p>
	*
	* @return The number of attributes in the list.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Look up an attribute's type by index.
	*
	* <p>The attribute type is one of the strings "CDATA", "ID",
	* "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY", "ENTITIES",
	* or "NOTATION" (always in upper case).</p>
	*
	* <p>If the parser has not read a declaration for the attribute,
	* or if the parser does not report attribute types, then it must
	* return the value "CDATA" as stated in the XML 1.0 Recommentation
	* (clause 3.3.3, "Attribute-Value Normalization").</p>
	*
	* <p>For an enumerated attribute that is not a notation, the
	* parser will report the type as "NMTOKEN".</p>
	*
	* @param index The attribute index (zero-based).
	* @return The attribute's type as a string, or null if the
	*         index is out of range.
	* @see #getLength
	*/
	@:overload public function getType(index : Int) : String;
	
	/**
	* Look up an attribute's type by XML 1.0 qualified name.
	*
	* <p>See {@link #getType(int) getType(int)} for a description
	* of the possible types.</p>
	*
	* @param qname The XML 1.0 qualified name.
	* @return The attribute type as a string, or null if the
	*         attribute is not in the list or if qualified names
	*         are not available.
	*/
	@:overload public function getType(qname : String) : String;
	
	/**
	* Look up an attribute's value by index.
	*
	* <p>If the attribute value is a list of tokens (IDREFS,
	* ENTITIES, or NMTOKENS), the tokens will be concatenated
	* into a single string with each token separated by a
	* single space.</p>
	*
	* @param index The attribute index (zero-based).
	* @return The attribute's value as a string, or null if the
	*         index is out of range.
	* @see #getLength
	*/
	@:overload public function getValue(index : Int) : String;
	
	/**
	* Look up an attribute's value by XML 1.0 qualified name.
	*
	* <p>See {@link #getValue(int) getValue(int)} for a description
	* of the possible values.</p>
	*
	* @param qname The XML 1.0 qualified name.
	* @return The attribute value as a string, or null if the
	*         attribute is not in the list or if qualified names
	*         are not available.
	*/
	@:overload public function getValue(qname : String) : String;
	
	/**
	* Return the name of an attribute in this list (by position).
	*
	* <p>The names must be unique: the SAX parser shall not include the
	* same attribute twice.  Attributes without values (those declared
	* #IMPLIED without a value specified in the start tag) will be
	* omitted from the list.</p>
	*
	* <p>If the attribute name has a namespace prefix, the prefix
	* will still be attached.</p>
	*
	* @param i The index of the attribute in the list (starting at 0).
	* @return The name of the indexed attribute, or null
	*         if the index is out of range.
	* @see #getLength
	*/
	@:overload public function getName(index : Int) : String;
	
	/**
	* Look up the index of an attribute by XML 1.0 qualified name.
	*
	* @param qName The qualified (prefixed) name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(qName : String) : Int;
	
	/**
	* Look up the index of an attribute by Namespace name.
	*
	* @param uri The Namespace URI, or null if
	*        the name has no Namespace URI.
	* @param localName The attribute's local name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(uri : String, localPart : String) : Int;
	
	/**
	* Look up the index of an attribute by local name only,
	* ignoring its namespace.
	*
	* @param localName The attribute's local name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndexByLocalName(localPart : String) : Int;
	
	/**
	* Look up an attribute's local name by index.
	*
	* @param index The attribute index (zero-based).
	* @return The local name, or the empty string if Namespace
	*         processing is not being performed, or null
	*         if the index is out of range.
	* @see #getLength
	*/
	@:overload public function getLocalName(index : Int) : String;
	
	/**
	* Look up an attribute's XML 1.0 qualified name by index.
	*
	* @param index The attribute index (zero-based).
	* @return The XML 1.0 qualified name, or the empty string
	*         if none is available, or null if the index
	*         is out of range.
	* @see #getLength
	*/
	@:overload public function getQName(index : Int) : String;
	
	@:overload public function getQualifiedName(index : Int) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* Look up an attribute's type by Namespace name.
	*
	* <p>See {@link #getType(int) getType(int)} for a description
	* of the possible types.</p>
	*
	* @param uri The Namespace URI, or null if the
	*        name has no Namespace URI.
	* @param localName The local name of the attribute.
	* @return The attribute type as a string, or null if the
	*         attribute is not in the list or if Namespace
	*         processing is not being performed.
	*/
	@:overload public function getType(uri : String, localName : String) : String;
	
	/**
	* Look up the index of an attribute by XML 1.0 qualified name.
	* <p>
	* <strong>Note:</strong>
	* This method uses reference comparison, and thus should
	* only be used internally. We cannot use this method in any
	* code exposed to users as they may not pass in unique strings.
	*
	* @param qName The qualified (prefixed) name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndexFast(qName : String) : Int;
	
	/**
	* Adds an attribute. The attribute's non-normalized value of the
	* attribute will have the same value as the attribute value until
	* set using the <code>setNonNormalizedValue</code> method. Also,
	* the added attribute will be marked as specified in the XML instance
	* document unless set otherwise using the <code>setSpecified</code>
	* method.
	* <p>
	* This method differs from <code>addAttribute</code> in that it
	* does not check if an attribute of the same name already exists
	* in the list before adding it. In order to improve performance
	* of namespace processing, this method allows uniqueness checks
	* to be deferred until all the namespace information is available
	* after the entire attribute specification has been read.
	* <p>
	* <strong>Caution:</strong> If this method is called it should
	* not be mixed with calls to <code>addAttribute</code> unless
	* it has been determined that all the attribute names are unique.
	*
	* @param name the attribute name
	* @param type the attribute type
	* @param value the attribute value
	*
	* @see #setNonNormalizedValue
	* @see #setSpecified
	* @see #checkDuplicatesNS
	*/
	@:overload public function addAttributeNS(name : com.sun.org.apache.xerces.internal.xni.QName, type : String, value : String) : Void;
	
	/**
	* Checks for duplicate expanded names (local part and namespace name
	* pairs) in the attribute specification. If a duplicate is found its
	* name is returned.
	* <p>
	* This should be called once all the in-scope namespaces for the element
	* enclosing these attributes is known, and after all the attributes
	* have gone through namespace binding.
	*
	* @return the name of a duplicate attribute found in the search,
	* otherwise null.
	*/
	@:overload public function checkDuplicatesNS() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* Look up the index of an attribute by Namespace name.
	* <p>
	* <strong>Note:</strong>
	* This method uses reference comparison, and thus should
	* only be used internally. We cannot use this method in any
	* code exposed to users as they may not pass in unique strings.
	*
	* @param uri The Namespace URI, or null if
	*        the name has no Namespace URI.
	* @param localName The attribute's local name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndexFast(uri : String, localPart : String) : Int;
	
	/**
	* Returns the position in the table view
	* where the given attribute name would be hashed.
	*
	* @param qname the attribute name
	* @return the position in the table view where the given attribute
	* would be hashed
	*/
	@:overload private function getTableViewBucket(qname : String) : Int;
	
	/**
	* Returns the position in the table view
	* where the given attribute name would be hashed.
	*
	* @param localpart the local part of the attribute
	* @param uri the namespace name of the attribute
	* @return the position in the table view where the given attribute
	* would be hashed
	*/
	@:overload private function getTableViewBucket(localpart : String, uri : String) : Int;
	
	/**
	* Purges all elements from the table view.
	*/
	@:overload private function cleanTableView() : Void;
	
	/**
	* Prepares the table view of the attributes list for use.
	*/
	@:overload private function prepareTableView() : Void;
	
	/**
	* Prepares the table view of the attributes list for use,
	* and populates it with the attributes which have been
	* previously read.
	*/
	@:overload private function prepareAndPopulateTableView() : Void;
	
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
	* @return The Namespace URI
	* @see #getLength
	*/
	@:overload public function getURI(index : Int) : String;
	
	/**
	* Look up an attribute's value by Namespace name and
	* Local name. If Namespace is null, ignore namespace
	* comparison. If Namespace is "", treat the name as
	* having no Namespace URI.
	*
	* <p>See {@link #getValue(int) getValue(int)} for a description
	* of the possible values.</p>
	*
	* @param uri The Namespace URI, or null namespaces are ignored.
	* @param localName The local name of the attribute.
	* @return The attribute value as a string, or null if the
	*         attribute is not in the list.
	*/
	@:overload public function getValue(uri : String, localName : String) : String;
	
	/**
	* Look up an augmentations by Namespace name.
	*
	* @param uri The Namespace URI, or null if the
	* @param localName The local name of the attribute.
	* @return Augmentations
	*/
	@:overload public function getAugmentations(uri : String, localName : String) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
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
	* Look up an augmentations by attributes index.
	*
	* @param attributeIndex The attribute index.
	* @return Augmentations
	*/
	@:overload public function getAugmentations(attributeIndex : Int) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Sets the augmentations of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param augs      The augmentations.
	*/
	@:overload public function setAugmentations(attrIndex : Int, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Sets the uri of the attribute at the specified index.
	*
	* @param attrIndex The attribute index.
	* @param uri       Namespace uri
	*/
	@:overload public function setURI(attrIndex : Int, uri : String) : Void;
	
	@:overload public function setSchemaId(attrIndex : Int, schemaId : Bool) : Void;
	
	@:overload public function getSchemaId(index : Int) : Bool;
	
	@:overload public function getSchemaId(qname : String) : Bool;
	
	@:overload public function getSchemaId(uri : String, localName : String) : Bool;
	
	/**
	* This method will be invoked by XMLEntityReader before ScannedEntities buffer
	* is reloaded.
	*/
	@:overload public function refresh() : Void;
	
	@:overload public function refresh(pos : Int) : Void;
	
	
}
/**
* Attribute information.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$util$XMLAttributesImpl$Attribute') @:internal extern class XMLAttributesImpl_Attribute
{
	/** Name. */
	public var name : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Type. */
	public var type : String;
	
	/** Value. */
	public var value : String;
	
	/** This will point to the ScannedEntities buffer.*/
	public var xmlValue : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/** Non-normalized value. */
	public var nonNormalizedValue : String;
	
	/** Specified. */
	public var specified : Bool;
	
	/** Schema ID type. */
	public var schemaId : Bool;
	
	/**
	* Augmentations information for this attribute.
	* XMLAttributes has no knowledge if any augmentations
	* were attached to Augmentations.
	*/
	public var augs : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/** Pointer to the next attribute in the chain. **/
	public var next : com.sun.org.apache.xerces.internal.util.XMLAttributesImpl.XMLAttributesImpl_Attribute;
	
	
}
