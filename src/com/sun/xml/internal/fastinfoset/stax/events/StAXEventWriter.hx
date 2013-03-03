package com.sun.xml.internal.fastinfoset.stax.events;
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
extern class StAXEventWriter implements javax.xml.stream.XMLEventWriter
{
	/**
	*
	* @param streamWriter
	*/
	@:overload @:public public function new(streamWriter : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes any cached events to the underlying output mechanism
	* @throws XMLStreamException
	*/
	@:overload @:public public function flush() : Void;
	
	/**
	* Frees any resources associated with this stream
	* @throws XMLStreamException
	*/
	@:overload @:public public function close() : Void;
	
	/**
	*
	* @param eventReader
	* @throws XMLStreamException
	*/
	@:overload @:public public function add(eventReader : javax.xml.stream.XMLEventReader) : Void;
	
	/**
	* Add an event to the output stream
	* Adding a START_ELEMENT will open a new namespace scope that
	* will be closed when the corresponding END_ELEMENT is written.
	*
	* @param event
	* @throws XMLStreamException
	*/
	@:overload @:public public function add(event : javax.xml.stream.events.XMLEvent) : Void;
	
	/**
	* Gets the prefix the uri is bound to
	* @param uri the uri to look up
	* @throws XMLStreamException
	*/
	@:overload @:public public function getPrefix(uri : String) : String;
	
	/**
	* Returns the current namespace context.
	* @return the current namespace context
	*/
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* Binds a URI to the default namespace
	* This URI is bound
	* in the scope of the current START_ELEMENT / END_ELEMENT pair.
	* If this method is called before a START_ELEMENT has been written
	* the uri is bound in the root scope.
	* @param uri the uri to bind to the default namespace
	* @throws XMLStreamException
	*/
	@:overload @:public public function setDefaultNamespace(uri : String) : Void;
	
	/**
	* Sets the current namespace context for prefix and uri bindings.
	* This context becomes the root namespace context for writing and
	* will replace the current root namespace context.  Subsequent calls
	* to setPrefix and setDefaultNamespace will bind namespaces using
	* the context passed to the method as the root context for resolving
	* namespaces.
	* @param namespaceContext the namespace context to use for this writer
	* @throws XMLStreamException
	*/
	@:overload @:public public function setNamespaceContext(namespaceContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* Sets the prefix the uri is bound to.  This prefix is bound
	* in the scope of the current START_ELEMENT / END_ELEMENT pair.
	* If this method is called before a START_ELEMENT has been written
	* the prefix is bound in the root scope.
	* @param prefix the prefix to bind to the uri
	* @param uri the uri to bind to the prefix
	* @throws XMLStreamException
	*/
	@:overload @:public public function setPrefix(prefix : String, uri : String) : Void;
	
	
}
