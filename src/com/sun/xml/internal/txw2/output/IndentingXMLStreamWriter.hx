package com.sun.xml.internal.txw2.output;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IndentingXMLStreamWriter extends com.sun.xml.internal.txw2.output.DelegatingXMLStreamWriter
{
	@:overload @:public public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
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
	
	@:overload @:public override public function writeStartDocument() : Void;
	
	@:overload @:public override public function writeStartDocument(version : String) : Void;
	
	@:overload @:public override public function writeStartDocument(encoding : String, version : String) : Void;
	
	@:overload @:public override public function writeStartElement(localName : String) : Void;
	
	@:overload @:public override public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	@:overload @:public override public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload @:public override public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload @:public override public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload @:public override public function writeEmptyElement(localName : String) : Void;
	
	@:overload @:public override public function writeEndElement() : Void;
	
	@:overload @:public override public function writeCharacters(text : String) : Void;
	
	@:overload @:public override public function writeCharacters(text : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:public override public function writeCData(data : String) : Void;
	
	
}
