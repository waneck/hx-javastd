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
	@:protected @:static @:final private static var INTERNAL_STATE_START_DOCUMENT(default, null) : Int;
	
	@:protected @:static @:final private static var INTERNAL_STATE_START_ELEMENT_TERMINATE(default, null) : Int;
	
	@:protected @:static @:final private static var INTERNAL_STATE_SINGLE_TERMINATE_ELEMENT_WITH_NAMESPACES(default, null) : Int;
	
	@:protected @:static @:final private static var INTERNAL_STATE_DOUBLE_TERMINATE_ELEMENT(default, null) : Int;
	
	@:protected @:static @:final private static var INTERNAL_STATE_END_DOCUMENT(default, null) : Int;
	
	@:protected @:static @:final private static var INTERNAL_STATE_VOID(default, null) : Int;
	
	@:protected private var _internalState : Int;
	
	/**
	* Current event
	*/
	@:protected private var _eventType : Int;
	
	/**
	* Stack of qualified names and namespaces
	*/
	@:protected private var _qNameStack : java.NativeArray<com.sun.xml.internal.fastinfoset.QualifiedName>;
	
	@:protected private var _namespaceAIIsStartStack : java.NativeArray<Int>;
	
	@:protected private var _namespaceAIIsEndStack : java.NativeArray<Int>;
	
	@:protected private var _stackCount : Int;
	
	@:protected private var _namespaceAIIsPrefix : java.NativeArray<String>;
	
	@:protected private var _namespaceAIIsNamespaceName : java.NativeArray<String>;
	
	@:protected private var _namespaceAIIsPrefixIndex : java.NativeArray<Int>;
	
	@:protected private var _namespaceAIIsIndex : Int;
	
	/**
	* Namespaces associated with START_ELEMENT or END_ELEMENT
	*/
	@:protected private var _currentNamespaceAIIsStart : Int;
	
	@:protected private var _currentNamespaceAIIsEnd : Int;
	
	/**
	* Qualified name associated with START_ELEMENT or END_ELEMENT.
	*/
	@:protected private var _qualifiedName : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	/**
	* List of attributes
	*/
	@:protected private var _attributes : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	@:protected private var _clearAttributes : Bool;
	
	/**
	* Characters associated with event.
	*/
	@:protected private var _characters : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected private var _charactersOffset : Int;
	
	@:protected private var _algorithmURI : String;
	
	@:protected private var _algorithmId : Int;
	
	@:protected private var _isAlgorithmDataCloned : Bool;
	
	@:protected private var _algorithmData : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var _algorithmDataOffset : Int;
	
	@:protected private var _algorithmDataLength : Int;
	
	/**
	* State for processing instruction
	*/
	@:protected private var _piTarget : String;
	
	@:protected private var _piData : String;
	
	@:protected private var _nsContext : com.sun.xml.internal.fastinfoset.stax.StAXDocumentParser.StAXDocumentParser_NamespaceContextImpl;
	
	@:protected private var _characterEncodingScheme : String;
	
	@:protected private var _manager : com.sun.xml.internal.fastinfoset.stax.StAXManager;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(s : java.io.InputStream) : Void;
	
	@:overload @:public public function new(s : java.io.InputStream, manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	@:overload @:public override public function setInputStream(s : java.io.InputStream) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:protected private function resetOnError() : Void;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	@:overload @:public public function next() : Int;
	
	/** Test if the current event is of the given type and if the namespace and name match the current namespace and name of the current event.
	* If the namespaceURI is null it is not checked for equality, if the localName is null it is not checked for equality.
	* @param type the event type
	* @param namespaceURI the uri of the event, may be null
	* @param localName the localName of the event, may be null
	* @throws XMLStreamException if the required values are not matched.
	*/
	@:overload @:public @:final public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	/** Reads the content of a text-only element. Precondition:
	* the current event is START_ELEMENT. Postcondition:
	* The current event is the corresponding END_ELEMENT.
	* @throws XMLStreamException if the current event is not a START_ELEMENT or if
	* a non text element is encountered
	*/
	@:overload @:public @:final public function getElementText() : String;
	
	/**
	* @param startElementRead flag if start element has already been read
	*/
	@:overload @:public @:final public function getElementText(startElementRead : Bool) : String;
	
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
	@:overload @:public @:final public function nextTag() : Int;
	
	/** if the current tag has already read, such as in the case EventReader's
	* peek() has been called, the current cursor should not move before the loop
	*/
	@:overload @:public @:final public function nextTag(currentTagRead : Bool) : Int;
	
	@:overload @:public @:final public function hasNext() : Bool;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public @:final public function isStartElement() : Bool;
	
	@:overload @:public @:final public function isEndElement() : Bool;
	
	@:overload @:public @:final public function isCharacters() : Bool;
	
	/**
	*  Returns true if the cursor points to a character data event that consists of all whitespace
	*  Application calling this method needs to cache the value and avoid calling this method again
	*  for the same event.
	* @return true if the cursor points to all whitespace, false otherwise
	*/
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
	
	@:overload @:public @:final public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload @:public @:final public function getEventType() : Int;
	
	@:overload @:public @:final public function getText() : String;
	
	@:overload @:public @:final public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public @:final public function getTextStart() : Int;
	
	@:overload @:public @:final public function getTextLength() : Int;
	
	@:overload @:public @:final public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload @:protected @:final private function checkTextState() : Void;
	
	@:overload @:public @:final public function getEncoding() : String;
	
	@:overload @:public @:final public function hasText() : Bool;
	
	@:overload @:public @:final public function getLocation() : javax.xml.stream.Location;
	
	@:overload @:public @:final public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function getLocalName() : String;
	
	@:overload @:public @:final public function hasName() : Bool;
	
	@:overload @:public @:final public function getNamespaceURI() : String;
	
	@:overload @:public @:final public function getPrefix() : String;
	
	@:overload @:public @:final public function getVersion() : String;
	
	@:overload @:public @:final public function isStandalone() : Bool;
	
	@:overload @:public @:final public function standaloneSet() : Bool;
	
	@:overload @:public @:final public function getCharacterEncodingScheme() : String;
	
	@:overload @:public @:final public function getPITarget() : String;
	
	@:overload @:public @:final public function getPIData() : String;
	
	@:overload @:public @:final public function getNameString() : String;
	
	@:overload @:public @:final public function getAttributeNameString(index : Int) : String;
	
	@:overload @:public @:final public function getTextAlgorithmURI() : String;
	
	@:overload @:public @:final public function getTextAlgorithmIndex() : Int;
	
	@:overload @:public @:final public function getTextAlgorithmBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function getTextAlgorithmBytesClone() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function getTextAlgorithmStart() : Int;
	
	@:overload @:public @:final public function getTextAlgorithmLength() : Int;
	
	@:overload @:public @:final public function getTextAlgorithmBytes(sourceStart : Int, target : java.NativeArray<java.StdTypes.Int8>, targetStart : Int, length : Int) : Int;
	
	@:overload @:public @:final public function peekNext() : Int;
	
	@:overload @:public public function onBeforeOctetBufferOverwrite() : Void;
	
	@:overload @:public @:final public function accessNamespaceCount() : Int;
	
	@:overload @:public @:final public function accessLocalName() : String;
	
	@:overload @:public @:final public function accessNamespaceURI() : String;
	
	@:overload @:public @:final public function accessPrefix() : String;
	
	@:overload @:public @:final public function accessTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public @:final public function accessTextStart() : Int;
	
	@:overload @:public @:final public function accessTextLength() : Int;
	
	@:overload @:protected @:final private function processDII() : Void;
	
	@:overload @:protected @:final private function processDIIOptionalProperties(b : Int) : Void;
	
	@:overload @:protected @:final private function resizeNamespaceAIIs() : Void;
	
	@:overload @:protected @:final private function processEIIWithNamespaces(hasAttributes : Bool) : Void;
	
	@:overload @:protected @:final private function processEII(name : com.sun.xml.internal.fastinfoset.QualifiedName, hasAttributes : Bool) : Void;
	
	@:overload @:protected @:final private function processAIIs() : Void;
	
	@:overload @:protected @:final private function processEIIIndexMedium(b : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:protected @:final private function processEIIIndexLarge(b : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:protected @:final private function processLiteralQualifiedName(state : Int, q : com.sun.xml.internal.fastinfoset.QualifiedName) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:protected @:final private function processCommentII() : Void;
	
	@:overload @:protected @:final private function processProcessingII() : Void;
	
	@:overload @:protected @:final private function processUnexpandedEntityReference(b : Int) : Void;
	
	@:overload @:protected @:final private function processCIIEncodingAlgorithm(addToTable : Bool) : Void;
	
	@:overload @:protected @:final private function processAIIEncodingAlgorithm(name : com.sun.xml.internal.fastinfoset.QualifiedName, addToTable : Bool) : Void;
	
	@:overload @:protected @:final private function convertEncodingAlgorithmDataToCharacters() : Void;
	
	/*
	* Method converts _algorithmData to base64 encoded String
	* Counts with base64 data coming in chunks, aligning input chunks by 3,
	* avoiding double cloning, happening after possible peek, peek2 cloning by Base64 algorithm
	*/
	@:overload @:protected private function convertBase64AlorithmDataToCharacters(buffer : java.lang.StringBuffer) : Void;
	
	/*
	* Looks ahead in InputStream, whether next data is Base64 chunk
	*/
	@:overload @:public public function isBase64Follows() : Bool;
	
	@:overload @:public @:final public function getNamespaceDecl(prefix : String) : String;
	
	@:overload @:public @:final public function getURI(prefix : String) : String;
	
	@:overload @:public @:final public function getPrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:final public function getAttributesHolder() : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	@:overload @:public @:final public function setManager(manager : com.sun.xml.internal.fastinfoset.stax.StAXManager) : Void;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$stax$StAXDocumentParser$NamespaceContextImpl') extern class StAXDocumentParser_NamespaceContextImpl implements javax.xml.namespace.NamespaceContext
{
	@:overload @:public @:final public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public @:final public function getPrefix(namespaceURI : String) : String;
	
	@:overload @:public @:final public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	
}
