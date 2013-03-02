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
extern class StAXDocumentParser extends com.sun.xml.internal.fastinfoset.Decoder implements javax.xml.stream.XMLStreamReader implements com.sun.xml.internal.org.jvnet.fastinfoset.stax.FastInfosetStreamReader implements com.sun.xml.internal.fastinfoset.OctetBufferListener
{
	private static var INTERNAL_STATE_START_DOCUMENT(default, null) : Int;
	
	private static var INTERNAL_STATE_START_ELEMENT_TERMINATE(default, null) : Int;
	
	private static var INTERNAL_STATE_SINGLE_TERMINATE_ELEMENT_WITH_NAMESPACES(default, null) : Int;
	
	private static var INTERNAL_STATE_DOUBLE_TERMINATE_ELEMENT(default, null) : Int;
	
	private static var INTERNAL_STATE_END_DOCUMENT(default, null) : Int;
	
	private static var INTERNAL_STATE_VOID(default, null) : Int;
	
	private var _internalState : Int;
	
	/**
	* Current event
	*/
	private var _eventType : Int;
	
	/**
	* Stack of qualified names and namespaces
	*/
	private var _qNameStack : java.NativeArray<com.sun.xml.internal.fastinfoset.QualifiedName>;
	
	private var _namespaceAIIsStartStack : java.NativeArray<Int>;
	
	private var _namespaceAIIsEndStack : java.NativeArray<Int>;
	
	private var _stackCount : Int;
	
	private var _namespaceAIIsPrefix : java.NativeArray<String>;
	
	private var _namespaceAIIsNamespaceName : java.NativeArray<String>;
	
	private var _namespaceAIIsPrefixIndex : java.NativeArray<Int>;
	
	private var _namespaceAIIsIndex : Int;
	
	/**
	* Namespaces associated with START_ELEMENT or END_ELEMENT
	*/
	private var _currentNamespaceAIIsStart : Int;
	
	private var _currentNamespaceAIIsEnd : Int;
	
	/**
	* Qualified name associated with START_ELEMENT or END_ELEMENT.
	*/
	private var _qualifiedName : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	/**
	* List of attributes
	*/
	private var _attributes : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	private var _clearAttributes : Bool;
	
	/**
	* Characters associated with event.
	*/
	private var _characters : java.NativeArray<java.StdTypes.Char16>;
	
	private var _charactersOffset : Int;
	
	private var _algorithmURI : String;
	
	private var _algorithmId : Int;
	
	private var _isAlgorithmDataCloned : Bool;
	
	private var _algorithmData : java.NativeArray<java.StdTypes.Int8>;
	
	private var _algorithmDataOffset : Int;
	
	private var _algorithmDataLength : Int;
	
	/**
	* State for processing instruction
	*/
	private var _piTarget : String;
	
	private var _piData : String;
	
	private var _nsContext : com.sun.xml.internal.fastinfoset.stax.StAXDocumentParser.StAXDocumentParser_NamespaceContextImpl;
	
	private var _characterEncodingScheme : String;
	
	private var _manager : com.sun.xml.internal.fastinfoset.stax.StAXManager;
	
	@:overload public function new() : Void;
	
	@:overload public function new(s : java.io.InputStream) : Void;
	
	@:overload public function new(s : java.io.InputStream, manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	@:overload public function setInputStream(s : java.io.InputStream) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload private function resetOnError() : Void;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function next() : Int;
	
	/** Test if the current event is of the given type and if the namespace and name match the current namespace and name of the current event.
	* If the namespaceURI is null it is not checked for equality, if the localName is null it is not checked for equality.
	* @param type the event type
	* @param namespaceURI the uri of the event, may be null
	* @param localName the localName of the event, may be null
	* @throws XMLStreamException if the required values are not matched.
	*/
	@:overload @:final public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	/** Reads the content of a text-only element. Precondition:
	* the current event is START_ELEMENT. Postcondition:
	* The current event is the corresponding END_ELEMENT.
	* @throws XMLStreamException if the current event is not a START_ELEMENT or if
	* a non text element is encountered
	*/
	@:overload @:final public function getElementText() : String;
	
	/**
	* @param startElementRead flag if start element has already been read
	*/
	@:overload @:final public function getElementText(startElementRead : Bool) : String;
	
	/** Skips any white space (isWhiteSpace() returns true), COMMENT,
	* or PROCESSING_INSTRUCTION,
	* until a START_ELEMENT or END_ELEMENT is reached.
	* If other than white space characters, COMMENT, PROCESSING_INSTRUCTION, START_ELEMENT, END_ELEMENT
	* are encountered, an exception is thrown. This method should
	* be used when processing element-only content seperated by white space.
	* This method should
	* be used when processing element-only content because
	* the parser is not able to recognize ignorable whitespace if
	* then DTD is missing or not interpreted.
	* @return the event type of the element read
	* @throws XMLStreamException if the current event is not white space
	*/
	@:overload @:final public function nextTag() : Int;
	
	/** if the current tag has already read, such as in the case EventReader's
	* peek() has been called, the current cursor should not move before the loop
	*/
	@:overload @:final public function nextTag(currentTagRead : Bool) : Int;
	
	@:overload @:final public function hasNext() : Bool;
	
	@:overload public function close() : Void;
	
	@:overload @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:final public function isStartElement() : Bool;
	
	@:overload @:final public function isEndElement() : Bool;
	
	@:overload @:final public function isCharacters() : Bool;
	
	/**
	*  Returns true if the cursor points to a character data event that consists of all whitespace
	*  Application calling this method needs to cache the value and avoid calling this method again
	*  for the same event.
	* @return true if the cursor points to all whitespace, false otherwise
	*/
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
	
	@:overload @:final public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload @:final public function getEventType() : Int;
	
	@:overload @:final public function getText() : String;
	
	@:overload @:final public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:final public function getTextStart() : Int;
	
	@:overload @:final public function getTextLength() : Int;
	
	@:overload @:final public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload @:final private function checkTextState() : Void;
	
	@:overload @:final public function getEncoding() : String;
	
	@:overload @:final public function hasText() : Bool;
	
	@:overload @:final public function getLocation() : javax.xml.stream.Location;
	
	@:overload @:final public function getName() : javax.xml.namespace.QName;
	
	@:overload @:final public function getLocalName() : String;
	
	@:overload @:final public function hasName() : Bool;
	
	@:overload @:final public function getNamespaceURI() : String;
	
	@:overload @:final public function getPrefix() : String;
	
	@:overload @:final public function getVersion() : String;
	
	@:overload @:final public function isStandalone() : Bool;
	
	@:overload @:final public function standaloneSet() : Bool;
	
	@:overload @:final public function getCharacterEncodingScheme() : String;
	
	@:overload @:final public function getPITarget() : String;
	
	@:overload @:final public function getPIData() : String;
	
	@:overload @:final public function getNameString() : String;
	
	@:overload @:final public function getAttributeNameString(index : Int) : String;
	
	@:overload @:final public function getTextAlgorithmURI() : String;
	
	@:overload @:final public function getTextAlgorithmIndex() : Int;
	
	@:overload @:final public function getTextAlgorithmBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final public function getTextAlgorithmBytesClone() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final public function getTextAlgorithmStart() : Int;
	
	@:overload @:final public function getTextAlgorithmLength() : Int;
	
	@:overload @:final public function getTextAlgorithmBytes(sourceStart : Int, target : java.NativeArray<java.StdTypes.Int8>, targetStart : Int, length : Int) : Int;
	
	@:overload @:final public function peekNext() : Int;
	
	@:overload public function onBeforeOctetBufferOverwrite() : Void;
	
	@:overload @:final public function accessNamespaceCount() : Int;
	
	@:overload @:final public function accessLocalName() : String;
	
	@:overload @:final public function accessNamespaceURI() : String;
	
	@:overload @:final public function accessPrefix() : String;
	
	@:overload @:final public function accessTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:final public function accessTextStart() : Int;
	
	@:overload @:final public function accessTextLength() : Int;
	
	@:overload @:final private function processDII() : Void;
	
	@:overload @:final private function processDIIOptionalProperties(b : Int) : Void;
	
	@:overload @:final private function resizeNamespaceAIIs() : Void;
	
	@:overload @:final private function processEIIWithNamespaces(hasAttributes : Bool) : Void;
	
	@:overload @:final private function processEII(name : com.sun.xml.internal.fastinfoset.QualifiedName, hasAttributes : Bool) : Void;
	
	@:overload @:final private function processAIIs() : Void;
	
	@:overload @:final private function processEIIIndexMedium(b : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function processEIIIndexLarge(b : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function processLiteralQualifiedName(state : Int, q : com.sun.xml.internal.fastinfoset.QualifiedName) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function processCommentII() : Void;
	
	@:overload @:final private function processProcessingII() : Void;
	
	@:overload @:final private function processUnexpandedEntityReference(b : Int) : Void;
	
	@:overload @:final private function processCIIEncodingAlgorithm(addToTable : Bool) : Void;
	
	@:overload @:final private function processAIIEncodingAlgorithm(name : com.sun.xml.internal.fastinfoset.QualifiedName, addToTable : Bool) : Void;
	
	@:overload @:final private function convertEncodingAlgorithmDataToCharacters() : Void;
	
	/*
	* Method converts _algorithmData to base64 encoded String
	* Counts with base64 data coming in chunks, aligning input chunks by 3,
	* avoiding double cloning, happening after possible peek, peek2 cloning by Base64 algorithm
	*/
	@:overload private function convertBase64AlorithmDataToCharacters(buffer : java.lang.StringBuffer) : Void;
	
	/*
	* Looks ahead in InputStream, whether next data is Base64 chunk
	*/
	@:overload public function isBase64Follows() : Bool;
	
	@:overload @:final public function getNamespaceDecl(prefix : String) : String;
	
	@:overload @:final public function getURI(prefix : String) : String;
	
	@:overload @:final public function getPrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload @:final public function getAttributesHolder() : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	@:overload @:final public function setManager(manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$stax$StAXDocumentParser$NamespaceContextImpl') extern class StAXDocumentParser_NamespaceContextImpl implements javax.xml.namespace.NamespaceContext
{
	@:overload @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:final public function getPrefix(namespaceURI : String) : String;
	
	@:overload @:final public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	
}
