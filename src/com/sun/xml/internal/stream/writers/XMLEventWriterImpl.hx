package com.sun.xml.internal.stream.writers;
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
extern class XMLEventWriterImpl implements javax.xml.stream.XMLEventWriter
{
	/**
	*
	* @param streamWriter
	*/
	@:overload public function new(streamWriter : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	*
	* @param xMLEventReader
	* @throws XMLStreamException
	*/
	@:overload public function add(xMLEventReader : javax.xml.stream.XMLEventReader) : Void;
	
	/**
	*
	* @param xMLEvent
	* @throws XMLStreamException
	*/
	@:overload public function add(xMLEvent : javax.xml.stream.events.XMLEvent) : Void;
	
	/**
	*
	* @throws XMLStreamException
	*/
	@:overload public function close() : Void;
	
	/**
	*
	* @throws XMLStreamException will inturn call flush on the stream to which data is being
	* written.
	*/
	@:overload public function flush() : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	*
	* @param namespaceURI Namespace URI
	* @throws XMLStreamException
	* @return prefix associated with the URI.
	*/
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	/**
	*
	* @param uri Namespace URI
	* @throws XMLStreamException
	*/
	@:overload public function setDefaultNamespace(uri : String) : Void;
	
	/**
	*
	* @param namespaceContext Namespace Context
	* @throws XMLStreamException
	*/
	@:overload public function setNamespaceContext(namespaceContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	*
	* @param prefix namespace prefix associated with the uri.
	* @param uri Namespace URI
	* @throws XMLStreamException
	*/
	@:overload public function setPrefix(prefix : String, uri : String) : Void;
	
	
}
