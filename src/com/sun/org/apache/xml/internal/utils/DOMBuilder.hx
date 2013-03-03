package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
* $Id: DOMBuilder.java,v 1.2.4.1 2005/09/15 08:15:39 suresh_emailid Exp $
*/
extern class DOMBuilder implements org.xml.sax.ContentHandler implements org.xml.sax.ext.LexicalHandler
{
	/** Root document          */
	@:public public var m_doc : org.w3c.dom.Document;
	
	/** Current node           */
	@:protected private var m_currentNode : org.w3c.dom.Node;
	
	/** The root node          */
	@:protected private var m_root : org.w3c.dom.Node;
	
	/** The next sibling node  */
	@:protected private var m_nextSibling : org.w3c.dom.Node;
	
	/** First node of document fragment or null if not a DocumentFragment     */
	@:public public var m_docFrag : org.w3c.dom.DocumentFragment;
	
	/** Vector of element nodes          */
	@:protected private var m_elemStack : java.util.Stack<Dynamic>;
	
	/**
	* DOMBuilder instance constructor... it will add the DOM nodes
	* to the document fragment.
	*
	* @param doc Root document
	* @param node Current node
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, node : org.w3c.dom.Node) : Void;
	
	/**
	* DOMBuilder instance constructor... it will add the DOM nodes
	* to the document fragment.
	*
	* @param doc Root document
	* @param docFrag Document fragment
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, docFrag : org.w3c.dom.DocumentFragment) : Void;
	
	/**
	* DOMBuilder instance constructor... it will add the DOM nodes
	* to the document.
	*
	* @param doc Root document
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Get the root document or DocumentFragment of the DOM being created.
	*
	* @return The root document or document fragment if not null
	*/
	@:overload @:public public function getRootDocument() : org.w3c.dom.Node;
	
	/**
	* Get the root node of the DOM tree.
	*/
	@:overload @:public public function getRootNode() : org.w3c.dom.Node;
	
	/**
	* Get the node currently being processed.
	*
	* @return the current node being processed
	*/
	@:overload @:public public function getCurrentNode() : org.w3c.dom.Node;
	
	/**
	* Set the next sibling node, which is where the result nodes
	* should be inserted before.
	*
	* @param nextSibling the next sibling node.
	*/
	@:overload @:public public function setNextSibling(nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* Return the next sibling node.
	*
	* @return the next sibling node.
	*/
	@:overload @:public public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* Return null since there is no Writer for this class.
	*
	* @return null
	*/
	@:overload @:public public function getWriter() : java.io.Writer;
	
	/**
	* Append a node to the current container.
	*
	* @param newNode New node to append
	*/
	@:overload @:protected private function append(newNode : org.w3c.dom.Node) : Void;
	
	/**
	* Receive an object for locating the origin of SAX document events.
	*
	* <p>SAX parsers are strongly encouraged (though not absolutely
	* required) to supply a locator: if it does so, it must supply
	* the locator to the application by invoking this method before
	* invoking any of the other methods in the ContentHandler
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
	*
	* @param locator An object that can return the location of
	*                any SAX document event.
	* @see org.xml.sax.Locator
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Receive notification of the beginning of a document.
	*
	* <p>The SAX parser will invoke this method only once, before any
	* other methods in this interface or in DTDHandler (except for
	* setDocumentLocator).</p>
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* <p>The SAX parser will invoke this method only once, and it will
	* be the last method invoked during the parse.  The parser shall
	* not invoke this method until it has either abandoned parsing
	* (because of an unrecoverable error) or reached the end of
	* input.</p>
	*/
	@:overload @:public public function endDocument() : Void;
	
	/**
	* Receive notification of the beginning of an element.
	*
	* <p>The Parser will invoke this method at the beginning of every
	* element in the XML document; there will be a corresponding
	* endElement() event for every startElement() event (even when the
	* element is empty). All of the element's content will be
	* reported, in order, before the corresponding endElement()
	* event.</p>
	*
	* <p>If the element name has a namespace prefix, the prefix will
	* still be attached.  Note that the attribute list provided will
	* contain only attributes with explicit values (specified or
	* defaulted): #IMPLIED attributes will be omitted.</p>
	*
	*
	* @param ns The namespace of the node
	* @param localName The local part of the qualified name
	* @param name The element name.
	* @param atts The attributes attached to the element, if any.
	* @see #endElement
	* @see org.xml.sax.Attributes
	*/
	@:overload @:public public function startElement(ns : String, localName : String, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**



	* Receive notification of the end of an element.
	*
	* <p>The SAX parser will invoke this method at the end of every
	* element in the XML document; there will be a corresponding
	* startElement() event for every endElement() event (even when the
	* element is empty).</p>
	*
	* <p>If the element name has a namespace prefix, the prefix will
	* still be attached to the name.</p>
	*
	*
	* @param ns the namespace of the element
	* @param localName The local part of the qualified name of the element
	* @param name The element name
	*/
	@:overload @:public public function endElement(ns : String, localName : String, name : String) : Void;
	
	/**
	* Set an ID string to node association in the ID table.
	*
	* @param id The ID string.
	* @param elem The associated ID.
	*/
	@:overload @:public public function setIDAttribute(id : String, elem : org.w3c.dom.Element) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* If available, when the disable-output-escaping attribute is used,
	* output raw text without escaping.  A PI will be inserted in front
	* of the node with the name "lotusxsl-next-is-raw" and a value of
	* "formatter-to-dom".
	*
	* @param ch Array containing the characters
	* @param start Index to start of characters in the array
	* @param length Number of characters in the array
	*/
	@:overload @:public public function charactersRaw(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Report the beginning of an entity.
	*
	* The start and end of the document entity are not reported.
	* The start and end of the external DTD subset are reported
	* using the pseudo-name "[dtd]".  All other events must be
	* properly nested within start/end entity events.
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @see #endEntity
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl
	*/
	@:overload @:public public function startEntity(name : String) : Void;
	
	/**
	* Report the end of an entity.
	*
	* @param name The name of the entity that is ending.
	* @see #startEntity
	*/
	@:overload @:public public function endEntity(name : String) : Void;
	
	/**
	* Receive notivication of a entityReference.
	*
	* @param name name of the entity reference
	*/
	@:overload @:public public function entityReference(name : String) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* <p>Validating Parsers must use this method to report each chunk
	* of ignorable whitespace (see the W3C XML 1.0 recommendation,
	* section 2.10): non-validating parsers may also use this method
	* if they are capable of parsing and using content models.</p>
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
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @see #characters
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of a processing instruction.
	*
	* <p>The Parser will invoke this method once for each processing
	* instruction found: note that processing instructions may occur
	* before or after the main document element.</p>
	*
	* <p>A SAX parser should never report an XML declaration (XML 1.0,
	* section 2.8) or a text declaration (XML 1.0, section 4.3.1)
	* using this method.</p>
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*        none was supplied.
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Report an XML comment anywhere in the document.
	*
	* This callback will be used for comments inside or outside the
	* document element, including comments in the external DTD
	* subset (if read).
	*
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	*/
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** Flag indicating that we are processing a CData section          */
	@:protected private var m_inCData : Bool;
	
	/**
	* Report the start of a CDATA section.
	*
	* @see #endCDATA
	*/
	@:overload @:public public function startCDATA() : Void;
	
	/**
	* Report the end of a CDATA section.
	*
	* @see #startCDATA
	*/
	@:overload @:public public function endCDATA() : Void;
	
	/**
	* Receive notification of cdata.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload @:public public function cdata(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Report the start of DTD declarations, if any.
	*
	* Any declarations are assumed to be in the internal subset
	* unless otherwise indicated.
	*
	* @param name The document type name.
	* @param publicId The declared public identifier for the
	*        external DTD subset, or null if none was declared.
	* @param systemId The declared system identifier for the
	*        external DTD subset, or null if none was declared.
	* @see #endDTD
	* @see #startEntity
	*/
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Report the end of DTD declarations.
	*
	* @see #startDTD
	*/
	@:overload @:public public function endDTD() : Void;
	
	/**
	* Begin the scope of a prefix-URI Namespace mapping.
	*
	* <p>The information from this event is not necessary for
	* normal Namespace processing: the SAX XML reader will
	* automatically replace prefixes for element and attribute
	* names when the http://xml.org/sax/features/namespaces
	* feature is true (the default).</p>
	*
	* <p>There are cases, however, when applications need to
	* use prefixes in character data or in attribute values,
	* where they cannot safely be expanded automatically; the
	* start/endPrefixMapping event supplies the information
	* to the application to expand prefixes in those contexts
	* itself, if necessary.</p>
	*
	* <p>Note that start/endPrefixMapping events are not
	* guaranteed to be properly nested relative to each-other:
	* all startPrefixMapping events will occur before the
	* corresponding startElement event, and all endPrefixMapping
	* events will occur after the corresponding endElement event,
	* but their order is not guaranteed.</p>
	*
	* @param prefix The Namespace prefix being declared.
	* @param uri The Namespace URI the prefix is mapped to.
	* @see #endPrefixMapping
	* @see #startElement
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* End the scope of a prefix-URI mapping.
	*
	* <p>See startPrefixMapping for details.  This event will
	* always occur after the corresponding endElement event,
	* but the order of endPrefixMapping events is not otherwise
	* guaranteed.</p>
	*
	* @param prefix The prefix that was being mapping.
	* @see #startPrefixMapping
	* @see #endElement
	*/
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Receive notification of a skipped entity.
	*
	* <p>The Parser will invoke this method once for each entity
	* skipped.  Non-validating processors may skip entities if they
	* have not seen the declarations (because, for example, the
	* entity was declared in an external DTD subset).  All processors
	* may skip external entities, depending on the values of the
	* http://xml.org/sax/features/external-general-entities and the
	* http://xml.org/sax/features/external-parameter-entities
	* properties.</p>
	*
	* @param name The name of the skipped entity.  If it is a
	*        parameter entity, the name will begin with '%'.
	*/
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	
}
