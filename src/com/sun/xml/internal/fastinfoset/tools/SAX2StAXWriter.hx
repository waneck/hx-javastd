package com.sun.xml.internal.fastinfoset.tools;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class SAX2StAXWriter extends org.xml.sax.helpers.DefaultHandler implements org.xml.sax.ext.LexicalHandler
{
	@:overload @:public public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function getWriter() : javax.xml.stream.XMLStreamWriter;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public override public function skippedEntity(name : String) : Void;
	
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	
}
