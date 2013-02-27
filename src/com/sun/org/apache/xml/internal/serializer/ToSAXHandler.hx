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
* $Id: ToSAXHandler.java,v 1.2.4.1 2005/09/22 11:03:15 pvedula Exp $
*/
extern class ToSAXHandler extends com.sun.org.apache.xml.internal.serializer.SerializerBase
{
	/**
	* This class is used to provide a base behavior to be inherited
	* by other To...SAXHandler serializers.
	*
	* This class is not a public API.
	*
	* @xsl.usage internal
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(hdlr : org.xml.sax.ContentHandler, lex : org.xml.sax.ext.LexicalHandler, encoding : String) : Void;
	
	@:overload public function new(handler : org.xml.sax.ContentHandler, encoding : String) : Void;
	
	/**
	* Underlying SAX handler. Taken from XSLTC
	*/
	private var m_saxHandler : org.xml.sax.ContentHandler;
	
	/**
	* Underlying LexicalHandler. Taken from XSLTC
	*/
	private var m_lexHandler : org.xml.sax.ext.LexicalHandler;
	
	/** If this is true, then the content handler wrapped by this
	* serializer implements the TransformState interface which
	* will give the content handler access to the state of
	* the transform. */
	private var m_state : com.sun.org.apache.xml.internal.serializer.TransformStateSetter;
	
	/**
	* Pass callback to the SAX Handler
	*/
	@:overload override private function startDocumentInternal() : Void;
	
	/**
	* Do nothing.
	* @see org.xml.sax.ext.LexicalHandler#startDTD(String, String, String)
	*/
	@:overload override public function startDTD(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* Receive notification of character data.
	*
	* @param characters The string of characters to process.
	*
	* @throws org.xml.sax.SAXException
	*
	* @see ExtendedContentHandler#characters(String)
	*/
	@:overload override public function characters(characters : String) : Void;
	
	/**
	* Receive notification of a comment.
	*
	* @see ExtendedLexicalHandler#comment(String)
	*/
	@:overload override public function comment(comment : String) : Void;
	
	/**
	* Do nothing as this is an abstract class. All subclasses will need to
	* define their behavior if it is different.
	* @see org.xml.sax.ContentHandler#processingInstruction(String, String)
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload private function closeStartTag() : Void;
	
	@:overload private function closeCDATA() : Void;
	
	/**
	* Receive notification of the beginning of an element, although this is a
	* SAX method additional namespace or attribute information can occur before
	* or after this call, that is associated with this element.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	* @see org.xml.sax.ContentHandler#endElement
	* @see org.xml.sax.AttributeList
	*
	* @throws org.xml.sax.SAXException
	*
	* @see org.xml.sax.ContentHandler#startElement(String,String,String,Attributes)
	*/
	@:overload override public function startElement(arg0 : String, arg1 : String, arg2 : String, arg3 : org.xml.sax.Attributes) : Void;
	
	/**
	* Sets the LexicalHandler.
	* @param _lexHandler The LexicalHandler to set
	*/
	@:overload public function setLexHandler(_lexHandler : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**
	* Sets the SAX ContentHandler.
	* @param _saxHandler The ContentHandler to set
	*/
	@:overload override public function setContentHandler(_saxHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Does nothing. The setting of CDATA section elements has an impact on
	* stream serializers.
	* @see SerializationHandler#setCdataSectionElements(java.util.Vector)
	*/
	@:overload override public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/** Set whether or not namespace declarations (e.g.
	* xmlns:foo) should appear as attributes of
	* elements
	* @param doOutputNSAttr whether or not namespace declarations
	* should appear as attributes
	*/
	@:overload public function setShouldOutputNSAttr(doOutputNSAttr : Bool) : Void;
	
	/**
	* This method flushes any pending events, which can be startDocument()
	* closing the opening tag of an element, or closing an open CDATA section.
	*/
	@:overload override public function flushPending() : Void;
	
	/**
	* Pass in a reference to a TransformState object, which
	* can be used during SAX ContentHandler events to obtain
	* information about he state of the transformation. This
	* method will be called  before each startDocument event.
	*
	* @param ts A reference to a TransformState object
	*/
	@:overload public function setTransformState(ts : com.sun.org.apache.xml.internal.serializer.TransformStateSetter) : Void;
	
	/**
	* Receives notification that an element starts, but attributes are not
	* fully known yet.
	*
	* @param uri the URI of the namespace of the element (optional)
	* @param localName the element name, but without prefix (optional)
	* @param qName the element name, with prefix, if any (required)
	*
	* @see ExtendedContentHandler#startElement(String, String, String)
	*/
	@:overload override public function startElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* An element starts, but attributes are not fully known yet.
	*
	* @param qName the element name, with prefix (if any).

	* @see ExtendedContentHandler#startElement(String)
	*/
	@:overload override public function startElement(qName : String) : Void;
	
	/**
	* This method gets the node's value as a String and uses that String as if
	* it were an input character notification.
	* @param node the Node to serialize
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function characters(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#fatalError(SAXParseException)
	*/
	@:overload override public function fatalError(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#error(SAXParseException)
	*/
	@:overload override public function error(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#warning(SAXParseException)
	*/
	@:overload override public function warning(exc : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Try's to reset the super class and reset this class for
	* re-use, so that you don't need to create a new serializer
	* (mostly for performance reasons).
	*
	* @return true if the class was successfuly reset.
	* @see Serializer#reset()
	*/
	@:overload override public function reset() : Bool;
	
	/**
	* Add a unique attribute
	*/
	@:overload override public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	
}
