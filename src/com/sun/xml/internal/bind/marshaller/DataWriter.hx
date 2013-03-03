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
////@@3RD PARTY CODE@@
//// DataWriter.java - XML writer for data-oriented files.
extern class DataWriter extends com.sun.xml.internal.bind.marshaller.XMLWriter
{
	/**
	* Create a new data writer for the specified output.
	*
	* @param writer The character stream where the XML document
	*        will be written.
	* @param encoding
	*      If non-null string is specified, it is written as a part
	*      of the XML declaration.
	*/
	@:overload @:public public function new(writer : java.io.Writer, encoding : String, _escapeHandler : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler) : Void;
	
	@:overload @:public public function new(writer : java.io.Writer, encoding : String) : Void;
	
	/**
	* Return the current indent step.
	*
	* <p>Return the current indent step: each start tag will be
	* indented by this number of spaces times the number of
	* ancestors that the element has.</p>
	*
	* @return The number of spaces in each indentation step,
	*         or 0 or less for no indentation.
	* @see #setIndentStep(int)
	*
	* @deprecated
	*      Only return the length of the indent string.
	*/
	@:overload @:public public function getIndentStep() : Int;
	
	/**
	* Set the current indent step.
	*
	* @param indentStep The new indent step (0 or less for no
	*        indentation).
	* @see #getIndentStep()
	*
	* @deprecated
	*      Should use the version that takes string.
	*/
	@:overload @:public public function setIndentStep(indentStep : Int) : Void;
	
	@:overload @:public public function setIndentStep(s : String) : Void;
	
	/**
	* Reset the writer so that it can be reused.
	*
	* <p>This method is especially useful if the writer failed
	* with an exception the last time through.</p>
	*
	* @see XMLWriter#reset()
	*/
	@:overload @:public override public function reset() : Void;
	
	@:overload @:protected override private function writeXmlDecl(decl : String) : Void;
	
	/**
	* Write a start tag.
	*
	* <p>Each tag will begin on a new line, and will be
	* indented by the current indent step times the number
	* of ancestors that the element has.</p>
	*
	* <p>The newline and indentation will be passed on down
	* the filter chain through regular characters events.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @param qName The element's qualified (prefixed) name.
	* @param atts The element's attribute list.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the start tag, or if a filter further
	*            down the chain raises an exception.
	* @see XMLWriter#startElement(String, String, String, Attributes)
	*/
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Write an end tag.
	*
	* <p>If the element has contained other elements, the tag
	* will appear indented on a new line; otherwise, it will
	* appear immediately following whatever came before.</p>
	*
	* <p>The newline and indentation will be passed on down
	* the filter chain through regular characters events.</p>
	*
	* @param uri The element's Namespace URI.
	* @param localName The element's local name.
	* @param qName The element's qualified (prefixed) name.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the end tag, or if a filter further
	*            down the chain raises an exception.
	* @see XMLWriter#endElement(String, String, String)
	*/
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	/**
	* Write a sequence of characters.
	*
	* @param ch The characters to write.
	* @param start The starting position in the array.
	* @param length The number of characters to use.
	* @exception org.xml.sax.SAXException If there is an error
	*            writing the characters, or if a filter further
	*            down the chain raises an exception.
	* @see XMLWriter#characters(char[], int, int)
	*/
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
