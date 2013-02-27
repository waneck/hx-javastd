package com.sun.xml.internal.stream.buffer;
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
/**
* Base class for classes that processes {@link XMLStreamBuffer}
* and produces infoset in API-specific form.
*/
extern class AbstractProcessor extends com.sun.xml.internal.stream.buffer.AbstractCreatorProcessor
{
	private static var STATE_ILLEGAL(default, null) : Int;
	
	private static var STATE_DOCUMENT(default, null) : Int;
	
	private static var STATE_DOCUMENT_FRAGMENT(default, null) : Int;
	
	private static var STATE_ELEMENT_U_LN_QN(default, null) : Int;
	
	private static var STATE_ELEMENT_P_U_LN(default, null) : Int;
	
	private static var STATE_ELEMENT_U_LN(default, null) : Int;
	
	private static var STATE_ELEMENT_LN(default, null) : Int;
	
	private static var STATE_TEXT_AS_CHAR_ARRAY_SMALL(default, null) : Int;
	
	private static var STATE_TEXT_AS_CHAR_ARRAY_MEDIUM(default, null) : Int;
	
	private static var STATE_TEXT_AS_CHAR_ARRAY_COPY(default, null) : Int;
	
	private static var STATE_TEXT_AS_STRING(default, null) : Int;
	
	private static var STATE_TEXT_AS_OBJECT(default, null) : Int;
	
	private static var STATE_COMMENT_AS_CHAR_ARRAY_SMALL(default, null) : Int;
	
	private static var STATE_COMMENT_AS_CHAR_ARRAY_MEDIUM(default, null) : Int;
	
	private static var STATE_COMMENT_AS_CHAR_ARRAY_COPY(default, null) : Int;
	
	private static var STATE_COMMENT_AS_STRING(default, null) : Int;
	
	private static var STATE_PROCESSING_INSTRUCTION(default, null) : Int;
	
	private static var STATE_END(default, null) : Int;
	
	private static var STATE_NAMESPACE_ATTRIBUTE(default, null) : Int;
	
	private static var STATE_NAMESPACE_ATTRIBUTE_P(default, null) : Int;
	
	private static var STATE_NAMESPACE_ATTRIBUTE_P_U(default, null) : Int;
	
	private static var STATE_NAMESPACE_ATTRIBUTE_U(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_U_LN_QN(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_P_U_LN(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_U_LN(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_LN(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_U_LN_QN_OBJECT(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_P_U_LN_OBJECT(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_U_LN_OBJECT(default, null) : Int;
	
	private static var STATE_ATTRIBUTE_LN_OBJECT(default, null) : Int;
	
	private var _buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	/**
	* True if this processor should create a fragment of XML, without the start/end document markers.
	*/
	private var _fragmentMode : Bool;
	
	private var _stringInterningFeature : Bool;
	
	/**
	* Number of remaining XML element trees that should be visible
	* through this {@link AbstractProcessor}.
	*/
	private var _treeCount : Int;
	
	/**
	* @deprecated
	*      Use {@link #setBuffer(XMLStreamBuffer, boolean)}
	*/
	@:overload @:final private function setBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	@:overload @:final private function setBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, fragmentMode : Bool) : Void;
	
	@:overload @:final private function peekStructure() : Int;
	
	@:overload @:final private function readStructure() : Int;
	
	@:overload @:final private function readEiiState() : Int;
	
	@:overload private static function getEIIState(item : Int) : Int;
	
	@:overload private static function getNIIState(item : Int) : Int;
	
	@:overload private static function getAIIState(item : Int) : Int;
	
	@:overload @:final private function readStructure16() : Int;
	
	@:overload @:final private function readStructureString() : String;
	
	@:overload @:final private function readContentString() : String;
	
	@:overload @:final private function readContentCharactersCopy() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:final private function readContentCharactersBuffer(length : Int) : Int;
	
	@:overload @:final private function readContentObject() : Dynamic;
	
	private var _qNameBuffer(default, null) : java.lang.StringBuilder;
	
	@:overload @:final private function getQName(prefix : String, localName : String) : String;
	
	@:overload @:final private function getPrefixFromQName(qName : String) : String;
	
	
}
