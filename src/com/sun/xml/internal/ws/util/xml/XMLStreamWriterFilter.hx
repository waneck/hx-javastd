package com.sun.xml.internal.ws.util.xml;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamWriterFilter implements javax.xml.stream.XMLStreamWriter implements com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory.XMLStreamWriterFactory_RecycleAware
{
	/**
	* {@link XMLStreamWriter} that delegates to another {@link XMLStreamWriter}.
	*
	* <p>
	* This class isn't very useful by itself, but works as a base class
	* for {@link XMLStreamWriter} filtering.
	*
	* @author Kohsuke Kawaguchi
	*/
	private var writer : javax.xml.stream.XMLStreamWriter;
	
	@:overload public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function flush() : Void;
	
	@:overload public function writeEndDocument() : Void;
	
	@:overload public function writeEndElement() : Void;
	
	@:overload public function writeStartDocument() : Void;
	
	@:overload public function writeCharacters(text : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload public function setDefaultNamespace(uri : String) : Void;
	
	@:overload public function writeCData(data : String) : Void;
	
	@:overload public function writeCharacters(text : String) : Void;
	
	@:overload public function writeComment(data : String) : Void;
	
	@:overload public function writeDTD(dtd : String) : Void;
	
	@:overload public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload public function writeEmptyElement(localName : String) : Void;
	
	@:overload public function writeEntityRef(name : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String) : Void;
	
	@:overload public function writeStartDocument(version : String) : Void;
	
	@:overload public function writeStartElement(localName : String) : Void;
	
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function setNamespaceContext(context : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function getPrefix(uri : String) : String;
	
	@:overload public function setPrefix(prefix : String, uri : String) : Void;
	
	@:overload public function writeAttribute(localName : String, value : String) : Void;
	
	@:overload public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String, data : String) : Void;
	
	@:overload public function writeStartDocument(encoding : String, version : String) : Void;
	
	@:overload public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function onRecycled() : Void;
	
	
}
