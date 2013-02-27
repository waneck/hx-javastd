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
extern class StreamReaderBufferProcessor extends com.sun.xml.internal.stream.buffer.AbstractProcessor implements com.sun.xml.internal.org.jvnet.staxex.XMLStreamReaderEx
{
	private var _stack : java.NativeArray<StreamReaderBufferProcessor_ElementStackEntry>;
	
	/** The top-most active entry of the {@link #_stack}. */
	private var _stackTop : StreamReaderBufferProcessor_ElementStackEntry;
	
	/** The element depth that we are in. Used to determine when we are done with a tree. */
	private var _depth : Int;
	
	/**
	* Namespace prefixes. Can be empty but not null.
	*/
	private var _namespaceAIIsPrefix : java.NativeArray<String>;
	
	private var _namespaceAIIsNamespaceName : java.NativeArray<String>;
	
	private var _namespaceAIIsEnd : Int;
	
	private var _nsCtx : StreamReaderBufferProcessor_InternalNamespaceContext;
	
	private var _eventType : Int;
	
	/**
	* Holder of the attributes.
	*
	* Be careful that this follows the SAX convention of using "" instead of null.
	*/
	private var _attributeCache : com.sun.xml.internal.stream.buffer.AttributesHolder;
	
	private var _charSequence : java.lang.CharSequence;
	
	private var _characters : java.NativeArray<java.StdTypes.Char16>;
	
	private var _textOffset : Int;
	
	private var _textLen : Int;
	
	private var _piTarget : String;
	
	private var _piData : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	@:overload public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* Does {@link #nextTag()} and if the parser moved to a new start tag,
	* returns a {@link XMLStreamBufferMark} that captures the infoset starting
	* from the newly discovered element.
	*
	* <p>
	* (Ideally we should have a method that works against the current position,
	* but the way the data structure is read makes this somewhat difficult.)
	*
	* This creates a new {@link XMLStreamBufferMark} that shares the underlying
	* data storage, thus it's fairly efficient.
	*/
	@:overload public function nextTagAndMark() : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function next() : Int;
	
	@:overload @:final public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	@:overload @:final public function getElementTextTrim() : String;
	
	@:overload @:final public function getElementText() : String;
	
	@:overload @:final public function getElementText(startElementRead : Bool) : String;
	
	@:overload @:final public function nextTag() : Int;
	
	@:overload @:final public function nextTag(currentTagRead : Bool) : Int;
	
	@:overload @:final public function hasNext() : Bool;
	
	@:overload public function close() : Void;
	
	@:overload @:final public function isStartElement() : Bool;
	
	@:overload @:final public function isEndElement() : Bool;
	
	@:overload @:final public function isCharacters() : Bool;
	
	@:overload @:final public function isWhiteSpace() : Bool;
	
	@:overload @:final public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	@:overload @:final public function getAttributeCount() : Int;
	
	@:overload @:final public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	@:overload @:final public function getAttributeNamespace(index : Int) : String;
	
	@:overload @:final public function getAttributeLocalName(index : Int) : String;
	
	@:overload @:final public function getAttributePrefix(index : Int) : String;
	
	@:overload @:final public function getAttributeType(index : Int) : String;
	
	@:overload @:final public function getAttributeValue(index : Int) : String;
	
	@:overload @:final public function isAttributeSpecified(index : Int) : Bool;
	
	@:overload @:final public function getNamespaceCount() : Int;
	
	@:overload @:final public function getNamespacePrefix(index : Int) : String;
	
	@:overload @:final public function getNamespaceURI(index : Int) : String;
	
	@:overload @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:final public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	@:overload @:final public function getEventType() : Int;
	
	@:overload @:final public function getText() : String;
	
	@:overload @:final public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:final public function getTextStart() : Int;
	
	@:overload @:final public function getTextLength() : Int;
	
	@:overload @:final public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload @:final public function getPCDATA() : java.lang.CharSequence;
	
	@:overload @:final public function getEncoding() : String;
	
	@:overload @:final public function hasText() : Bool;
	
	@:overload @:final public function getLocation() : javax.xml.stream.Location;
	
	@:overload @:final public function hasName() : Bool;
	
	@:overload @:final public function getName() : javax.xml.namespace.QName;
	
	@:overload @:final public function getLocalName() : String;
	
	@:overload @:final public function getNamespaceURI() : String;
	
	@:overload @:final public function getPrefix() : String;
	
	@:overload @:final public function getVersion() : String;
	
	@:overload @:final public function isStandalone() : Bool;
	
	@:overload @:final public function standaloneSet() : Bool;
	
	@:overload @:final public function getCharacterEncodingScheme() : String;
	
	@:overload @:final public function getPITarget() : String;
	
	@:overload @:final public function getPIData() : String;
	
	@:overload private function processElement(prefix : String, uri : String, localName : String) : Void;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$CharSequenceImpl') @:internal extern class StreamReaderBufferProcessor_CharSequenceImpl implements java.lang.CharSequence
{
	@:overload public function length() : Int;
	
	@:overload public function charAt(index : Int) : java.StdTypes.Char16;
	
	@:overload public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$ElementStackEntry') @:internal extern class StreamReaderBufferProcessor_ElementStackEntry
{
	@:overload public function set(prefix : String, uri : String, localName : String) : Void;
	
	@:overload public function getQName() : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$InternalNamespaceContext') @:internal extern class StreamReaderBufferProcessor_InternalNamespaceContext implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx
{
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding>;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$InternalNamespaceContext$BindingImpl') @:internal extern class StreamReaderBufferProcessor_InternalNamespaceContext_BindingImpl implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding
{
	@:overload public function getPrefix() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$DummyLocation') @:internal extern class StreamReaderBufferProcessor_DummyLocation implements javax.xml.stream.Location
{
	@:overload public function getLineNumber() : Int;
	
	@:overload public function getColumnNumber() : Int;
	
	@:overload public function getCharacterOffset() : Int;
	
	@:overload public function getPublicId() : String;
	
	@:overload public function getSystemId() : String;
	
	
}
