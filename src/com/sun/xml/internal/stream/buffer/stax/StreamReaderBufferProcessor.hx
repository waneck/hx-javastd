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
	@:protected private var _stack : java.NativeArray<com.sun.xml.internal.stream.buffer.stax.StreamReaderBufferProcessor.StreamReaderBufferProcessor_ElementStackEntry>;
	
	/** The top-most active entry of the {@link #_stack}. */
	@:protected private var _stackTop : com.sun.xml.internal.stream.buffer.stax.StreamReaderBufferProcessor.StreamReaderBufferProcessor_ElementStackEntry;
	
	/** The element depth that we are in. Used to determine when we are done with a tree. */
	@:protected private var _depth : Int;
	
	/**
	* Namespace prefixes. Can be empty but not null.
	*/
	@:protected private var _namespaceAIIsPrefix : java.NativeArray<String>;
	
	@:protected private var _namespaceAIIsNamespaceName : java.NativeArray<String>;
	
	@:protected private var _namespaceAIIsEnd : Int;
	
	@:protected private var _nsCtx : com.sun.xml.internal.stream.buffer.stax.StreamReaderBufferProcessor.StreamReaderBufferProcessor_InternalNamespaceContext;
	
	@:protected private var _eventType : Int;
	
	/**
	* Holder of the attributes.
	*
	* Be careful that this follows the SAX convention of using "" instead of null.
	*/
	@:protected private var _attributeCache : com.sun.xml.internal.stream.buffer.AttributesHolder;
	
	@:protected private var _charSequence : java.lang.CharSequence;
	
	@:protected private var _characters : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected private var _textOffset : Int;
	
	@:protected private var _textLen : Int;
	
	@:protected private var _piTarget : String;
	
	@:protected private var _piData : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
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
	@:overload @:public public function nextTagAndMark() : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	@:overload @:public public function next() : Int;
	
	@:overload @:public @:final public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	@:overload @:public @:final public function getElementTextTrim() : String;
	
	@:overload @:public @:final public function getElementText() : String;
	
	@:overload @:public @:final public function getElementText(startElementRead : Bool) : String;
	
	@:overload @:public @:final public function nextTag() : Int;
	
	@:overload @:public @:final public function nextTag(currentTagRead : Bool) : Int;
	
	@:overload @:public @:final public function hasNext() : Bool;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public @:final public function isStartElement() : Bool;
	
	@:overload @:public @:final public function isEndElement() : Bool;
	
	@:overload @:public @:final public function isCharacters() : Bool;
	
	@:overload @:public @:final public function isWhiteSpace() : Bool;
	
	@:overload @:public @:final public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	@:overload @:public @:final public function getAttributeCount() : Int;
	
	@:overload @:public @:final public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function getAttributeNamespace(index : Int) : String;
	
	@:overload @:public @:final public function getAttributeLocalName(index : Int) : String;
	
	@:overload @:public @:final public function getAttributePrefix(index : Int) : String;
	
	@:overload @:public @:final public function getAttributeType(index : Int) : String;
	
	@:overload @:public @:final public function getAttributeValue(index : Int) : String;
	
	@:overload @:public @:final public function isAttributeSpecified(index : Int) : Bool;
	
	@:overload @:public @:final public function getNamespaceCount() : Int;
	
	@:overload @:public @:final public function getNamespacePrefix(index : Int) : String;
	
	@:overload @:public @:final public function getNamespaceURI(index : Int) : String;
	
	@:overload @:public @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public @:final public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	@:overload @:public @:final public function getEventType() : Int;
	
	@:overload @:public @:final public function getText() : String;
	
	@:overload @:public @:final public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public @:final public function getTextStart() : Int;
	
	@:overload @:public @:final public function getTextLength() : Int;
	
	@:overload @:public @:final public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload @:public @:final public function getPCDATA() : java.lang.CharSequence;
	
	@:overload @:public @:final public function getEncoding() : String;
	
	@:overload @:public @:final public function hasText() : Bool;
	
	@:overload @:public @:final public function getLocation() : javax.xml.stream.Location;
	
	@:overload @:public @:final public function hasName() : Bool;
	
	@:overload @:public @:final public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function getLocalName() : String;
	
	@:overload @:public @:final public function getNamespaceURI() : String;
	
	@:overload @:public @:final public function getPrefix() : String;
	
	@:overload @:public @:final public function getVersion() : String;
	
	@:overload @:public @:final public function isStandalone() : Bool;
	
	@:overload @:public @:final public function standaloneSet() : Bool;
	
	@:overload @:public @:final public function getCharacterEncodingScheme() : String;
	
	@:overload @:public @:final public function getPITarget() : String;
	
	@:overload @:public @:final public function getPIData() : String;
	
	@:overload @:protected private function processElement(prefix : String, uri : String, localName : String) : Void;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$CharSequenceImpl') @:internal extern class StreamReaderBufferProcessor_CharSequenceImpl implements java.lang.CharSequence
{
	@:overload @:public public function length() : Int;
	
	@:overload @:public public function charAt(index : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$ElementStackEntry') @:internal extern class StreamReaderBufferProcessor_ElementStackEntry
{
	@:overload @:public public function set(prefix : String, uri : String, localName : String) : Void;
	
	@:overload @:public public function getQName() : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$InternalNamespaceContext') @:internal extern class StreamReaderBufferProcessor_InternalNamespaceContext implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx
{
	@:overload @:public public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public public function getPrefix(namespaceURI : String) : String;
	
	@:overload @:public public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding>;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$InternalNamespaceContext$BindingImpl') @:internal extern class StreamReaderBufferProcessor_InternalNamespaceContext_BindingImpl implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding
{
	@:overload @:public public function getPrefix() : String;
	
	@:overload @:public public function getNamespaceURI() : String;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$StreamReaderBufferProcessor$DummyLocation') @:internal extern class StreamReaderBufferProcessor_DummyLocation implements javax.xml.stream.Location
{
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getCharacterOffset() : Int;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	
}
