package javax.xml.stream;
/*
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
/*
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern interface XMLStreamWriter
{
	/**
	* Writes a start tag to the output.  All writeStartElement methods
	* open a new scope in the internal namespace context.  Writing the
	* corresponding EndElement causes the scope to be closed.
	* @param localName local name of the tag, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeStartElement(localName : String) : Void;
	
	/**
	* Writes a start tag to the output
	* @param namespaceURI the namespaceURI of the prefix to use, may not be null
	* @param localName local name of the tag, may not be null
	* @throws XMLStreamException if the namespace URI has not been bound to a prefix and
	* javax.xml.stream.isRepairingNamespaces has not been set to true
	*/
	@:overload public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	/**
	* Writes a start tag to the output
	* @param localName local name of the tag, may not be null
	* @param prefix the prefix of the tag, may not be null
	* @param namespaceURI the uri to bind the prefix to, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	/**
	* Writes an empty element tag to the output
	* @param namespaceURI the uri to bind the tag to, may not be null
	* @param localName local name of the tag, may not be null
	* @throws XMLStreamException if the namespace URI has not been bound to a prefix and
	* javax.xml.stream.isRepairingNamespaces has not been set to true
	*/
	@:overload public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	/**
	* Writes an empty element tag to the output
	* @param prefix the prefix of the tag, may not be null
	* @param localName local name of the tag, may not be null
	* @param namespaceURI the uri to bind the tag to, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	/**
	* Writes an empty element tag to the output
	* @param localName local name of the tag, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeEmptyElement(localName : String) : Void;
	
	/**
	* Writes an end tag to the output relying on the internal
	* state of the writer to determine the prefix and local name
	* of the event.
	* @throws XMLStreamException
	*/
	@:overload public function writeEndElement() : Void;
	
	/**
	* Closes any start tags and writes corresponding end tags.
	* @throws XMLStreamException
	*/
	@:overload public function writeEndDocument() : Void;
	
	/**
	* Close this writer and free any resources associated with the
	* writer.  This must not close the underlying output stream.
	* @throws XMLStreamException
	*/
	@:overload public function close() : Void;
	
	/**
	* Write any cached data to the underlying output mechanism.
	* @throws XMLStreamException
	*/
	@:overload public function flush() : Void;
	
	/**
	* Writes an attribute to the output stream without
	* a prefix.
	* @param localName the local name of the attribute
	* @param value the value of the attribute
	* @throws IllegalStateException if the current state does not allow Attribute writing
	* @throws XMLStreamException
	*/
	@:overload public function writeAttribute(localName : String, value : String) : Void;
	
	/**
	* Writes an attribute to the output stream
	* @param prefix the prefix for this attribute
	* @param namespaceURI the uri of the prefix for this attribute
	* @param localName the local name of the attribute
	* @param value the value of the attribute
	* @throws IllegalStateException if the current state does not allow Attribute writing
	* @throws XMLStreamException if the namespace URI has not been bound to a prefix and
	* javax.xml.stream.isRepairingNamespaces has not been set to true
	*/
	@:overload public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	/**
	* Writes an attribute to the output stream
	* @param namespaceURI the uri of the prefix for this attribute
	* @param localName the local name of the attribute
	* @param value the value of the attribute
	* @throws IllegalStateException if the current state does not allow Attribute writing
	* @throws XMLStreamException if the namespace URI has not been bound to a prefix and
	* javax.xml.stream.isRepairingNamespaces has not been set to true
	*/
	@:overload public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	/**
	* Writes a namespace to the output stream
	* If the prefix argument to this method is the empty string,
	* "xmlns", or null this method will delegate to writeDefaultNamespace
	*
	* @param prefix the prefix to bind this namespace to
	* @param namespaceURI the uri to bind the prefix to
	* @throws IllegalStateException if the current state does not allow Namespace writing
	* @throws XMLStreamException
	*/
	@:overload public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	/**
	* Writes the default namespace to the stream
	* @param namespaceURI the uri to bind the default namespace to
	* @throws IllegalStateException if the current state does not allow Namespace writing
	* @throws XMLStreamException
	*/
	@:overload public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	/**
	* Writes an xml comment with the data enclosed
	* @param data the data contained in the comment, may be null
	* @throws XMLStreamException
	*/
	@:overload public function writeComment(data : String) : Void;
	
	/**
	* Writes a processing instruction
	* @param target the target of the processing instruction, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeProcessingInstruction(target : String) : Void;
	
	/**
	* Writes a processing instruction
	* @param target the target of the processing instruction, may not be null
	* @param data the data contained in the processing instruction, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeProcessingInstruction(target : String, data : String) : Void;
	
	/**
	* Writes a CData section
	* @param data the data contained in the CData Section, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function writeCData(data : String) : Void;
	
	/**
	* Write a DTD section.  This string represents the entire doctypedecl production
	* from the XML 1.0 specification.
	*
	* @param dtd the DTD to be written
	* @throws XMLStreamException
	*/
	@:overload public function writeDTD(dtd : String) : Void;
	
	/**
	* Writes an entity reference
	* @param name the name of the entity
	* @throws XMLStreamException
	*/
	@:overload public function writeEntityRef(name : String) : Void;
	
	/**
	* Write the XML Declaration. Defaults the XML version to 1.0, and the encoding to utf-8
	* @throws XMLStreamException
	*/
	@:overload public function writeStartDocument() : Void;
	
	/**
	* Write the XML Declaration. Defaults the XML version to 1.0
	* @param version version of the xml document
	* @throws XMLStreamException
	*/
	@:overload public function writeStartDocument(version : String) : Void;
	
	/**
	* Write the XML Declaration.  Note that the encoding parameter does
	* not set the actual encoding of the underlying output.  That must
	* be set when the instance of the XMLStreamWriter is created using the
	* XMLOutputFactory
	* @param encoding encoding of the xml declaration
	* @param version version of the xml document
	* @throws XMLStreamException If given encoding does not match encoding
	* of the underlying stream
	*/
	@:overload public function writeStartDocument(encoding : String, version : String) : Void;
	
	/**
	* Write text to the output
	* @param text the value to write
	* @throws XMLStreamException
	*/
	@:overload public function writeCharacters(text : String) : Void;
	
	/**
	* Write text to the output
	* @param text the value to write
	* @param start the starting position in the array
	* @param len the number of characters to write
	* @throws XMLStreamException
	*/
	@:overload public function writeCharacters(text : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	/**
	* Gets the prefix the uri is bound to
	* @return the prefix or null
	* @throws XMLStreamException
	*/
	@:overload public function getPrefix(uri : String) : String;
	
	/**
	* Sets the prefix the uri is bound to.  This prefix is bound
	* in the scope of the current START_ELEMENT / END_ELEMENT pair.
	* If this method is called before a START_ELEMENT has been written
	* the prefix is bound in the root scope.
	* @param prefix the prefix to bind to the uri, may not be null
	* @param uri the uri to bind to the prefix, may be null
	* @throws XMLStreamException
	*/
	@:overload public function setPrefix(prefix : String, uri : String) : Void;
	
	/**
	* Binds a URI to the default namespace
	* This URI is bound
	* in the scope of the current START_ELEMENT / END_ELEMENT pair.
	* If this method is called before a START_ELEMENT has been written
	* the uri is bound in the root scope.
	* @param uri the uri to bind to the default namespace, may be null
	* @throws XMLStreamException
	*/
	@:overload public function setDefaultNamespace(uri : String) : Void;
	
	/**
	* Sets the current namespace context for prefix and uri bindings.
	* This context becomes the root namespace context for writing and
	* will replace the current root namespace context.  Subsequent calls
	* to setPrefix and setDefaultNamespace will bind namespaces using
	* the context passed to the method as the root context for resolving
	* namespaces.  This method may only be called once at the start of
	* the document.  It does not cause the namespaces to be declared.
	* If a namespace URI to prefix mapping is found in the namespace
	* context it is treated as declared and the prefix may be used
	* by the StreamWriter.
	* @param context the namespace context to use for this writer, may not be null
	* @throws XMLStreamException
	*/
	@:overload public function setNamespaceContext(context : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* Returns the current namespace context.
	* @return the current NamespaceContext
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* Get the value of a feature/property from the underlying implementation
	* @param name The name of the property, may not be null
	* @return The value of the property
	* @throws IllegalArgumentException if the property is not supported
	* @throws NullPointerException if the name is null
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	
}
