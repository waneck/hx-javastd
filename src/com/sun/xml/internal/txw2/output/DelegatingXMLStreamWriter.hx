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
@:internal extern class DelegatingXMLStreamWriter implements javax.xml.stream.XMLStreamWriter
{
	@:overload @:public public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function writeStartElement(localName : String) : Void;
	
	@:overload @:public public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	@:overload @:public public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload @:public public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload @:public public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload @:public public function writeEmptyElement(localName : String) : Void;
	
	@:overload @:public public function writeEndElement() : Void;
	
	@:overload @:public public function writeEndDocument() : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function writeAttribute(localName : String, value : String) : Void;
	
	@:overload @:public public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload @:public public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload @:public public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	@:overload @:public public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload @:public public function writeComment(data : String) : Void;
	
	@:overload @:public public function writeProcessingInstruction(target : String) : Void;
	
	@:overload @:public public function writeProcessingInstruction(target : String, data : String) : Void;
	
	@:overload @:public public function writeCData(data : String) : Void;
	
	@:overload @:public public function writeDTD(dtd : String) : Void;
	
	@:overload @:public public function writeEntityRef(name : String) : Void;
	
	@:overload @:public public function writeStartDocument() : Void;
	
	@:overload @:public public function writeStartDocument(version : String) : Void;
	
	@:overload @:public public function writeStartDocument(encoding : String, version : String) : Void;
	
	@:overload @:public public function writeCharacters(text : String) : Void;
	
	@:overload @:public public function writeCharacters(text : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:public public function getPrefix(uri : String) : String;
	
	@:overload @:public public function setPrefix(prefix : String, uri : String) : Void;
	
	@:overload @:public public function setDefaultNamespace(uri : String) : Void;
	
	@:overload @:public public function setNamespaceContext(context : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	
}
