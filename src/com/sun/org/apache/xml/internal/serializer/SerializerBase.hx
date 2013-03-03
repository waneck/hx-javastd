package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SerializerBase.java,v 1.5 2006/04/14 12:09:19 sunithareddy Exp $
*/
extern class SerializerBase implements com.sun.org.apache.xml.internal.serializer.SerializationHandler implements com.sun.org.apache.xml.internal.serializer.SerializerConstants
{
	/**
	* To fire off the end element trace event
	* @param name Name of element
	*/
	@:overload @:protected private function fireEndElem(name : String) : Void;
	
	/**
	* Report the characters trace event
	* @param chars  content of characters
	* @param start  starting index of characters to output
	* @param length  number of characters to output
	*/
	@:overload @:protected private function fireCharEvent(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* true if we still need to call startDocumentInternal()
	*/
	@:protected private var m_needToCallStartDocument : Bool;
	
	/** True if a trailing "]]>" still needs to be written to be
	* written out. Used to merge adjacent CDATA sections
	*/
	@:protected private var m_cdataTagOpen : Bool;
	
	/**
	* All the attributes of the current element, collected from
	* startPrefixMapping() calls, or addAddtribute() calls, or
	* from the SAX attributes in a startElement() call.
	*/
	@:protected private var m_attributes : com.sun.org.apache.xml.internal.serializer.AttributesImplSerializer;
	
	/**
	* Tells if we're in an EntityRef event.
	*/
	@:protected private var m_inEntityRef : Bool;
	
	/** This flag is set while receiving events from the external DTD */
	@:protected private var m_inExternalDTD : Bool;
	
	/**
	* True if standalone was specified.
	*/
	@:protected private var m_standaloneWasSpecified : Bool;
	
	/**
	* Determine if the output is a standalone.
	*/
	@:protected private var m_isStandalone : Bool;
	
	/**
	* Flag to tell if indenting (pretty-printing) is on.
	*/
	@:protected private var m_doIndent : Bool;
	
	/**
	* Amount to indent.
	*/
	@:protected private var m_indentAmount : Int;
	
	/**
	* Pairs of local names and corresponding URIs of CDATA sections. This list
	* comes from the cdata-section-elements attribute. Every second one is a
	* local name, and every other second one is the URI for the local name.
	*/
	@:protected private var m_cdataSectionElements : java.util.Vector<Dynamic>;
	
	/**
	* Namespace support, that keeps track of currently defined
	* prefix/uri mappings. As processed elements come and go, so do
	* the associated mappings for that element.
	*/
	@:protected private var m_prefixMap : com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
	
	/**
	* Handle for firing generate events.  This interface may be implemented
	* by the referenced transformer object.
	*/
	@:protected private var m_tracer : com.sun.org.apache.xml.internal.serializer.SerializerTrace;
	
	@:protected private var m_sourceLocator : javax.xml.transform.SourceLocator;
	
	/**
	* The writer to send output to. This field is only used in the ToStream
	* serializers, but exists here just so that the fireStartDoc() and
	* other fire... methods can flush this writer when tracing.
	*/
	@:protected private var m_writer : java.io.Writer;
	
	/**
	* A reference to "stack frame" corresponding to
	* the current element. Such a frame is pushed at a startElement()
	* and popped at an endElement(). This frame contains information about
	* the element, such as its namespace URI.
	*/
	@:protected private var m_elemContext : com.sun.org.apache.xml.internal.serializer.ElemContext;
	
	/**
	* A utility buffer for converting Strings passed to
	* character() methods to character arrays.
	* Reusing this buffer means not creating a new character array
	* everytime and it runs faster.
	*/
	@:protected private var m_charsBuff : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* A utility buffer for converting Strings passed to
	* attribute methods to character arrays.
	* Reusing this buffer means not creating a new character array
	* everytime and it runs faster.
	*/
	@:protected private var m_attrBuff : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected private var m_needToCallSetDocumentInfo : Bool;
	
	/**
	* Receive notification of a comment.
	*
	* @see ExtendedLexicalHandler#comment(String)
	*/
	@:overload @:public public function comment(data : String) : Void;
	
	/**
	* If at runtime, when the qname of the attribute is
	* known, another prefix is specified for the attribute, then we can
	* patch or hack the name with this method. For
	* a qname of the form "ns?:otherprefix:name", this function patches the
	* qname by simply ignoring "otherprefix".
	* TODO: This method is a HACK! We do not have access to the
	* XML file, it sometimes generates a NS prefix of the form "ns?" for
	* an attribute.
	*/
	@:overload @:protected private function patchName(qname : String) : String;
	
	/**
	* Returns the local name of a qualified name. If the name has no prefix,
	* then it works as the identity (SAX2).
	* @param qname the qualified name
	* @return the name, but excluding any prefix and colon.
	*/
	@:overload @:protected @:static private static function getLocalName(qname : String) : String;
	
	/**
	* Receive an object for locating the origin of SAX document events.
	*
	* @param locator An object that can return the location of any SAX document
	* event.
	*
	* Receive an object for locating the origin of SAX document events.
	*
	* <p>SAX parsers are strongly encouraged (though not absolutely
	* required) to supply a locator: if it does so, it must supply
	* the locator to the application by invoking this method before
	* invoking any of the other methods in the DocumentHandler
	* interface.</p>
	*
	* <p>The locator allows the application to determine the end
	* position of any document-related event, even if the parser is
	* not reporting an error.  Typically, the application will
	* use this information for reporting its own errors (such as
	* character content that does not match an application's
	* business rules).  The information returned by the locator
	* is probably not sufficient for use with a search engine.</p>
	*
	* <p>Note that the locator will return correct information only
	* during the invocation of the events in this interface.  The
	* application should not attempt to use it at any other time.</p>
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Adds the given attribute to the set of collected attributes , but only if
	* there is a currently open element.
	*
	* An element is currently open if a startElement() notification has
	* occured but the start of the element has not yet been written to the
	* output.  In the stream case this means that we have not yet been forced
	* to close the elements opening tag by another notification, such as a
	* character notification.
	*
	* @param uri the URI of the attribute
	* @param localName the local name of the attribute
	* @param rawName    the qualified name of the attribute
	* @param type the type of the attribute (probably CDATA)
	* @param value the value of the attribute
	* @param XSLAttribute true if this attribute is coming from an xsl:attriute element
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload @:public public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* Adds the given attribute to the set of attributes, even if there is
	* no currently open element. This is useful if a SAX startPrefixMapping()
	* should need to add an attribute before the element name is seen.
	*
	* @param uri the URI of the attribute
	* @param localName the local name of the attribute
	* @param rawName   the qualified name of the attribute
	* @param type the type of the attribute (probably CDATA)
	* @param value the value of the attribute
	* @param XSLAttribute true if this attribute is coming from an xsl:attribute element
	* @return true if the attribute was added,
	* false if an existing value was replaced.
	*/
	@:overload @:public public function addAttributeAlways(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Bool;
	
	/**
	*  Adds  the given attribute to the set of collected attributes,
	* but only if there is a currently open element.
	*
	* @param name the attribute's qualified name
	* @param value the value of the attribute
	*/
	@:overload @:public public function addAttribute(name : String, value : String) : Void;
	
	/**
	* Adds the given xsl:attribute to the set of collected attributes,
	* but only if there is a currently open element.
	*
	* @param name the attribute's qualified name (prefix:localName)
	* @param value the value of the attribute
	* @param uri the URI that the prefix of the name points to
	*/
	@:overload @:public public function addXSLAttribute(name : String, value : String, uri : String) : Void;
	
	/**
	* Add the given attributes to the currently collected ones. These
	* attributes are always added, regardless of whether on not an element
	* is currently open.
	* @param atts List of attributes to add to this list
	*/
	@:overload @:public public function addAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Return a {@link ContentHandler} interface into this serializer.
	* If the serializer does not support the {@link ContentHandler}
	* interface, it should return null.
	*
	* @return A {@link ContentHandler} interface into this serializer,
	*  or null if the serializer is not SAX 2 capable
	* @throws IOException An I/O exception occured
	*/
	@:overload @:public public function asContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Report the end of an entity.
	*
	* @param name The name of the entity that is ending.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	* @see #startEntity
	*/
	@:overload @:public public function endEntity(name : String) : Void;
	
	/**
	* Flush and close the underlying java.io.Writer. This method applies to
	* ToStream serializers, not ToSAXHandler serializers.
	* @see ToStream
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Initialize global variables
	*/
	@:overload @:protected private function initCDATA() : Void;
	
	/**
	* Returns the character encoding to be used in the output document.
	* @return the character encoding to be used in the output document.
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Sets the character encoding coming from the xsl:output encoding stylesheet attribute.
	* @param m_encoding the character encoding
	*/
	@:overload @:public public function setEncoding(m_encoding : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output omit-xml-declaration stylesheet attribute
	* @param b true if the XML declaration is to be omitted from the output
	* document.
	*/
	@:overload @:public public function setOmitXMLDeclaration(b : Bool) : Void;
	
	/**
	* @return true if the XML declaration is to be omitted from the output
	* document.
	*/
	@:overload @:public public function getOmitXMLDeclaration() : Bool;
	
	/**
	* Returns the previously set value of the value to be used as the public
	* identifier in the document type declaration (DTD).
	*
	*@return the public identifier to be used in the DOCTYPE declaration in the
	* output document.
	*/
	@:overload @:public public function getDoctypePublic() : String;
	
	/** Set the value coming from the xsl:output doctype-public stylesheet attribute.
	* @param doctypePublic the public identifier to be used in the DOCTYPE
	* declaration in the output document.
	*/
	@:overload @:public public function setDoctypePublic(doctypePublic : String) : Void;
	
	/**
	* Returns the previously set value of the value to be used
	* as the system identifier in the document type declaration (DTD).
	* @return the system identifier to be used in the DOCTYPE declaration in
	* the output document.
	*
	*/
	@:overload @:public public function getDoctypeSystem() : String;
	
	/** Set the value coming from the xsl:output doctype-system stylesheet attribute.
	* @param doctypeSystem the system identifier to be used in the DOCTYPE
	* declaration in the output document.
	*/
	@:overload @:public public function setDoctypeSystem(doctypeSystem : String) : Void;
	
	/** Set the value coming from the xsl:output doctype-public and doctype-system stylesheet properties
	* @param doctypeSystem the system identifier to be used in the DOCTYPE
	* declaration in the output document.
	* @param doctypePublic the public identifier to be used in the DOCTYPE
	* declaration in the output document.
	*/
	@:overload @:public public function setDoctype(doctypeSystem : String, doctypePublic : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output standalone stylesheet attribute.
	* @param standalone a value of "yes" indicates that the
	* <code>standalone</code> delaration is to be included in the output
	* document. This method remembers if the value was explicitly set using
	* this method, verses if the value is the default value.
	*/
	@:overload @:public public function setStandalone(standalone : String) : Void;
	
	/**
	* Sets the XSL standalone attribute, but does not remember if this is a
	* default or explicite setting.
	* @param standalone "yes" | "no"
	*/
	@:overload @:protected private function setStandaloneInternal(standalone : String) : Void;
	
	/**
	* Gets the XSL standalone attribute
	* @return a value of "yes" if the <code>standalone</code> delaration is to
	* be included in the output document.
	*  @see XSLOutputAttributes#getStandalone()
	*/
	@:overload @:public public function getStandalone() : String;
	
	/**
	* @return true if the output document should be indented to visually
	* indicate its structure.
	*/
	@:overload @:public public function getIndent() : Bool;
	
	/**
	* Gets the mediatype the media-type or MIME type associated with the output
	* document.
	* @return the mediatype the media-type or MIME type associated with the
	* output document.
	*/
	@:overload @:public public function getMediaType() : String;
	
	/**
	* Gets the version of the output format.
	* @return the version of the output format.
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* Sets the value coming from the xsl:output version attribute.
	* @param version the version of the output format.
	* @see SerializationHandler#setVersion(String)
	*/
	@:overload @:public public function setVersion(version : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output media-type stylesheet attribute.
	* @param mediaType the non-null media-type or MIME type associated with the
	* output document.
	* @see javax.xml.transform.OutputKeys#MEDIA_TYPE
	* @see SerializationHandler#setMediaType(String)
	*/
	@:overload @:public public function setMediaType(mediaType : String) : Void;
	
	/**
	* @return the number of spaces to indent for each indentation level.
	*/
	@:overload @:public public function getIndentAmount() : Int;
	
	/**
	* Sets the indentation amount.
	* @param m_indentAmount The m_indentAmount to set
	*/
	@:overload @:public public function setIndentAmount(m_indentAmount : Int) : Void;
	
	/**
	* Sets the value coming from the xsl:output indent stylesheet
	* attribute.
	* @param doIndent true if the output document should be indented to
	* visually indicate its structure.
	* @see XSLOutputAttributes#setIndent(boolean)
	*/
	@:overload @:public public function setIndent(doIndent : Bool) : Void;
	
	/**
	* Sets the isStandalone property
	* @param isStandalone true if the ORACLE_IS_STANDALONE is set to yes
	* @see OutputPropertiesFactory ORACLE_IS_STANDALONE
	*/
	@:overload @:public public function setIsStandalone(isStandalone : Bool) : Void;
	
	/**
	* This method is used when a prefix/uri namespace mapping
	* is indicated after the element was started with a
	* startElement() and before and endElement().
	* startPrefixMapping(prefix,uri) would be used before the
	* startElement() call.
	* @param uri the URI of the namespace
	* @param prefix the prefix associated with the given URI.
	*
	* @see ExtendedContentHandler#namespaceAfterStartElement(String, String)
	*/
	@:overload @:public public function namespaceAfterStartElement(uri : String, prefix : String) : Void;
	
	/**
	* Return a {@link DOMSerializer} interface into this serializer. If the
	* serializer does not support the {@link DOMSerializer} interface, it should
	* return null.
	*
	* @return A {@link DOMSerializer} interface into this serializer,  or null
	* if the serializer is not DOM capable
	* @throws IOException An I/O exception occured
	* @see Serializer#asDOMSerializer()
	*/
	@:overload @:public public function asDOMSerializer() : com.sun.org.apache.xml.internal.serializer.DOMSerializer;
	
	/**
	* Push a boolean state based on if the name of the current element
	* is found in the list of qnames.  A state is only pushed if
	* there were some cdata-section-names were specified.
	* <p>
	* Hidden parameters are the vector of qualified elements specified in
	* cdata-section-names attribute, and the m_cdataSectionStates stack
	* onto which whether the current element is in the list is pushed (true or
	* false). Other hidden parameters are the current elements namespaceURI,
	* localName and qName
	*/
	@:overload @:protected private function isCdataSection() : Bool;
	
	/**
	* Returns the local name of a qualified name.
	* If the name has no prefix,
	* then it works as the identity (SAX2).
	*
	* @param qname a qualified name
	* @return returns the prefix of the qualified name,
	* or null if there is no prefix.
	*/
	@:overload @:protected @:static @:final private static function getPrefixPart(qname : String) : String;
	
	/**
	* Some users of the serializer may need the current namespace mappings
	* @return the current namespace mappings (prefix/uri)
	* @see ExtendedContentHandler#getNamespaceMappings()
	*/
	@:overload @:public public function getNamespaceMappings() : com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
	
	/**
	* Returns the prefix currently pointing to the given URI (if any).
	* @param namespaceURI the uri of the namespace in question
	* @return a prefix pointing to the given URI (if any).
	* @see ExtendedContentHandler#getPrefix(String)
	*/
	@:overload @:public public function getPrefix(namespaceURI : String) : String;
	
	/**
	* Returns the URI of an element or attribute. Note that default namespaces
	* do not apply directly to attributes.
	* @param qname a qualified name
	* @param isElement true if the qualified name is the name of
	* an element.
	* @return returns the namespace URI associated with the qualified name.
	*/
	@:overload @:public public function getNamespaceURI(qname : String, isElement : Bool) : String;
	
	/**
	* Returns the URI of prefix (if any)
	*
	* @param prefix the prefix whose URI is searched for
	* @return the namespace URI currently associated with the
	* prefix, null if the prefix is undefined.
	*/
	@:overload @:public public function getNamespaceURIFromPrefix(prefix : String) : String;
	
	/**
	* Entity reference event.
	*
	* @param name Name of entity
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public public function entityReference(name : String) : Void;
	
	/**
	* Sets the transformer associated with this serializer
	* @param t the transformer associated with this serializer.
	* @see SerializationHandler#setTransformer(Transformer)
	*/
	@:overload @:public public function setTransformer(t : javax.xml.transform.Transformer) : Void;
	
	/**
	* Gets the transformer associated with this serializer
	* @return returns the transformer associated with this serializer.
	* @see SerializationHandler#getTransformer()
	*/
	@:overload @:public public function getTransformer() : javax.xml.transform.Transformer;
	
	/**
	* This method gets the nodes value as a String and uses that String as if
	* it were an input character notification.
	* @param node the Node to serialize
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public public function characters(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#error(SAXParseException)
	*/
	@:overload @:public public function error(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#fatalError(SAXParseException)
	*/
	@:overload @:public public function fatalError(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#warning(SAXParseException)
	*/
	@:overload @:public public function warning(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* To fire off start entity trace event
	* @param name Name of entity
	*/
	@:overload @:protected private function fireStartEntity(name : String) : Void;
	
	/**
	* Report the CDATA trace event
	* @param chars  content of CDATA
	* @param start  starting index of characters to output
	* @param length  number of characters to output
	*/
	@:overload @:protected private function fireCDATAEvent(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Report the comment trace event
	* @param chars  content of comment
	* @param start  starting index of comment to output
	* @param length  number of characters to output
	*/
	@:overload @:protected private function fireCommentEvent(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* To fire off end entity trace event
	* @param name Name of entity
	*/
	@:overload @:public public function fireEndEntity(name : String) : Void;
	
	/**
	* To fire off start document trace  event
	*/
	@:overload @:protected private function fireStartDoc() : Void;
	
	/**
	* To fire off end document trace event
	*/
	@:overload @:protected private function fireEndDoc() : Void;
	
	/**
	* Report the start element trace event. This trace method needs to be
	* called just before the attributes are cleared.
	*
	* @param elemName the qualified name of the element
	*
	*/
	@:overload @:protected private function fireStartElem(elemName : String) : Void;
	
	/**
	* To fire off the PI trace event
	* @param name Name of PI
	*/
	@:overload @:protected private function fireEscapingEvent(name : String, data : String) : Void;
	
	/**
	* To fire off the entity reference trace event
	* @param name Name of entity reference
	*/
	@:overload @:protected private function fireEntityReference(name : String) : Void;
	
	/**
	* Receive notification of the beginning of a document.
	* This method is never a self generated call,
	* but only called externally.
	*
	* <p>The SAX parser will invoke this method only once, before any
	* other methods in this interface or in DTDHandler (except for
	* setDocumentLocator).</p>
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* This method handles what needs to be done at a startDocument() call,
	* whether from an external caller, or internally called in the
	* serializer.  For historical reasons the serializer is flexible to
	* startDocument() not always being called.
	* Even if no external call is
	* made into startDocument() this method will always be called as a self
	* generated internal startDocument, it handles what needs to be done at a
	* startDocument() call.
	*
	* This method exists just to make sure that startDocument() is only ever
	* called from an external caller, which in principle is just a matter of
	* style.
	*
	* @throws SAXException
	*/
	@:overload @:protected private function startDocumentInternal() : Void;
	
	/* This method extracts version and encoding information from SAX events.
	*/
	@:overload @:protected private function setDocumentInfo() : Void;
	
	/**
	* This method is used to set the source locator, which might be used to
	* generated an error message.
	* @param locator the source locator
	*
	* @see ExtendedContentHandler#setSourceLocator(javax.xml.transform.SourceLocator)
	*/
	@:overload @:public public function setSourceLocator(locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Used only by TransformerSnapshotImpl to restore the serialization
	* to a previous state.
	*
	* @param mappings NamespaceMappings
	*/
	@:overload @:public public function setNamespaceMappings(mappings : com.sun.org.apache.xml.internal.serializer.NamespaceMappings) : Void;
	
	@:overload @:public public function reset() : Bool;
	
	/**
	* This method adds an attribute the the current element,
	* but should not be used for an xsl:attribute child.
	* @see ExtendedContentHandler#addAttribute(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String) : Void;
	
	/**
	* @see org.xml.sax.DTDHandler#notationDecl(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public public function notationDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public public function unparsedEntityDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String) : Void;
	
	/**
	* If set to false the serializer does not expand DTD entities,
	* but leaves them as is, the default value is true.
	*/
	@:overload @:public public function setDTDEntityExpansion(expand : Bool) : Void;
	
	/**
	* Report an internal entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.  All parameter entities in the value
	* will be expanded, but general entities will not.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param value The replacement text of the entity.
	* @exception SAXException The application may raise an exception.
	* @see #externalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload @:public @:abstract @:public public function internalEntityDecl(name : String, value : String) : Void;
	
	/**
	* Returns the output format properties for this serializer.
	*
	* @return The output format key/value pairs in use.
	*/
	@:overload @:public @:public public function getOutputFormat() : java.util.Properties;
	
	/**
	* Receive notification of the beginning of an element.
	*
	* <p>The Parser will invoke this method at the beginning of every
	* element in the XML document; there will be a corresponding
	* {@link #endElement endElement} event for every startElement event
	* (even when the element is empty). All of the element's content will be
	* reported, in order, before the corresponding endElement
	* event.</p>
	*
	* <p>This event allows up to three name components for each
	* element:</p>
	*
	* <ol>
	* <li>the Namespace URI;</li>
	* <li>the local name; and</li>
	* <li>the qualified (prefixed) name.</li>
	* </ol>
	*
	* <p>Any or all of these may be provided, depending on the
	* values of the <var>http://xml.org/sax/features/namespaces</var>
	* and the <var>http://xml.org/sax/features/namespace-prefixes</var>
	* properties:</p>
	*
	* <ul>
	* <li>the Namespace URI and local name are required when
	* the namespaces property is <var>true</var> (the default), and are
	* optional when the namespaces property is <var>false</var> (if one is
	* specified, both must be);</li>
	* <li>the qualified name is required when the namespace-prefixes property
	* is <var>true</var>, and is optional when the namespace-prefixes property
	* is <var>false</var> (the default).</li>
	* </ul>
	*
	* <p>Note that the attribute list provided will contain only
	* attributes with explicit values (specified or defaulted):
	* #IMPLIED attributes will be omitted.  The attribute list
	* will contain attributes used for Namespace declarations
	* (xmlns* attributes) only if the
	* <code>http://xml.org/sax/features/namespace-prefixes</code>
	* property is true (it is false by default, and support for a
	* true value is optional).</p>
	*
	* <p>Like {@link #characters characters()}, attribute values may have
	* characters that need more than one <code>char</code> value.  </p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified name (with prefix), or the
	*        empty string if qualified names are not available
	* @param atts the attributes attached to the element.  If
	*        there are no attributes, it shall be an empty
	*        Attributes object.  The value of this object after
	*        startElement returns is undefined
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #endElement
	* @see org.xml.sax.Attributes
	* @see org.xml.sax.helpers.AttributesImpl
	*/
	@:overload @:public @:public @:public @:public public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Individual characters may consist of more than one Java
	* <code>char</code> value.  There are two important cases where this
	* happens, because characters can't be represented in just sixteen bits.
	* In one case, characters are represented in a <em>Surrogate Pair</em>,
	* using two special Unicode values. Such characters are in the so-called
	* "Astral Planes", with a code point above U+FFFF.  A second case involves
	* composite characters, such as a base character combining with one or
	* more accent characters. </p>
	*
	* <p> Your code should not assume that algorithms using
	* <code>char</code>-at-a-time idioms will be working in character
	* units; in some cases they will split characters.  This is relevant
	* wherever XML permits arbitrary characters, such as attribute values,
	* processing instruction data, and comments as well as in data reported
	* from this method.  It's also generally relevant whenever Java code
	* manipulates internationalized text; the issue isn't unique to XML.</p>
	*
	* <p>Note that some parsers will report whitespace in element
	* content using the {@link #ignorableWhitespace ignorableWhitespace}
	* method rather than this one (validating parsers <em>must</em>
	* do so).</p>
	*
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload @:public @:public @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Get the output stream where the events will be serialized to.
	*
	* @return reference to the result stream, or null if only a writer was
	* set.
	*/
	@:overload @:public @:public public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Flush any pending events currently queued up in the serializer. This will
	* flush any input that the serializer has which it has not yet sent as
	* output.
	*/
	@:overload @:public @:public public function flushPending() : Void;
	
	/**
	* This method is used to notify that an element has ended. Unlike the
	* standard SAX method
	* <pre>
	* endElement(namespaceURI,localName,qName)
	* </pre>
	* only the last parameter is passed. If needed the serializer can derive
	* the localName from the qualified name and derive the namespaceURI from
	* its implementation.
	* @param elemName the fully qualified element name.
	* @throws SAXException
	*/
	@:overload @:public @:public public function endElement(elemName : String) : Void;
	
	/**
	* Report the end of a CDATA section.
	*
	* @exception SAXException The application may raise an exception.
	* @see #startCDATA
	*/
	@:overload @:public @:abstract @:public public function endCDATA() : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>The SAX parser will invoke this method at the end of every
	* element in the XML document; there will be a corresponding
	* {@link #startElement startElement} event for every endElement
	* event (even when the element is empty).</p>
	*
	* <p>For information on the names, see startElement.</p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified XML name (with prefix), or the
	*        empty string if qualified names are not available
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public @:public @:public @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* This method is used to notify that an element is starting.
	* This method is just like the standard SAX method
	* <pre>
	* startElement(uri,localName,qname,atts)
	* </pre>
	* but without the attributes.
	* @param uri the namespace URI of the element
	* @param localName the local name (without prefix) of the element
	* @param qName the qualified name of the element
	*
	* @throws SAXException
	*/
	@:overload @:public @:public public function startElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* This method is used to notify that a prefix maping is to start, which can
	* be for the current element, or for the one to come.
	* @param prefix the prefix that maps to the given URI
	* @param uri the namespace URI of the given prefix
	* @param shouldFlush if true this call is like the SAX
	* startPrefixMapping(prefix,uri) call and the mapping applies to the
	* element to come.  If false the mapping applies to the current element.
	* @return boolean false if the prefix mapping was already in effect (in
	* other words we are just re-declaring), true if this is a new, never
	* before seen mapping for the element.
	* @throws SAXException
	*/
	@:overload @:public @:public public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* Receive notification of a processing instruction.
	*
	* <p>The Parser will invoke this method once for each processing
	* instruction found: note that processing instructions may occur
	* before or after the main document element.</p>
	*
	* <p>A SAX parser must never report an XML declaration (XML 1.0,
	* section 2.8) or a text declaration (XML 1.0, section 4.3.1)
	* using this method.</p>
	*
	* <p>Like {@link #characters characters()}, processing instruction
	* data may have characters that need more than one <code>char</code>
	* value. </p>
	*
	* @param target the processing instruction target
	* @param data the processing instruction data, or null if
	*        none was supplied.  The data does not include any
	*        whitespace separating it from the target
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public @:public @:public public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* This method is used to notify of the start of an element
	* @param qName the fully qualified name of the element
	* @throws SAXException
	*/
	@:overload @:public @:public public function startElement(qName : String) : Void;
	
	/**
	* Set the SAX Content handler that the serializer sends its output to. This
	* method only applies to a ToSAXHandler, not to a ToStream serializer.
	*
	* @see Serializer#asContentHandler()
	* @see ToSAXHandler
	*/
	@:overload @:public @:public public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Report the beginning of some internal and external XML entities.
	*
	* <p>The reporting of parameter entities (including
	* the external DTD subset) is optional, and SAX2 drivers that
	* report LexicalHandler events may not implement it; you can use the
	* <code
	* >http://xml.org/sax/features/lexical-handler/parameter-entities</code>
	* feature to query or control the reporting of parameter entities.</p>
	*
	* <p>General entities are reported with their regular names,
	* parameter entities have '%' prepended to their names, and
	* the external DTD subset has the pseudo-entity name "[dtd]".</p>
	*
	* <p>When a SAX2 driver is providing these events, all other
	* events must be properly nested within start/end entity
	* events.  There is no additional requirement that events from
	* {@link org.xml.sax.ext.DeclHandler DeclHandler} or
	* {@link org.xml.sax.DTDHandler DTDHandler} be properly ordered.</p>
	*
	* <p>Note that skipped entities will be reported through the
	* {@link org.xml.sax.ContentHandler#skippedEntity skippedEntity}
	* event, which is part of the ContentHandler interface.</p>
	*
	* <p>Because of the streaming event model that SAX uses, some
	* entity boundaries cannot be reported under any
	* circumstances:</p>
	*
	* <ul>
	* <li>general entities within attribute values</li>
	* <li>parameter entities within declarations</li>
	* </ul>
	*
	* <p>These will be silently expanded, with no indication of where
	* the original entity boundaries were.</p>
	*
	* <p>Note also that the boundaries of character references (which
	* are not really entities anyway) are not reported.</p>
	*
	* <p>All start/endEntity events must be properly nested.
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%', and if it is the
	*        external DTD subset, it will be "[dtd]".
	* @exception SAXException The application may raise an exception.
	* @see #endEntity
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl
	*/
	@:overload @:public @:abstract @:public public function startEntity(name : String) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* <p>Validating Parsers must use this method to report each chunk
	* of whitespace in element content (see the W3C XML 1.0
	* recommendation, section 2.10): non-validating parsers may also
	* use this method if they are capable of parsing and using
	* content models.</p>
	*
	* <p>SAX parsers may return all contiguous whitespace in a single
	* chunk, or they may split it into several chunks; however, all of
	* the characters in any single event must come from the same
	* external entity, so that the Locator provides useful
	* information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #characters
	*/
	@:overload @:public @:public @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Specifies an output stream to which the document should be
	* serialized. This method should not be called while the
	* serializer is in the process of serializing a document.
	* <p>
	* The encoding specified in the output {@link Properties} is used, or
	* if no encoding was specified, the default for the selected
	* output method.
	* <p>
	* Only one of setWriter() or setOutputStream() should be called.
	*
	* @param output The output stream
	*/
	@:overload @:public @:public public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* Notify that the serializer should take this DOM node as input to be
	* serialized.
	*
	* @param node the DOM node to be serialized.
	* @throws IOException
	*/
	@:overload @:public @:public public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* This method is used to notify of a character event, but passing the data
	* as a character String rather than the standard character array.
	* @param chars the character data
	* @throws SAXException
	*/
	@:overload @:public @:public public function characters(chars : String) : Void;
	
	/**
	* Report an element type declaration.
	*
	* <p>The content model will consist of the string "EMPTY", the
	* string "ANY", or a parenthesised group, optionally followed
	* by an occurrence indicator.  The model will be normalized so
	* that all parameter entities are fully resolved and all whitespace
	* is removed,and will include the enclosing parentheses.  Other
	* normalization (such as removing redundant parentheses or
	* simplifying occurrence indicators) is at the discretion of the
	* parser.</p>
	*
	* @param name The element type name.
	* @param model The content model as a normalized string.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:public @:abstract @:public public function elementDecl(name : String, model : String) : Void;
	
	/**
	* Report a parsed external entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.</p>
	*
	* <p>If the system identifier is a URL, the parser must resolve it
	* fully before passing it to the application.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param publicId The entity's public identifier, or null if none
	*        was given.
	* @param systemId The entity's system identifier.
	* @exception SAXException The application may raise an exception.
	* @see #internalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload @:public @:abstract @:public public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Report an XML comment anywhere in the document.
	*
	* <p>This callback will be used for comments inside or outside the
	* document element, including comments in the external DTD
	* subset (if read).  Comments in the DTD must be properly
	* nested inside start/endDTD and start/endEntity events (if
	* used).</p>
	*
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:public @:abstract @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Begin the scope of a prefix-URI Namespace mapping.
	*
	* <p>The information from this event is not necessary for
	* normal Namespace processing: the SAX XML reader will
	* automatically replace prefixes for element and attribute
	* names when the <code>http://xml.org/sax/features/namespaces</code>
	* feature is <var>true</var> (the default).</p>
	*
	* <p>There are cases, however, when applications need to
	* use prefixes in character data or in attribute values,
	* where they cannot safely be expanded automatically; the
	* start/endPrefixMapping event supplies the information
	* to the application to expand prefixes in those contexts
	* itself, if necessary.</p>
	*
	* <p>Note that start/endPrefixMapping events are not
	* guaranteed to be properly nested relative to each other:
	* all startPrefixMapping events will occur immediately before the
	* corresponding {@link #startElement startElement} event,
	* and all {@link #endPrefixMapping endPrefixMapping}
	* events will occur immediately after the corresponding
	* {@link #endElement endElement} event,
	* but their order is not otherwise
	* guaranteed.</p>
	*
	* <p>There should never be start/endPrefixMapping events for the
	* "xml" prefix, since it is predeclared and immutable.</p>
	*
	* @param prefix the Namespace prefix being declared.
	*  An empty string is used for the default element namespace,
	*  which has no prefix.
	* @param uri the Namespace URI the prefix is mapped to
	* @throws org.xml.sax.SAXException the client may throw
	*            an exception during processing
	* @see #endPrefixMapping
	* @see #startElement
	*/
	@:overload @:public @:public @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Receive notification of a skipped entity.
	* This is not called for entity references within markup constructs
	* such as element start tags or markup declarations.  (The XML
	* recommendation requires reporting skipped external entities.
	* SAX also reports internal entity expansion/non-expansion, except
	* within markup constructs.)
	*
	* <p>The Parser will invoke this method each time the entity is
	* skipped.  Non-validating processors may skip entities if they
	* have not seen the declarations (because, for example, the
	* entity was declared in an external DTD subset).  All processors
	* may skip external entities, depending on the values of the
	* <code>http://xml.org/sax/features/external-general-entities</code>
	* and the
	* <code>http://xml.org/sax/features/external-parameter-entities</code>
	* properties.</p>
	*
	* @param name the name of the skipped entity.  If it is a
	*        parameter entity, the name will begin with '%', and if
	*        it is the external DTD subset, it will be the string
	*        "[dtd]"
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public @:public @:public public function skippedEntity(name : String) : Void;
	
	/**
	* End the scope of a prefix-URI mapping.
	*
	* <p>See {@link #startPrefixMapping startPrefixMapping} for
	* details.  These events will always occur immediately after the
	* corresponding {@link #endElement endElement} event, but the order of
	* {@link #endPrefixMapping endPrefixMapping} events is not otherwise
	* guaranteed.</p>
	*
	* @param prefix the prefix that was being mapped.
	*  This is the empty string when a default mapping scope ends.
	* @throws org.xml.sax.SAXException the client may throw
	*            an exception during processing
	* @see #startPrefixMapping
	* @see #endElement
	*/
	@:overload @:public @:public @:public public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Report the start of DTD declarations, if any.
	*
	* <p>This method is intended to report the beginning of the
	* DOCTYPE declaration; if the document has no DOCTYPE declaration,
	* this method will not be invoked.</p>
	*
	* <p>All declarations reported through
	* {@link org.xml.sax.DTDHandler DTDHandler} or
	* {@link org.xml.sax.ext.DeclHandler DeclHandler} events must appear
	* between the startDTD and {@link #endDTD endDTD} events.
	* Declarations are assumed to belong to the internal DTD subset
	* unless they appear between {@link #startEntity startEntity}
	* and {@link #endEntity endEntity} events.  Comments and
	* processing instructions from the DTD should also be reported
	* between the startDTD and endDTD events, in their original
	* order of (logical) occurrence; they are not required to
	* appear in their correct locations relative to DTDHandler
	* or DeclHandler events, however.</p>
	*
	* <p>Note that the start/endDTD events will appear within
	* the start/endDocument events from ContentHandler and
	* before the first
	* {@link org.xml.sax.ContentHandler#startElement startElement}
	* event.</p>
	*
	* @param name The document type name.
	* @param publicId The declared public identifier for the
	*        external DTD subset, or null if none was declared.
	* @param systemId The declared system identifier for the
	*        external DTD subset, or null if none was declared.
	*        (Note that this is not resolved against the document
	*        base URI.)
	* @exception SAXException The application may raise an
	*            exception.
	* @see #endDTD
	* @see #startEntity
	*/
	@:overload @:public @:abstract @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Report an attribute type declaration.
	*
	* <p>Only the effective (first) declaration for an attribute will
	* be reported.  The type will be one of the strings "CDATA",
	* "ID", "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY",
	* "ENTITIES", a parenthesized token group with
	* the separator "|" and all whitespace removed, or the word
	* "NOTATION" followed by a space followed by a parenthesized
	* token group with all whitespace removed.</p>
	*
	* <p>The value will be the value as reported to applications,
	* appropriately normalized and with entity and character
	* references expanded.  </p>
	*
	* @param eName The name of the associated element.
	* @param aName The name of the attribute.
	* @param type A string representing the attribute type.
	* @param mode A string representing the attribute defaulting mode
	*        ("#IMPLIED", "#REQUIRED", or "#FIXED") or null if
	*        none of these applies.
	* @param value A string representing the attribute's default value,
	*        or null if there is none.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:public @:abstract @:public public function attributeDecl(eName : String, aName : String, type : String, mode : String, value : String) : Void;
	
	/**
	* Add a unique attribute to the current element.
	* The attribute is guaranteed to be unique here. The serializer can write
	* it out immediately without saving it in a table first. The integer
	* flag contains information about the attribute, which helps the serializer
	* to decide whether a particular processing is needed.
	*
	* @param qName the fully qualified attribute name.
	* @param value the attribute value
	* @param flags a bitwise flag
	*/
	@:overload @:public @:public public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	/**
	* Report the end of DTD declarations.
	*
	* <p>This method is intended to report the end of the
	* DOCTYPE declaration; if the document has no DOCTYPE declaration,
	* this method will not be invoked.</p>
	*
	* @exception SAXException The application may raise an exception.
	* @see #startDTD
	*/
	@:overload @:public @:abstract @:public public function endDTD() : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* <p><strong>There is an apparent contradiction between the
	* documentation for this method and the documentation for {@link
	* org.xml.sax.ErrorHandler#fatalError}.  Until this ambiguity is
	* resolved in a future major release, clients should make no
	* assumptions about whether endDocument() will or will not be
	* invoked when the parser has reported a fatalError() or thrown
	* an exception.</strong></p>
	*
	* <p>The SAX parser will invoke this method only once, and it will
	* be the last method invoked during the parse.  The parser shall
	* not invoke this method until it has either abandoned parsing
	* (because of an unrecoverable error) or reached the end of
	* input.</p>
	*
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #startDocument
	*/
	@:overload @:public @:public @:public public function endDocument() : Void;
	
	/**
	* Sets the value coming from the xsl:output cdata-section-elements
	* stylesheet property.
	*
	* This sets the elements whose text elements are to be output as CDATA
	* sections.
	* @param URI_and_localNames pairs of namespace URI and local names that
	* identify elements whose text elements are to be output as CDATA sections.
	* The namespace of the local element must be the given URI to match. The
	* qName is not given because the prefix does not matter, only the namespace
	* URI to which that prefix would map matters, so the prefix itself is not
	* relevant in specifying which elements have their text to be output as
	* CDATA sections.
	*/
	@:overload @:public @:public public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Turns special character escaping on/off.
	*
	* Note that characters will
	* never, even if this option is set to 'true', be escaped within
	* CDATA sections in output XML documents.
	*
	* @param escape true if escaping is to be set on.
	*/
	@:overload @:public @:public public function setEscaping(escape : Bool) : Bool;
	
	/**
	* Report the start of a CDATA section.
	*
	* <p>The contents of the CDATA section will be reported through
	* the regular {@link org.xml.sax.ContentHandler#characters
	* characters} event; this event is intended only to report
	* the boundary.</p>
	*
	* @exception SAXException The application may raise an exception.
	* @see #endCDATA
	*/
	@:overload @:public @:abstract @:public public function startCDATA() : Void;
	
	/**
	* Specifies a writer to which the document should be serialized.
	* This method should not be called while the serializer is in
	* the process of serializing a document.
	* <p>
	* The encoding specified for the output {@link Properties} must be
	* identical to the output format used with the writer.
	*
	* <p>
	* Only one of setWriter() or setOutputStream() should be called.
	*
	* @param writer The output writer stream
	*/
	@:overload @:public @:public public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Get the character stream where the events will be serialized to.
	*
	* @return Reference to the result Writer, or null.
	*/
	@:overload @:public @:public public function getWriter() : java.io.Writer;
	
	/**
	* Specifies an output format for this serializer. It the
	* serializer has already been associated with an output format,
	* it will switch to the new format. This method should not be
	* called while the serializer is in the process of serializing
	* a document.
	* <p>
	* The standard property keys supported are: "method", "version", "encoding",
	* "omit-xml-declaration", "standalone", doctype-public",
	* "doctype-system", "cdata-section-elements", "indent", "media-type".
	* These property keys and their values are described in the XSLT recommendation,
	* see {@link <a href="http://www.w3.org/TR/1999/REC-xslt-19991116"> XSLT 1.0 recommendation</a>}
	* <p>
	* The non-standard property keys supported are defined in {@link OutputPropertiesFactory}.
	*
	* <p>
	* This method can be called multiple times before a document is serialized. Each
	* time it is called more, or over-riding property values, can be specified. One
	* property value that can not be changed is that of the "method" property key.
	* <p>
	* The value of the "cdata-section-elements" property key is a whitespace
	* separated list of elements. If the element is in a namespace then
	* value is passed in this format: {uri}localName
	* <p>
	* If the "cdata-section-elements" key is specified on multiple calls
	* to this method the set of elements specified in the value
	* is not replaced from one call to the
	* next, but it is cumulative across the calls.
	*
	* @param format The output format to use, as a set of key/value pairs.
	*/
	@:overload @:public @:public public function setOutputFormat(format : java.util.Properties) : Void;
	
	
}
