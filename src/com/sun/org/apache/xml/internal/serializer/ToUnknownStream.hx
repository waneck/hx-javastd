package com.sun.org.apache.xml.internal.serializer;
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
* $Id: ToUnknownStream.java,v 1.3 2005/09/28 13:49:08 pvedula Exp $
*/
extern class ToUnknownStream extends com.sun.org.apache.xml.internal.serializer.SerializerBase
{
	/**
	* Default constructor.
	* Initially this object wraps an XML Stream object, so _handler is never null.
	* That may change later to an HTML Stream object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @see Serializer#asContentHandler()
	* @return the wrapped XML or HTML handler
	*/
	@:overload @:public override public function asContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* @see SerializationHandler#close()
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* @see Serializer#getOutputFormat()
	* @return the properties of the underlying handler
	*/
	@:overload @:public override public function getOutputFormat() : java.util.Properties;
	
	/**
	* @see Serializer#getOutputStream()
	* @return the OutputStream of the underlying XML or HTML handler
	*/
	@:overload @:public override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* @see Serializer#getWriter()
	* @return the Writer of the underlying XML or HTML handler
	*/
	@:overload @:public override public function getWriter() : java.io.Writer;
	
	/**
	* passes the call on to the underlying HTML or XML handler
	* @see Serializer#reset()
	* @return ???
	*/
	@:overload @:public override public function reset() : Bool;
	
	/**
	* Converts the DOM node to output
	* @param node the DOM node to transform to output
	* @see DOMSerializer#serialize(Node)
	*
	*/
	@:overload @:public override public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload @:public override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* Set the properties of the handler
	* @param format the output properties to set
	* @see Serializer#setOutputFormat(Properties)
	*/
	@:overload @:public override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* Sets the output stream to write to
	* @param output the OutputStream to write to
	* @see Serializer#setOutputStream(OutputStream)
	*/
	@:overload @:public override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* Sets the writer to write to
	* @param writer the writer to write to
	* @see Serializer#setWriter(Writer)
	*/
	@:overload @:public override public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Adds an attribute to the currenly open tag
	* @param uri the URI of a namespace
	* @param localName the attribute name, without prefix
	* @param rawName the attribute name, with prefix (if any)
	* @param type the type of the attribute, typically "CDATA"
	* @param value the value of the parameter
	* @param XSLAttribute true if this attribute is coming from an xsl:attribute element
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload @:public override public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String) : Void;
	
	/**
	* Adds an attribute to the currenly open tag
	* @param uri the URI of a namespace
	* @param localName the attribute name, without prefix
	* @param rawName the attribute name, with prefix (if any)
	* @param type the type of the attribute, typically "CDATA"
	* @param value the value of the parameter
	* @param XSLAttribute true if this attribute is coming from an xsl:attribute element
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload @:public override public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* Adds an attribute to the currenly open tag
	* @param rawName the attribute name, with prefix (if any)
	* @param value the value of the parameter
	* @see ExtendedContentHandler#addAttribute(String, String)
	*/
	@:overload @:public override public function addAttribute(rawName : String, value : String) : Void;
	
	/**
	* Adds a unique attribute to the currenly open tag
	*/
	@:overload @:public override public function addUniqueAttribute(rawName : String, value : String, flags : Int) : Void;
	
	/**
	* Converts the String to a character array and calls the SAX method
	* characters(char[],int,int);
	*
	* @see ExtendedContentHandler#characters(String)
	*/
	@:overload @:public override public function characters(chars : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload @:public override public function endElement(elementName : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startPrefixMapping(String, String)
	* @param prefix The prefix that maps to the URI
	* @param uri The URI for the namespace
	*/
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
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
	@:overload @:public override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* This method cannot be cached because default is different in
	* HTML and XML (we need more than a boolean).
	*/
	@:overload @:public override public function setVersion(version : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startDocument()
	*/
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function startElement(qName : String) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, elementName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see ExtendedLexicalHandler#comment(String)
	*/
	@:overload @:public override public function comment(comment : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getDoctypePublic()
	*/
	@:overload @:public override public function getDoctypePublic() : String;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getDoctypeSystem()
	*/
	@:overload @:public override public function getDoctypeSystem() : String;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getEncoding()
	*/
	@:overload @:public override public function getEncoding() : String;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getIndent()
	*/
	@:overload @:public override public function getIndent() : Bool;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getIndentAmount()
	*/
	@:overload @:public override public function getIndentAmount() : Int;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getMediaType()
	*/
	@:overload @:public override public function getMediaType() : String;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getOmitXMLDeclaration()
	*/
	@:overload @:public override public function getOmitXMLDeclaration() : Bool;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getStandalone()
	*/
	@:overload @:public override public function getStandalone() : String;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#getVersion()
	*/
	@:overload @:public override public function getVersion() : String;
	
	/**
	* @see XSLOutputAttributes#setDoctype(String, String)
	*/
	@:overload @:public override public function setDoctype(system : String, pub : String) : Void;
	
	/**
	* Set the doctype in the underlying XML handler. Remember that this method
	* was called, just in case we need to transfer this doctype to an HTML handler
	* @param doctype the public doctype to set
	* @see XSLOutputAttributes#setDoctypePublic(String)
	*/
	@:overload @:public override public function setDoctypePublic(doctype : String) : Void;
	
	/**
	* Set the doctype in the underlying XML handler. Remember that this method
	* was called, just in case we need to transfer this doctype to an HTML handler
	* @param doctype the system doctype to set
	* @see XSLOutputAttributes#setDoctypeSystem(String)
	*/
	@:overload @:public override public function setDoctypeSystem(doctype : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#setEncoding(String)
	*/
	@:overload @:public override public function setEncoding(encoding : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#setIndent(boolean)
	*/
	@:overload @:public override public function setIndent(indent : Bool) : Void;
	
	/**
	* Pass the call on to the underlying handler
	*/
	@:overload @:public override public function setIndentAmount(value : Int) : Void;
	
	/**
	* @see XSLOutputAttributes#setMediaType(String)
	*/
	@:overload @:public override public function setMediaType(mediaType : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#setOmitXMLDeclaration(boolean)
	*/
	@:overload @:public override public function setOmitXMLDeclaration(b : Bool) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see XSLOutputAttributes#setStandalone(String)
	*/
	@:overload @:public override public function setStandalone(standalone : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.DeclHandler#attributeDecl(String, String, String, String, String)
	*/
	@:overload @:public override public function attributeDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String, arg4 : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.DeclHandler#elementDecl(String, String)
	*/
	@:overload @:public override public function elementDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl(String, String, String)
	*/
	@:overload @:public override public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl(String, String)
	*/
	@:overload @:public override public function internalEntityDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload @:public override public function characters(characters : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload @:public override public function endDocument() : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#endElement(String, String, String)
	*/
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#endPrefixMapping(String)
	*/
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#processingInstruction(String, String)
	*/
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#setDocumentLocator(Locator)
	*/
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ContentHandler#skippedEntity(String)
	*/
	@:overload @:public override public function skippedEntity(name : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#comment(char[], int, int)
	*/
	@:overload @:public override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload @:public override public function endCDATA() : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#endDTD()
	*/
	@:overload @:public override public function endDTD() : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#endEntity(String)
	*/
	@:overload @:public override public function endEntity(name : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#startCDATA()
	*/
	@:overload @:public override public function startCDATA() : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#startDTD(String, String, String)
	*/
	@:overload @:public override public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Pass the call on to the underlying handler
	* @see org.xml.sax.ext.LexicalHandler#startEntity(String)
	*/
	@:overload @:public override public function startEntity(name : String) : Void;
	
	/**
	* @see Serializer#asDOMSerializer()
	*/
	@:overload @:public override public function asDOMSerializer() : com.sun.org.apache.xml.internal.serializer.DOMSerializer;
	
	/**
	* @param URI_and_localNames Vector a list of pairs of URI/localName
	* specified in the cdata-section-elements attribute.
	* @see SerializationHandler#setCdataSectionElements(java.util.Vector)
	*/
	@:overload @:public override public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttributes(org.xml.sax.Attributes)
	*/
	@:overload @:public override public function addAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Get the current namespace mappings.
	* Simply returns the mappings of the wrapped handler.
	* @see ExtendedContentHandler#getNamespaceMappings()
	*/
	@:overload @:public override public function getNamespaceMappings() : com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
	
	/**
	* @see SerializationHandler#flushPending()
	*/
	@:overload @:public override public function flushPending() : Void;
	
	/**
	* @see ExtendedContentHandler#getPrefix
	*/
	@:overload @:public override public function getPrefix(namespaceURI : String) : String;
	
	/**
	* @see ExtendedContentHandler#entityReference(java.lang.String)
	*/
	@:overload @:public override public function entityReference(entityName : String) : Void;
	
	/**
	* @see ExtendedContentHandler#getNamespaceURI(java.lang.String, boolean)
	*/
	@:overload @:public override public function getNamespaceURI(qname : String, isElement : Bool) : String;
	
	@:overload @:public override public function getNamespaceURIFromPrefix(prefix : String) : String;
	
	@:overload @:public override public function setTransformer(t : javax.xml.transform.Transformer) : Void;
	
	@:overload @:public override public function getTransformer() : javax.xml.transform.Transformer;
	
	/**
	* @see SerializationHandler#setContentHandler(org.xml.sax.ContentHandler)
	*/
	@:overload @:public override public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* This method is used to set the source locator, which might be used to
	* generated an error message.
	* @param locator the source locator
	*
	* @see ExtendedContentHandler#setSourceLocator(javax.xml.transform.SourceLocator)
	*/
	@:overload @:public override public function setSourceLocator(locator : javax.xml.transform.SourceLocator) : Void;
	
	@:overload @:protected private function firePseudoElement(elementName : String) : Void;
	
	
}
