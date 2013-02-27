package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: EmptySerializer.java,v 1.2.4.1 2005/09/15 08:15:16 suresh_emailid Exp $
*/
extern class EmptySerializer implements com.sun.org.apache.xml.internal.serializer.SerializationHandler
{
	/**
	* This class is an adapter class. Its only purpose is to be extended and
	* for that extended class to over-ride all methods that are to be used.
	*
	* This class is not a public API, it is only public because it is used
	* across package boundaries.
	*
	* @xsl.usage internal
	*/
	private static var ERR(default, null) : String;
	
	/**
	* @see SerializationHandler#asContentHandler()
	*/
	@:overload private function couldThrowIOException() : Void;
	
	@:overload private function couldThrowSAXException() : Void;
	
	@:overload private function couldThrowSAXException(chars : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload private function couldThrowSAXException(elemQName : String) : Void;
	
	@:overload private function couldThrowException() : Void;
	
	/**
	* @see SerializationHandler#asContentHandler()
	*/
	@:overload public function asContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* @see SerializationHandler#setContentHandler(org.xml.sax.ContentHandler)
	*/
	@:overload public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* @see SerializationHandler#close()
	*/
	@:overload public function close() : Void;
	
	/**
	* @see SerializationHandler#getOutputFormat()
	*/
	@:overload public function getOutputFormat() : java.util.Properties;
	
	/**
	* @see SerializationHandler#getOutputStream()
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* @see SerializationHandler#getWriter()
	*/
	@:overload public function getWriter() : java.io.Writer;
	
	/**
	* @see SerializationHandler#reset()
	*/
	@:overload public function reset() : Bool;
	
	/**
	* @see SerializationHandler#serialize(org.w3c.dom.Node)
	*/
	@:overload public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see SerializationHandler#setCdataSectionElements(java.util.Vector)
	*/
	@:overload public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload public function setEscaping(escape : Bool) : Bool;
	
	/**
	* @see SerializationHandler#setIndent(boolean)
	*/
	@:overload public function setIndent(indent : Bool) : Void;
	
	/**
	* @see SerializationHandler#setIndentAmount(int)
	*/
	@:overload public function setIndentAmount(spaces : Int) : Void;
	
	/**
	* @see SerializationHandler#setIsStandalone(boolean)
	*/
	@:overload public function setIsStandalone(isStandalone : Bool) : Void;
	
	/**
	* @see SerializationHandler#setOutputFormat(java.util.Properties)
	*/
	@:overload public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* @see SerializationHandler#setOutputStream(java.io.OutputStream)
	*/
	@:overload public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* @see SerializationHandler#setVersion(java.lang.String)
	*/
	@:overload public function setVersion(version : String) : Void;
	
	/**
	* @see SerializationHandler#setWriter(java.io.Writer)
	*/
	@:overload public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* @see SerializationHandler#setTransformer(javax.xml.transform.Transformer)
	*/
	@:overload public function setTransformer(transformer : javax.xml.transform.Transformer) : Void;
	
	/**
	* @see SerializationHandler#getTransformer()
	*/
	@:overload public function getTransformer() : javax.xml.transform.Transformer;
	
	/**
	* @see SerializationHandler#flushPending()
	*/
	@:overload public function flushPending() : Void;
	
	/**
	* @see ExtendedContentHandler#addAttribute(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttributes(org.xml.sax.Attributes)
	*/
	@:overload public function addAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttribute(java.lang.String, java.lang.String)
	*/
	@:overload public function addAttribute(name : String, value : String) : Void;
	
	/**
	* @see ExtendedContentHandler#characters(java.lang.String)
	*/
	@:overload public function characters(chars : String) : Void;
	
	/**
	* @see ExtendedContentHandler#endElement(java.lang.String)
	*/
	@:overload public function endElement(elemName : String) : Void;
	
	/**
	* @see ExtendedContentHandler#startDocument()
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* @see ExtendedContentHandler#startElement(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function startElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* @see ExtendedContentHandler#startElement(java.lang.String)
	*/
	@:overload public function startElement(qName : String) : Void;
	
	/**
	* @see ExtendedContentHandler#namespaceAfterStartElement(java.lang.String, java.lang.String)
	*/
	@:overload public function namespaceAfterStartElement(uri : String, prefix : String) : Void;
	
	/**
	* @see ExtendedContentHandler#startPrefixMapping(java.lang.String, java.lang.String, boolean)
	*/
	@:overload public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* @see ExtendedContentHandler#entityReference(java.lang.String)
	*/
	@:overload public function entityReference(entityName : String) : Void;
	
	/**
	* @see ExtendedContentHandler#getNamespaceMappings()
	*/
	@:overload public function getNamespaceMappings() : com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
	
	/**
	* @see ExtendedContentHandler#getPrefix(java.lang.String)
	*/
	@:overload public function getPrefix(uri : String) : String;
	
	/**
	* @see ExtendedContentHandler#getNamespaceURI(java.lang.String, boolean)
	*/
	@:overload public function getNamespaceURI(name : String, isElement : Bool) : String;
	
	/**
	* @see ExtendedContentHandler#getNamespaceURIFromPrefix(java.lang.String)
	*/
	@:overload public function getNamespaceURIFromPrefix(prefix : String) : String;
	
	/**
	* @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
	*/
	@:overload public function setDocumentLocator(arg0 : org.xml.sax.Locator) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String, java.lang.String)
	*/
	@:overload public function startPrefixMapping(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
	*/
	@:overload public function endPrefixMapping(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)
	*/
	@:overload public function startElement(arg0 : String, arg1 : String, arg2 : String, arg3 : org.xml.sax.Attributes) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endElement(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function endElement(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload public function characters(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload public function ignorableWhitespace(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String, java.lang.String)
	*/
	@:overload public function processingInstruction(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
	*/
	@:overload public function skippedEntity(arg0 : String) : Void;
	
	/**
	* @see ExtendedLexicalHandler#comment(java.lang.String)
	*/
	@:overload public function comment(comment : String) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startDTD(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function startDTD(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endDTD()
	*/
	@:overload public function endDTD() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startEntity(java.lang.String)
	*/
	@:overload public function startEntity(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endEntity(java.lang.String)
	*/
	@:overload public function endEntity(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startCDATA()
	*/
	@:overload public function startCDATA() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload public function endCDATA() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#comment(char[], int, int)
	*/
	@:overload public function comment(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see XSLOutputAttributes#getDoctypePublic()
	*/
	@:overload public function getDoctypePublic() : String;
	
	/**
	* @see XSLOutputAttributes#getDoctypeSystem()
	*/
	@:overload public function getDoctypeSystem() : String;
	
	/**
	* @see XSLOutputAttributes#getEncoding()
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* @see XSLOutputAttributes#getIndent()
	*/
	@:overload public function getIndent() : Bool;
	
	/**
	* @see XSLOutputAttributes#getIndentAmount()
	*/
	@:overload public function getIndentAmount() : Int;
	
	/**
	* @see XSLOutputAttributes#getMediaType()
	*/
	@:overload public function getMediaType() : String;
	
	/**
	* @see XSLOutputAttributes#getOmitXMLDeclaration()
	*/
	@:overload public function getOmitXMLDeclaration() : Bool;
	
	/**
	* @see XSLOutputAttributes#getStandalone()
	*/
	@:overload public function getStandalone() : String;
	
	/**
	* @see XSLOutputAttributes#getVersion()
	*/
	@:overload public function getVersion() : String;
	
	/**
	* @see XSLOutputAttributes#setCdataSectionElements
	*/
	@:overload public function setCdataSectionElements(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* @see XSLOutputAttributes#setDoctype(java.lang.String, java.lang.String)
	*/
	@:overload public function setDoctype(system : String, pub : String) : Void;
	
	/**
	* @see XSLOutputAttributes#setDoctypePublic(java.lang.String)
	*/
	@:overload public function setDoctypePublic(doctype : String) : Void;
	
	/**
	* @see XSLOutputAttributes#setDoctypeSystem(java.lang.String)
	*/
	@:overload public function setDoctypeSystem(doctype : String) : Void;
	
	/**
	* @see XSLOutputAttributes#setEncoding(java.lang.String)
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	* @see XSLOutputAttributes#setMediaType(java.lang.String)
	*/
	@:overload public function setMediaType(mediatype : String) : Void;
	
	/**
	* @see XSLOutputAttributes#setOmitXMLDeclaration(boolean)
	*/
	@:overload public function setOmitXMLDeclaration(b : Bool) : Void;
	
	/**
	* @see XSLOutputAttributes#setStandalone(java.lang.String)
	*/
	@:overload public function setStandalone(standalone : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#elementDecl(java.lang.String, java.lang.String)
	*/
	@:overload public function elementDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#attributeDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function attributeDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String, arg4 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl(java.lang.String, java.lang.String)
	*/
	@:overload public function internalEntityDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function externalEntityDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#warning(org.xml.sax.SAXParseException)
	*/
	@:overload public function warning(arg0 : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#error(org.xml.sax.SAXParseException)
	*/
	@:overload public function error(arg0 : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see org.xml.sax.ErrorHandler#fatalError(org.xml.sax.SAXParseException)
	*/
	@:overload public function fatalError(arg0 : org.xml.sax.SAXParseException) : Void;
	
	/**
	* @see Serializer#asDOMSerializer()
	*/
	@:overload public function asDOMSerializer() : com.sun.org.apache.xml.internal.serializer.DOMSerializer;
	
	/**
	* @see SerializationHandler#setNamespaceMappings(NamespaceMappings)
	*/
	@:overload public function setNamespaceMappings(mappings : com.sun.org.apache.xml.internal.serializer.NamespaceMappings) : Void;
	
	/**
	* @see ExtendedContentHandler#setSourceLocator(javax.xml.transform.SourceLocator)
	*/
	@:overload public function setSourceLocator(locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* @see ExtendedContentHandler#addUniqueAttribute(java.lang.String, java.lang.String, int)
	*/
	@:overload public function addUniqueAttribute(name : String, value : String, flags : Int) : Void;
	
	/**
	* @see ExtendedContentHandler#characters(org.w3c.dom.Node)
	*/
	@:overload public function characters(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see ExtendedContentHandler#addXSLAttribute(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function addXSLAttribute(qName : String, value : String, uri : String) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttribute(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String) : Void;
	
	/**
	* @see org.xml.sax.DTDHandler#notationDecl(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function notationDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload public function unparsedEntityDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String) : Void;
	
	/**
	* @see SerializationHandler#setDTDEntityExpansion(boolean)
	*/
	@:overload public function setDTDEntityExpansion(expand : Bool) : Void;
	
	
}
