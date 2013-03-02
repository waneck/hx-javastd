package com.sun.xml.internal.fastinfoset.stax;
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
extern class StAXDocumentSerializer extends com.sun.xml.internal.fastinfoset.Encoder implements javax.xml.stream.XMLStreamWriter implements com.sun.xml.internal.org.jvnet.fastinfoset.stax.LowLevelFastInfosetStreamWriter
{
	/**
	* The Fast Infoset StAX serializer.
	* <p>
	* Instantiate this serializer to serialize a fast infoset document in accordance
	* with the StAX API.
	*
	* <p>
	* More than one fast infoset document may be encoded to the
	* {@link java.io.OutputStream}.
	*/
	private var _manager : com.sun.xml.internal.fastinfoset.stax.StAXManager;
	
	private var _encoding : String;
	
	/**
	* Local name of current element.
	*/
	private var _currentLocalName : String;
	
	/**
	* Namespace of current element.
	*/
	private var _currentUri : String;
	
	/**
	* Prefix of current element.
	*/
	private var _currentPrefix : String;
	
	/**
	* This flag indicates when there is a pending start element event.
	*/
	private var _inStartElement : Bool;
	
	/**
	* This flag indicates if the current element is empty.
	*/
	private var _isEmptyElement : Bool;
	
	/**
	* List of attributes qnames and values defined in the current element.
	*/
	private var _attributesArray : java.NativeArray<String>;
	
	private var _attributesArrayIndex : Int;
	
	private var _nsSupportContextStack : java.NativeArray<Bool>;
	
	private var _stackCount : Int;
	
	/**
	* Mapping between uris and prefixes.
	*/
	private var _nsContext : com.sun.xml.internal.fastinfoset.util.NamespaceContextImplementation;
	
	/**
	* List of namespaces defined in the current element.
	*/
	private var _namespacesArray : java.NativeArray<String>;
	
	private var _namespacesArrayIndex : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(outputStream : java.io.OutputStream) : Void;
	
	@:overload public function new(outputStream : java.io.OutputStream, manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function writeStartDocument() : Void;
	
	@:overload public function writeStartDocument(version : String) : Void;
	
	@:overload public function writeStartDocument(encoding : String, version : String) : Void;
	
	@:overload public function writeEndDocument() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function flush() : Void;
	
	@:overload public function writeStartElement(localName : String) : Void;
	
	@:overload public function writeStartElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeStartElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeEmptyElement(localName : String) : Void;
	
	@:overload public function writeEmptyElement(namespaceURI : String, localName : String) : Void;
	
	@:overload public function writeEmptyElement(prefix : String, localName : String, namespaceURI : String) : Void;
	
	@:overload public function writeEndElement() : Void;
	
	@:overload public function writeAttribute(localName : String, value : String) : Void;
	
	@:overload public function writeAttribute(namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function writeAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : Void;
	
	@:overload public function writeNamespace(prefix : String, namespaceURI : String) : Void;
	
	@:overload public function writeDefaultNamespace(namespaceURI : String) : Void;
	
	@:overload public function writeComment(data : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String) : Void;
	
	@:overload public function writeProcessingInstruction(target : String, data : String) : Void;
	
	@:overload public function writeCData(text : String) : Void;
	
	@:overload public function writeDTD(dtd : String) : Void;
	
	@:overload public function writeEntityRef(name : String) : Void;
	
	@:overload public function writeCharacters(text : String) : Void;
	
	@:overload public function writeCharacters(text : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload public function getPrefix(uri : String) : String;
	
	@:overload public function setPrefix(prefix : String, uri : String) : Void;
	
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
	
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function setManager(manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	@:overload public function setEncoding(encoding : String) : Void;
	
	@:overload public function writeOctets(b : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : Void;
	
	@:overload private function encodeTerminationAndCurrentElement(terminateAfter : Bool) : Void;
	
	@:overload @:final public function initiateLowLevelWriting() : Void;
	
	@:overload @:final public function getNextElementIndex() : Int;
	
	@:overload @:final public function getNextAttributeIndex() : Int;
	
	@:overload @:final public function getLocalNameIndex() : Int;
	
	@:overload @:final public function getNextLocalNameIndex() : Int;
	
	@:overload @:final public function writeLowLevelTerminationAndMark() : Void;
	
	@:overload @:final public function writeLowLevelStartElementIndexed(type : Int, index : Int) : Void;
	
	@:overload @:final public function writeLowLevelStartElement(type : Int, prefix : String, localName : String, namespaceURI : String) : Bool;
	
	@:overload @:final public function writeLowLevelStartNamespaces() : Void;
	
	@:overload @:final public function writeLowLevelNamespace(prefix : String, namespaceName : String) : Void;
	
	@:overload @:final public function writeLowLevelEndNamespaces() : Void;
	
	@:overload @:final public function writeLowLevelStartAttributes() : Void;
	
	@:overload @:final public function writeLowLevelAttributeIndexed(index : Int) : Void;
	
	@:overload @:final public function writeLowLevelAttribute(prefix : String, namespaceURI : String, localName : String) : Bool;
	
	@:overload @:final public function writeLowLevelAttributeValue(value : String) : Void;
	
	@:overload @:final public function writeLowLevelStartNameLiteral(type : Int, prefix : String, utf8LocalName : java.NativeArray<java.StdTypes.Int8>, namespaceURI : String) : Void;
	
	@:overload @:final public function writeLowLevelStartNameLiteral(type : Int, prefix : String, localNameIndex : Int, namespaceURI : String) : Void;
	
	@:overload @:final public function writeLowLevelEndStartElement() : Void;
	
	@:overload @:final public function writeLowLevelEndElement() : Void;
	
	@:overload @:final public function writeLowLevelText(text : java.NativeArray<java.StdTypes.Char16>, length : Int) : Void;
	
	@:overload @:final public function writeLowLevelText(text : String) : Void;
	
	@:overload @:final public function writeLowLevelOctets(octets : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	
}
