package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SAX2StAXStreamWriter extends com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter
{
	@:overload public function new() : Void;
	
	@:overload public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload public function getStreamWriter() : javax.xml.stream.XMLStreamWriter;
	
	@:overload public function setStreamWriter(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function endCDATA() : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	
}
