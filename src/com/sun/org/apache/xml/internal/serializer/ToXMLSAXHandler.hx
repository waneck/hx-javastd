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
* $Id: ToXMLSAXHandler.java,v 1.3 2005/09/28 13:49:08 pvedula Exp $
*/
extern class ToXMLSAXHandler extends com.sun.org.apache.xml.internal.serializer.ToSAXHandler
{
	/**
	* Keeps track of whether output escaping is currently enabled
	*/
	private var m_escapeSetting : Bool;
	
	@:overload public function new() : Void;
	
	/**
	* @see Serializer#getOutputFormat()
	*/
	@:overload override public function getOutputFormat() : java.util.Properties;
	
	/**
	* @see Serializer#getOutputStream()
	*/
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* @see Serializer#getWriter()
	*/
	@:overload override public function getWriter() : java.io.Writer;
	
	/**
	* Do nothing for SAX.
	*/
	@:overload public function indent(n : Int) : Void;
	
	/**
	* @see DOMSerializer#serialize(Node)
	*/
	@:overload override public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* @see Serializer#setOutputFormat(Properties)
	*/
	@:overload override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* @see Serializer#setOutputStream(OutputStream)
	*/
	@:overload override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* @see Serializer#setWriter(Writer)
	*/
	@:overload override public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#attributeDecl(String, String, String, String, String)
	*/
	@:overload override public function attributeDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String, arg4 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#elementDecl(String, String)
	*/
	@:overload override public function elementDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl(String, String, String)
	*/
	@:overload override public function externalEntityDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl(String, String)
	*/
	@:overload override public function internalEntityDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* Receives notification of the end of the document.
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload override public function endDocument() : Void;
	
	/**
	* This method is called when all the data needed for a call to the
	* SAX handler's startElement() method has been gathered.
	*/
	@:overload override private function closeStartTag() : Void;
	
	/**
	* Closes ane open cdata tag, and
	* unlike the this.endCDATA() method (from the LexicalHandler) interface,
	* this "internal" method will send the endCDATA() call to the wrapped
	* handler.
	*
	*/
	@:overload override public function closeCDATA() : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endElement(String, String, String)
	*/
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endPrefixMapping(String)
	*/
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload override public function ignorableWhitespace(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#setDocumentLocator(Locator)
	*/
	@:overload public function setDocumentLocator(arg0 : org.xml.sax.Locator) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#skippedEntity(String)
	*/
	@:overload override public function skippedEntity(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startPrefixMapping(String, String)
	* @param prefix The prefix that maps to the URI
	* @param uri The URI for the namespace
	*/
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Remember the prefix/uri mapping at the current nested element depth.
	*
	* @see org.xml.sax.ContentHandler#startPrefixMapping(String, String)
	* @param prefix The prefix that maps to the URI
	* @param uri The URI for the namespace
	* @param shouldFlush a flag indicating if the mapping applies to the
	* current element or an up coming child (not used).
	*/
	@:overload override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#comment(char[], int, int)
	*/
	@:overload public function comment(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload public function endCDATA() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endDTD()
	*/
	@:overload public function endDTD() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startEntity(String)
	*/
	@:overload public function startEntity(arg0 : String) : Void;
	
	/**
	* @see ExtendedContentHandler#characters(String)
	*/
	@:overload override public function characters(chars : String) : Void;
	
	@:overload public function new(handler : org.xml.sax.ContentHandler, encoding : String) : Void;
	
	@:overload public function new(handler : org.xml.sax.ContentHandler, lex : org.xml.sax.ext.LexicalHandler, encoding : String) : Void;
	
	/**
	* Start an element in the output document. This might be an XML element
	* (<elem>data</elem> type) or a CDATA section.
	*/
	@:overload override public function startElement(elementNamespaceURI : String, elementLocalName : String, elementName : String) : Void;
	
	@:overload override public function startElement(elementName : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload override public function endElement(elemName : String) : Void;
	
	/**
	* Send a namespace declaration in the output document. The namespace
	* declaration will not be include if the namespace is already in scope
	* with the same prefix.
	*/
	@:overload public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	/**
	*
	* @see org.xml.sax.ContentHandler#processingInstruction(String, String)
	* Send a processing instruction to the output document
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Undeclare the namespace that is currently pointed to by a given
	* prefix. Inform SAX handler if prefix was previously mapped.
	*/
	@:overload private function popNamespace(prefix : String) : Bool;
	
	@:overload public function startCDATA() : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startElement(String, String, String, Attributes)
	*/
	@:overload override public function startElement(namespaceURI : String, localName : String, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Adds the given attribute to the set of attributes, and also makes sure
	* that the needed prefix/uri mapping is declared, but only if there is a
	* currently open element.
	*
	* @param uri the URI of the attribute
	* @param localName the local name of the attribute
	* @param rawName    the qualified name of the attribute
	* @param type the type of the attribute (probably CDATA)
	* @param value the value of the attribute
	* @param XSLAttribute true if this attribute is coming from an xsl:attribute element
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* Try's to reset the super class and reset this class for
	* re-use, so that you don't need to create a new serializer
	* (mostly for performance reasons).
	*
	* @return true if the class was successfuly reset.
	* @see Serializer#reset()
	*/
	@:overload override public function reset() : Bool;
	
	
}
