package com.sun.xml.internal.bind.marshaller;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
//// @@3RD PARTY CODE@@
//// XMLWriter.java - serialize an XML document.
//// Written by David Megginson, david@megginson.com
//// NO WARRANTY!  This class is in the public domain.
//// Id: XMLWriter.java,v 1.5 2000/09/17 01:08:16 david Exp
extern class XMLWriter extends org.xml.sax.helpers.XMLFilterImpl
{
	/**
	* Create a new XML writer.
	*
	* <p>Write to the writer provided.</p>
	*
	* @param writer
	*      The output destination, or null to use standard output.
	* @param encoding
	*      If non-null string is specified, it is written as a part
	*      of the XML declaration.
	*/
	@:overload @:public public function new(writer : java.io.Writer, encoding : String, _escapeHandler : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler) : Void;
	
	@:overload @:public public function new(writer : java.io.Writer, encoding : String) : Void;
	
	/**
	* Reset the writer.
	*
	* <p>This method is especially useful if the writer throws an
	* exception before it is finished, and you want to reuse the
	* writer for a new document.  It is usually a good idea to
	* invoke {@link #flush flush} before resetting the writer,
	* to make sure that no output is lost.</p>
	*
	* <p>This method is invoked automatically by the
	* {@link #startDocument startDocument} method before writing
	* a new document.</p>
	*
	* <p><strong>Note:</strong> this method will <em>not</em>
	* clear the prefix or URI information in the writer or
	* the selected output writer.</p>
	*
	* @see #flush()
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Flush the output.
	*
	* <p>This method flushes the output stream.  It is especially useful
	* when you need to make certain that the entire document has
	* been written to output but do not want to close the output
	* stream.</p>
	*
	* <p>This method is invoked automatically by the
	* {@link #endDocument endDocument} method after writing a
	* document.</p>
	*
	* @see #reset()
	*/
	@:overload @:public public function flush() : Void;
	
	/**
	* Set a new output destination for the document.
	*
	* @param writer The output destination, or null to use
	*        standard output.
	* @see #flush()
	*/
	@:overload @:public public function setOutput(writer : java.io.Writer, _encoding : String) : Void;
	
	/**
	* Set whether the writer should print out the XML declaration
	* (&lt;?xml version='1.0' ... ?>).
	* <p>
	* This option is set to true by default.
	*/
	@:overload @:public public function setXmlDecl(_writeXmlDecl : Bool) : Void;
	
	/**
	* Sets the header string.
	*
	* This string will be written right after the xml declaration
	* without any escaping. Useful for generating a boiler-plate
	* DOCTYPE decl, PIs, and comments.
	*
	* @param _header
	*      passing null will work as if the empty string is passed.
	*/
	@:overload @:public public function setHeader(_header : String) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Write the XML declaration at the beginning of the document.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the XML declaration, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#startDocument()
	*/
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:protected private function writeXmlDecl(decl : String) : Void;
	
	/**
	* Write a newline at the end of the document.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the newline, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload @:public override public function endDocument() : Void;
	
	/**
	* Write a start tag.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @param uri The Namespace URI, or the empty string if none
	*        is available.
	* @param localName The element's local (unprefixed) name (required).
	* @param qName The element's qualified (prefixed) name, or the
	*        empty string is none is available.  This method will
	*        use the qName as a template for generating a prefix
	*        if necessary, but it is not guaranteed to use the
	*        same qName.
	* @param atts The element's attribute list (must not be null).
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the start tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)
	*/
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Write an end tag.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @param uri The Namespace URI, or the empty string if none
	*        is available.
	* @param localName The element's local (unprefixed) name (required).
	* @param qName The element's qualified (prefixed) name, or the
	*        empty string is none is available.  This method will
	*        use the qName as a template for generating a prefix
	*        if necessary, but it is not guaranteed to use the
	*        same qName.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the end tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#endElement(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Write character data.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @param ch The array of characters to write.
	* @param start The starting position in the array.
	* @param len The number of characters to write.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the characters, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	/**
	* Write ignorable whitespace.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @param ch The array of characters to write.
	* @param start The starting position in the array.
	* @param length The number of characters to write.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the whitespace, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Write a processing instruction.
	*
	* Pass the event on down the filter chain for further processing.
	*
	* @param target The PI target.
	* @param data The PI data.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the PI, or if a handler further down
	*            the filter chain raises an exception.
	* @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String, java.lang.String)
	*/
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Start a new element without a qname or attributes.
	*
	* <p>This method will provide a default empty attribute
	* list and an empty string for the qualified name.
	* It invokes {@link
	* #startElement(String, String, String, Attributes)}
	* directly.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the start tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #startElement(String, String, String, Attributes)
	*/
	@:overload @:public public function startElement(uri : String, localName : String) : Void;
	
	/**
	* Start a new element without a qname, attributes or a Namespace URI.
	*
	* <p>This method will provide an empty string for the
	* Namespace URI, and empty string for the qualified name,
	* and a default empty attribute list. It invokes
	* #startElement(String, String, String, Attributes)}
	* directly.</p>
	*
	* @param localName The element's local name.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the start tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #startElement(String, String, String, Attributes)
	*/
	@:overload @:public public function startElement(localName : String) : Void;
	
	/**
	* End an element without a qname.
	*
	* <p>This method will supply an empty string for the qName.
	* It invokes {@link #endElement(String, String, String)}
	* directly.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the end tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #endElement(String, String, String)
	*/
	@:overload @:public public function endElement(uri : String, localName : String) : Void;
	
	/**
	* End an element without a Namespace URI or qname.
	*
	* <p>This method will supply an empty string for the qName
	* and an empty string for the Namespace URI.
	* It invokes {@link #endElement(String, String, String)}
	* directly.</p>
	*
	* @param localName The element's local name.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the end tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #endElement(String, String, String)
	*/
	@:overload @:public public function endElement(localName : String) : Void;
	
	/**
	* Write an element with character data content.
	*
	* <p>This is a convenience method to write a complete element
	* with character data content, including the start tag
	* and end tag.</p>
	*
	* <p>This method invokes
	* {@link #startElement(String, String, String, Attributes)},
	* followed by
	* {@link #characters(String)}, followed by
	* {@link #endElement(String, String, String)}.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @param qName The element's default qualified name.
	* @param atts The element's attributes.
	* @param content The character data content.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the empty tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #startElement(String, String, String, Attributes)
	* @see #characters(String)
	* @see #endElement(String, String, String)
	*/
	@:overload @:public public function dataElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes, content : String) : Void;
	
	/**
	* Write an element with character data content but no attributes.
	*
	* <p>This is a convenience method to write a complete element
	* with character data content, including the start tag
	* and end tag.  This method provides an empty string
	* for the qname and an empty attribute list.</p>
	*
	* <p>This method invokes
	* {@link #startElement(String, String, String, Attributes)},
	* followed by
	* {@link #characters(String)}, followed by
	* {@link #endElement(String, String, String)}.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @param content The character data content.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the empty tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #startElement(String, String, String, Attributes)
	* @see #characters(String)
	* @see #endElement(String, String, String)
	*/
	@:overload @:public public function dataElement(uri : String, localName : String, content : String) : Void;
	
	/**
	* Write an element with character data content but no attributes or Namespace URI.
	*
	* <p>This is a convenience method to write a complete element
	* with character data content, including the start tag
	* and end tag.  The method provides an empty string for the
	* Namespace URI, and empty string for the qualified name,
	* and an empty attribute list.</p>
	*
	* <p>This method invokes
	* {@link #startElement(String, String, String, Attributes)},
	* followed by
	* {@link #characters(String)}, followed by
	* {@link #endElement(String, String, String)}.</p>
	*
	* @param localName The element's local name.
	* @param content The character data content.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the empty tag, or if a handler further down
	*            the filter chain raises an exception.
	* @see #startElement(String, String, String, Attributes)
	* @see #characters(String)
	* @see #endElement(String, String, String)
	*/
	@:overload @:public public function dataElement(localName : String, content : String) : Void;
	
	/**
	* Write a string of character data, with XML escaping.
	*
	* <p>This is a convenience method that takes an XML
	* String, converts it to a character array, then invokes
	* {@link #characters(char[], int, int)}.</p>
	*
	* @param data The character data.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the string, or if a handler further down
	*            the filter chain raises an exception.
	* @see #characters(char[], int, int)
	*/
	@:overload @:public public function characters(data : String) : Void;
	
	/**
	* Write a raw character.
	*
	* @param c The character to write.
	*/
	@:overload @:protected @:final private function write(c : java.StdTypes.Char16) : Void;
	
	/**
	* Write a raw string.
	*/
	@:overload @:protected @:final private function write(s : String) : Void;
	
	
}
