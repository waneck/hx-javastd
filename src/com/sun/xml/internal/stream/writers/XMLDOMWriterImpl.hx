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
extern class XMLDOMWriterImpl implements javax.xml.stream.XMLStreamWriter
{
	/**
	* Creates a new instance of XMLDOMwriterImpl
	* @param result DOMResult object @javax.xml.transform.dom.DOMResult
	*/
	@:overload @:public public function new(result : javax.xml.transform.dom.DOMResult) : Void;
	
	/**
	* This method has no effect when called.
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* This method has no effect when called.
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function flush() : Void;
	
	/**
	* {@inheritDoc}
	* @return {@inheritDoc}
	*/
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* {@inheritDoc}
	* @param namespaceURI {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	* @return {@inheritDoc}
	*/
	@:overload @:public public function getPrefix(namespaceURI : String) : String;
	
	/**
	* Is not supported in this implementation.
	* @param str {@inheritDoc}
	* @throws java.lang.IllegalArgumentException {@inheritDoc}
	* @return {@inheritDoc}
	*/
	@:overload @:public public function getProperty(str : String) : Dynamic;
	
	/**
	* Is not supported in this version of the implementation.
	* @param uri {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function setDefaultNamespace(uri : String) : Void;
	
	/**
	* {@inheritDoc}
	* @param namespaceContext {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function setNamespaceContext(namespaceContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* Is not supported in this version of the implementation.
	* @param prefix {@inheritDoc}
	* @param uri {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function setPrefix(prefix : String, uri : String) : Void;
	
	/**
	* Creates a DOM Atrribute @see org.w3c.dom.Node and associates it with the current DOM element @see org.w3c.dom.Node.
	* @param localName {@inheritDoc}
	* @param value {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeAttribute(localName : String, value : String) : Void;
	
	/**
	* Creates a DOM Atrribute @see org.w3c.dom.Node and associates it with the current DOM element @see org.w3c.dom.Node.
	* @param namespaceURI {@inheritDoc}
	* @param localName {@inheritDoc}
	* @param value {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	/**
	* Creates a DOM Atrribute @see org.w3c.dom.Node and associates it with the current DOM element @see org.w3c.dom.Node.
	* @param prefix {@inheritDoc}
	* @param namespaceURI {@inheritDoc}
	* @param localName {@inheritDoc}
	* @param value {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	/**
	* Creates a CDATA object @see org.w3c.dom.CDATASection.
	* @param data {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeCData(data : String) : Void;
	
	/**
	* Creates a character object @see org.w3c.dom.Text and appends it to the current
	* element in the DOM tree.
	* @param charData {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeCharacters(charData : String) : Void;
	
	/**
	* Creates a character object @see org.w3c.dom.Text and appends it to the current
	* element in the DOM tree.
	* @param values {@inheritDoc}
	* @param param {@inheritDoc}
	* @param param2 {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeCharacters(values : java.NativeArray<java.StdTypes.Char16>, param : Int, param2 : Int) : Void;
	
	/**
	* Creates a Comment object @see org.w3c.dom.Comment and appends it to the current
	* element in the DOM tree.
	* @param str {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeComment(str : String) : Void;
	
	/**
	* This method is not supported in this implementation.
	* @param str {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeDTD(str : String) : Void;
	
	/**
	* Creates a DOM attribute and adds it to the current element in the DOM tree.
	* @param namespaceURI {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param localName {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEmptyElement(localName : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param namespaceURI {@inheritDoc}
	* @param localName {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param prefix {@inheritDoc}
	* @param localName {@inheritDoc}
	* @param namespaceURI {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	/**
	* Will reset current Node pointer maintained by the implementation.
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEndDocument() : Void;
	
	/**
	* Internal current Node pointer will point to the parent of the current Node.
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEndElement() : Void;
	
	/**
	* Is not supported in this implementation.
	* @param name {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeEntityRef(name : String) : Void;
	
	/**
	* creates a namespace attribute and will associate it with the current element in
	* the DOM tree.
	* @param prefix {@inheritDoc}
	* @param namespaceURI {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	/**
	* is not supported in this release.
	* @param target {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeProcessingInstruction(target : String) : Void;
	
	/**
	* is not supported in this release.
	* @param target {@inheritDoc}
	* @param data {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeProcessingInstruction(target : String, data : String) : Void;
	
	/**
	* will set version on the Document object when the DOM Node passed to this implementation
	* supports DOM Level3 API's.
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartDocument() : Void;
	
	/**
	* will set version on the Document object when the DOM Node passed to this implementation
	* supports DOM Level3 API's.
	* @param version {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartDocument(version : String) : Void;
	
	/**
	* will set version on the Document object when the DOM Node passed to this implementation
	* supports DOM Level3 API's.
	* @param encoding {@inheritDoc}
	* @param version {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartDocument(encoding : String, version : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param localName {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartElement(localName : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param namespaceURI {@inheritDoc}
	* @param localName {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	/**
	* creates a DOM Element and appends it to the current element in the tree.
	* @param prefix {@inheritDoc}
	* @param localName {@inheritDoc}
	* @param namespaceURI {@inheritDoc}
	* @throws javax.xml.stream.XMLStreamException {@inheritDoc}
	*/
	@:overload @:public public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	
}
