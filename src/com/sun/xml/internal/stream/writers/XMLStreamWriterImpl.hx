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
extern class XMLStreamWriterImpl extends java.util.AbstractMap<Dynamic, Dynamic> implements javax.xml.stream.XMLStreamWriter
{
	/**
	* This class implements a StAX XMLStreamWriter. It extends
	* <code>AbstractMap</code> in order to support a getter for
	* implementation-specific properties. For example, you can get
	* the underlying <code>OutputStream</code> by casting an instance
	* of this class to <code>Map</code> and calling
	* <code>getProperty(OUTPUTSTREAM_PROPERTY)</code>.
	*
	* @author Neeraj Bajaj
	* @author K.Venugopal
	* @author Santiago.Pericas-Geertsen@sun.com
	* @author Sunitha.Reddy@sun.com
	*/
	@:public @:static @:final public static var START_COMMENT(default, null) : String;
	
	@:public @:static @:final public static var END_COMMENT(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_ENCODING(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_XMLDECL(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_XML_VERSION(default, null) : String;
	
	@:public @:static @:final public static var CLOSE_START_TAG(default, null) : java.StdTypes.Char16;
	
	@:public @:static @:final public static var OPEN_START_TAG(default, null) : java.StdTypes.Char16;
	
	@:public @:static @:final public static var OPEN_END_TAG(default, null) : String;
	
	@:public @:static @:final public static var CLOSE_END_TAG(default, null) : java.StdTypes.Char16;
	
	@:public @:static @:final public static var START_CDATA(default, null) : String;
	
	@:public @:static @:final public static var END_CDATA(default, null) : String;
	
	@:public @:static @:final public static var CLOSE_EMPTY_ELEMENT(default, null) : String;
	
	@:public @:static @:final public static var SPACE(default, null) : String;
	
	@:public @:static @:final public static var UTF_8(default, null) : String;
	
	@:public @:static @:final public static var OUTPUTSTREAM_PROPERTY(default, null) : String;
	
	/**
	* Creates a new instance of XMLStreamWriterImpl. Uses platform's default
	* encoding.
	*
	* @param outputStream Underlying stream to write the bytes to
	* @param props        Properties used by this writer
	*/
	@:overload @:public public function new(outputStream : java.io.OutputStream, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Creates a new instance of XMLStreamWriterImpl.
	*
	* @param outputStream Underlying stream to write the bytes
	* @param encoding     Encoding used to convert chars into bytes
	* @param props        Properties used by this writer
	*/
	@:overload @:public public function new(outputStream : java.io.OutputStream, encoding : String, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Creates a new instance of XMLStreamWriterImpl using a Writer.
	*
	* @param writer  Underlying writer to which chars are written
	* @param props   Properties used by this writer
	*/
	@:overload @:public public function new(writer : java.io.Writer, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Creates a new instance of XMLStreamWriterImpl using a StreamResult.
	* A StreamResult encasupates an OutputStream, a Writer or a SystemId.
	*
	* @param writer  Underlying writer to which chars are written
	* @param props   Properties used by this writer
	*/
	@:overload @:public public function new(sr : javax.xml.transform.stream.StreamResult, encoding : String, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Reset this instance so that it can be re-used. Do not read properties
	* again. The method <code>setOutput(StreamResult, encoding)</code> must
	* be called after this one.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Use a StreamResult to initialize the output for this XMLStreamWriter. Check
	* for OutputStream, Writer and then systemId, in that order.
	*
	* @param sr        StreamResult encapsulating output information
	* @param encoding  Encoding to be used except when a Writer is available
	*/
	@:overload @:public public function setOutput(sr : javax.xml.transform.stream.StreamResult, encoding : String) : Void;
	
	/** Can this instance be reused
	*
	* @return boolean boolean value to indicate if this instance can be reused or not
	*/
	@:overload @:public public function canReuse() : Bool;
	
	@:overload @:public public function setEscapeCharacters(escape : Bool) : Void;
	
	@:overload @:public public function getEscapeCharacters() : Bool;
	
	/**
	* Close this XMLStreamWriter by closing underlying writer.
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Flush this XMLStreamWriter by flushin underlying writer.
	*/
	@:overload @:public public function flush() : Void;
	
	/**
	* Return <code>NamespaceContext</code> being used by the writer.
	*
	* @return NamespaceContext
	*/
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* Return a prefix associated with specified uri, or null if the
	* uri is unknown.
	*
	* @param  uri The namespace uri
	* @throws XMLStreamException if uri specified is "" or null
	*/
	@:overload @:public public function getPrefix(uri : String) : String;
	
	/**
	* Returns value associated with the specified property name.
	*
	* @param  str Property name
	* @throws IllegalArgumentException if the specified property is not supported
	* @return value associated with the specified property.
	*/
	@:overload @:public public function getProperty(str : String) : Dynamic;
	
	/**
	* Set the specified URI as default namespace in the current namespace context.
	*
	* @param uri Namespace URI
	*/
	@:overload @:public public function setDefaultNamespace(uri : String) : Void;
	
	/**
	* Sets the current <code>NamespaceContext</code> for prefix and uri bindings.
	* This context becomes the root namespace context for writing and
	* will replace the current root namespace context. Subsequent calls
	* to setPrefix and setDefaultNamespace will bind namespaces using
	* the context passed to the method as the root context for resolving
	* namespaces. This method may only be called once at the start of the
	* document. It does not cause the namespaces to be declared. If a
	* namespace URI to prefix mapping is found in the namespace context
	* it is treated as declared and the prefix may be used by the
	* <code>XMLStreamWriter</code>.
	*
	* @param namespaceContext the namespace context to use for this writer, may not be null
	* @throws XMLStreamException
	*/
	@:overload @:public public function setNamespaceContext(namespaceContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* Sets the prefix the uri is bound to. This prefix is bound in the scope of
	* the current START_ELEMENT / END_ELEMENT pair. If this method is called before
	* a START_ELEMENT has been written the prefix is bound in the root scope.
	*
	* @param prefix
	* @param uri
	* @throws XMLStreamException
	*/
	@:overload @:public public function setPrefix(prefix : String, uri : String) : Void;
	
	@:overload @:public public function writeAttribute(localName : String, value : String) : Void;
	
	@:overload @:public public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload @:public public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload @:public public function writeCData(cdata : String) : Void;
	
	@:overload @:public public function writeCharacters(data : String) : Void;
	
	@:overload @:public public function writeCharacters(data : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:public public function writeComment(comment : String) : Void;
	
	@:overload @:public public function writeDTD(dtd : String) : Void;
	
	/*
	* Write default Namespace.
	*
	* If namespaceURI == null,
	* then it is assumed to be equivilent to {@link XMLConstants.NULL_NS_URI},
	* i.e. there is no Namespace.
	*
	* @param namespaceURI NamespaceURI to declare.
	*
	* @throws XMLStreamException
	*
	* @see <a href="http://www.w3.org/TR/REC-xml-names/#defaulting">
	*   Namespaces in XML, 5.2 Namespace Defaulting</a>
	*/
	@:overload @:public public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload @:public public function writeEmptyElement(localName : String) : Void;
	
	@:overload @:public public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload @:public public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload @:public public function writeEndDocument() : Void;
	
	@:overload @:public public function writeEndElement() : Void;
	
	@:overload @:public public function writeEntityRef(refName : String) : Void;
	
	/**
	* Write a Namespace declaration.
	*
	* If namespaceURI == null,
	* then it is assumed to be equivilent to {@link XMLConstants.NULL_NS_URI},
	* i.e. there is no Namespace.
	*
	* @param prefix Prefix to bind.
	* @param namespaceURI NamespaceURI to declare.
	*
	* @throws XMLStreamException
	*
	* @see <a href="http://www.w3.org/TR/REC-xml-names/#defaulting">
	*   Namespaces in XML, 5.2 Namespace Defaulting</a>
	*/
	@:overload @:public public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	@:overload @:public public function writeProcessingInstruction(target : String) : Void;
	
	/**
	* @param target
	* @param data
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeProcessingInstruction(target : String, data : String) : Void;
	
	/**
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartDocument() : Void;
	
	/**
	* @param version
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartDocument(version : String) : Void;
	
	/**
	* @param encoding
	* @param version
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartDocument(encoding : String, version : String) : Void;
	
	/**
	* @param localName
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartElement(localName : String) : Void;
	
	/**
	* @param namespaceURI
	* @param localName
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	/**
	* @param prefix
	* @param localName
	* @param namespaceURI
	* @throws XMLStreamException
	*/
	@:overload @:public public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	/**
	* Correct's namespaces  as per requirements of isReparisingNamespace property.
	*/
	@:overload @:protected private function repair() : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the value associated to an implementation-specific
	* property.
	*/
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	@:overload @:public override public function entrySet() : java.util.Set<Dynamic>;
	
	/**
	* Overrides the method defined in AbstractMap which is
	* not completely implemented. Calling toString() in
	* AbstractMap would cause an unsupported exection to
	* be thrown.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Overrides the method defined in AbstractMap
	* This is required by the toString() method
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Overrides the method defined in AbstractMap
	* This is required to satisfy the contract for hashCode.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	
}
/*
* Start of Internal classes.
*
*/
@:native('com$sun$xml$internal$stream$writers$XMLStreamWriterImpl$ElementStack') extern class XMLStreamWriterImpl_ElementStack
{
	/** The stack data. */
	@:protected private var fElements : java.NativeArray<com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState>;
	
	/** The size of the stack. */
	@:protected private var fDepth : java.StdTypes.Int16;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Pushes an element on the stack.
	* <p>
	* <strong>Note:</strong> The QName values are copied into the
	* stack. In other words, the caller does <em>not</em> orphan
	* the element to the stack. Also, the QName object returned
	* is <em>not</em> orphaned to the caller. It should be
	* considered read-only.
	*
	* @param element The element to push onto the stack.
	*
	* @return Returns the actual QName object that stores the
	*/
	@:overload @:public public function push(element : com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState) : com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState;
	
	/**
	*
	* @param prefix
	* @param localpart
	* @param rawname
	* @param uri
	* @param isEmpty
	* @return
	*/
	@:overload @:public public function push(prefix : String, localpart : String, rawname : String, uri : String, isEmpty : Bool) : com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState;
	
	/**
	* Pops an element off of the stack by setting the values of
	* the specified QName.
	* <p>
	* <strong>Note:</strong> The object returned is <em>not</em>
	* orphaned to the caller. Therefore, the caller should consider
	* the object to be read-only.
	*/
	@:overload @:public public function pop() : com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState;
	
	/** Clears the stack without throwing away existing QName objects. */
	@:overload @:public public function clear() : Void;
	
	/**
	* This function is as a result of optimization done for endElement --
	* we dont need to set the value for every end element we encouter.
	* For Well formedness checks we can have the same QName object that was pushed.
	* the values will be set only if application need to know about the endElement
	* -- neeraj.bajaj@sun.com
	*/
	@:overload @:public public function peek() : com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.XMLStreamWriterImpl_ElementState;
	
	/**
	*
	* @return
	*/
	@:overload @:public public function empty() : Bool;
	
	
}
/**
* Maintains element state . localName for now.
*/
@:native('com$sun$xml$internal$stream$writers$XMLStreamWriterImpl$ElementState') @:internal extern class XMLStreamWriterImpl_ElementState extends com.sun.org.apache.xerces.internal.xni.QName
{
	@:public public var isEmpty : Bool;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(prefix : String, localpart : String, rawname : String, uri : String) : Void;
	
	@:overload @:public public function setValues(prefix : String, localpart : String, rawname : String, uri : String, isEmpty : Bool) : Void;
	
	
}
/**
* Attributes
*/
@:native('com$sun$xml$internal$stream$writers$XMLStreamWriterImpl$Attribute') @:internal extern class XMLStreamWriterImpl_Attribute extends com.sun.org.apache.xerces.internal.xni.QName
{
	
}
/**
* Implementation of NamespaceContext .
*
*/
@:native('com$sun$xml$internal$stream$writers$XMLStreamWriterImpl$NamespaceContextImpl') @:internal extern class XMLStreamWriterImpl_NamespaceContextImpl implements javax.xml.namespace.NamespaceContext
{
	@:overload @:public public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public public function getPrefix(uri : String) : String;
	
	@:overload @:public public function getPrefixes(uri : String) : java.util.Iterator<Dynamic>;
	
	
}
