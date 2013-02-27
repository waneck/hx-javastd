package com.sun.xml.internal.stream.buffer.stax;
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
extern class StreamWriterBufferCreator extends com.sun.xml.internal.stream.buffer.stax.StreamBufferCreator implements com.sun.xml.internal.org.jvnet.staxex.XMLStreamWriterEx
{
	@:overload public function new() : Void;
	
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	@:overload public function getProperty(str : String) : Dynamic;
	
	@:overload public function close() : Void;
	
	@:overload public function flush() : Void;
	
	@:overload public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	@:overload public function setNamespaceContext(namespaceContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function setDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload public function setPrefix(prefix : String, namespaceURI : String) : Void;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function writeStartDocument() : Void;
	
	@:overload public function writeStartDocument(version : String) : Void;
	
	@:overload public function writeStartDocument(encoding : String, version : String) : Void;
	
	@:overload public function writeEndDocument() : Void;
	
	@:overload public function writeStartElement(localName : String) : Void;
	
	@:overload public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeEmptyElement(localName : String) : Void;
	
	@:overload public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeEndElement() : Void;
	
	@:overload public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	@:overload public function writeAttribute(localName : String, value : String) : Void;
	
	@:overload public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function writeCData(data : String) : Void;
	
	@:overload public function writeCharacters(charData : String) : Void;
	
	@:overload public function writeCharacters(buf : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload public function writeComment(str : String) : Void;
	
	@:overload public function writeDTD(str : String) : Void;
	
	@:overload public function writeEntityRef(str : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String, data : String) : Void;
	
	@:overload public function writePCDATA(charSequence : java.lang.CharSequence) : Void;
	
	@:overload public function writeBinary(bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, endpointURL : String) : Void;
	
	@:overload public function writeBinary(dataHandler : javax.activation.DataHandler) : Void;
	
	@:overload public function writeBinary(endpointURL : String) : java.io.OutputStream;
	
	
}
