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
extern class SAX2StAXEventWriter extends com.sun.org.apache.xalan.internal.xsltc.trax.SAX2StAXBaseWriter
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(writer : javax.xml.stream.XMLEventWriter) : Void;
	
	@:overload @:public public function new(writer : javax.xml.stream.XMLEventWriter, factory : javax.xml.stream.XMLEventFactory) : Void;
	
	@:overload @:public public function getEventWriter() : javax.xml.stream.XMLEventWriter;
	
	@:overload @:public public function setEventWriter(writer : javax.xml.stream.XMLEventWriter) : Void;
	
	@:overload @:public public function getEventFactory() : javax.xml.stream.XMLEventFactory;
	
	@:overload @:public public function setEventFactory(factory : javax.xml.stream.XMLEventFactory) : Void;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public override public function endCDATA() : Void;
	
	@:overload @:protected private function createStartEvents(attributes : org.xml.sax.Attributes, events : java.NativeArray<java.util.Collection<Dynamic>>) : Void;
	
	@:overload @:protected private function createNamespace(prefix : String, uri : String) : javax.xml.stream.events.Namespace;
	
	
}
