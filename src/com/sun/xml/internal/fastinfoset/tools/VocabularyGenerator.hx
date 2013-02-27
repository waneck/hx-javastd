package com.sun.xml.internal.fastinfoset.tools;
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
extern class VocabularyGenerator extends org.xml.sax.helpers.DefaultHandler implements org.xml.sax.ext.LexicalHandler
{
	private var _serializerVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;
	
	private var _parserVocabulary : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary;
	
	private var _v : com.sun.xml.internal.org.jvnet.fastinfoset.Vocabulary;
	
	private var attributeValueSizeConstraint : Int;
	
	private var characterContentChunkSizeContraint : Int;
	
	/** Creates a new instance of VocabularyGenerator */
	@:overload public function new() : Void;
	
	@:overload public function new(serializerVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary) : Void;
	
	@:overload public function new(parserVocabulary : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary) : Void;
	
	/** Creates a new instance of VocabularyGenerator */
	@:overload public function new(serializerVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary, parserVocabulary : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary) : Void;
	
	@:overload public function getVocabulary() : com.sun.xml.internal.org.jvnet.fastinfoset.Vocabulary;
	
	@:overload public function setCharacterContentChunkSizeLimit(size : Int) : Void;
	
	@:overload public function getCharacterContentChunkSizeLimit() : Int;
	
	@:overload public function setAttributeValueSizeLimit(size : Int) : Void;
	
	@:overload public function getAttributeValueSizeLimit() : Int;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload override public function skippedEntity(name : String) : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function addToTable(s : String, v : java.util.Set<Dynamic>, m : com.sun.xml.internal.fastinfoset.util.StringIntMap, a : com.sun.xml.internal.fastinfoset.util.StringArray) : Void;
	
	@:overload public function addToTable(s : String, v : java.util.Set<Dynamic>, m : com.sun.xml.internal.fastinfoset.util.StringIntMap, a : com.sun.xml.internal.fastinfoset.util.PrefixArray) : Void;
	
	@:overload public function addToCharArrayTable(c : com.sun.xml.internal.fastinfoset.util.CharArray) : Void;
	
	@:overload public function addToNameTable(namespaceURI : String, qName : String, localName : String, v : java.util.Set<Dynamic>, m : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap, a : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray, isAttribute : Bool) : Void;
	
	@:overload public static function getPrefixFromQualifiedName(qName : String) : String;
	
	
}
