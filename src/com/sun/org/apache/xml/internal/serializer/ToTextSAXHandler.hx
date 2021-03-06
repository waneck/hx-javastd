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
* $Id: ToTextSAXHandler.java,v 1.3 2005/09/28 13:49:08 pvedula Exp $
*/
extern class ToTextSAXHandler extends com.sun.org.apache.xml.internal.serializer.ToSAXHandler
{
	/**
	* From XSLTC
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload @:public override public function endElement(elemName : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endElement(String, String, String)
	*/
	@:overload @:public override public function endElement(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	@:overload @:public public function new(hdlr : org.xml.sax.ContentHandler, lex : org.xml.sax.ext.LexicalHandler, encoding : String) : Void;
	
	/**
	* From XSLTC
	*/
	@:overload @:public public function new(handler : org.xml.sax.ContentHandler, encoding : String) : Void;
	
	@:overload @:public override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function comment(data : String) : Void;
	
	/**
	* @see Serializer#getOutputFormat()
	*/
	@:overload @:public override public function getOutputFormat() : java.util.Properties;
	
	/**
	* @see Serializer#getOutputStream()
	*/
	@:overload @:public override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* @see Serializer#getWriter()
	*/
	@:overload @:public override public function getWriter() : java.io.Writer;
	
	/**
	* Does nothing because
	* the indent attribute is ignored for text output.
	*
	*/
	@:overload @:public public function indent(n : Int) : Void;
	
	/**
	* @see Serializer#reset()
	*/
	@:overload @:public override public function reset() : Bool;
	
	/**
	* @see DOMSerializer#serialize(Node)
	*/
	@:overload @:public override public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload @:public override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* @see SerializationHandler#setIndent(boolean)
	*/
	@:overload @:public override public function setIndent(indent : Bool) : Void;
	
	/**
	* @see Serializer#setOutputFormat(Properties)
	*/
	@:overload @:public override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* @see Serializer#setOutputStream(OutputStream)
	*/
	@:overload @:public override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* @see Serializer#setWriter(Writer)
	*/
	@:overload @:public override public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload @:public override public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#attributeDecl(String, String, String, String, String)
	*/
	@:overload @:public override public function attributeDecl(arg0 : String, arg1 : String, arg2 : String, arg3 : String, arg4 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#elementDecl(String, String)
	*/
	@:overload @:public override public function elementDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl(String, String, String)
	*/
	@:overload @:public override public function externalEntityDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl(String, String)
	*/
	@:overload @:public override public function internalEntityDecl(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#endPrefixMapping(String)
	*/
	@:overload @:public override public function endPrefixMapping(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload @:public override public function ignorableWhitespace(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* From XSLTC
	* @see org.xml.sax.ContentHandler#processingInstruction(String, String)
	*/
	@:overload @:public override public function processingInstruction(arg0 : String, arg1 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#setDocumentLocator(Locator)
	*/
	@:overload @:public override public function setDocumentLocator(arg0 : org.xml.sax.Locator) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#skippedEntity(String)
	*/
	@:overload @:public override public function skippedEntity(arg0 : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#startElement(String, String, String, Attributes)
	*/
	@:overload @:public override public function startElement(arg0 : String, arg1 : String, arg2 : String, arg3 : org.xml.sax.Attributes) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload @:public override public function endCDATA() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endDTD()
	*/
	@:overload @:public override public function endDTD() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startCDATA()
	*/
	@:overload @:public override public function startCDATA() : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#startEntity(String)
	*/
	@:overload @:public override public function startEntity(arg0 : String) : Void;
	
	/**
	* From XSLTC
	* @see ExtendedContentHandler#startElement(String)
	*/
	@:overload @:public override public function startElement(elementNamespaceURI : String, elementLocalName : String, elementName : String) : Void;
	
	@:overload @:public override public function startElement(elementName : String) : Void;
	
	/**
	* From XSLTC
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload @:public override public function endDocument() : Void;
	
	/**
	*
	* @see ExtendedContentHandler#characters(String)
	*/
	@:overload @:public override public function characters(characters : String) : Void;
	
	/**
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload @:public override public function characters(characters : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* From XSLTC
	*/
	@:overload @:public override public function addAttribute(name : String, value : String) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	
}
