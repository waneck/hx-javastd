package com.sun.xml.internal.fastinfoset;
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
extern class Decoder implements com.sun.xml.internal.org.jvnet.fastinfoset.FastInfosetParser
{
	/**
	* String interning system property.
	*/
	public static var STRING_INTERNING_SYSTEM_PROPERTY(default, null) : String;
	
	/**
	* Internal buffer size interning system property.
	*/
	public static var BUFFER_SIZE_SYSTEM_PROPERTY(default, null) : String;
	
	/**
	* True if can parse fragments.
	*/
	private var _parseFragments : Bool;
	
	/**
	* True if needs to close underlying input stream.
	*/
	private var _needForceStreamClose : Bool;
	
	/**
	* The list of Notation Information Items that are part of the
	* Document Information Item.
	*/
	private var _notations : java.util.List<Dynamic>;
	
	/**
	* The list of Unparsed Entity Information Items that are part of the
	* Document Information Item.
	*/
	private var _unparsedEntities : java.util.List<Dynamic>;
	
	/**
	* The map of URIs to registered encoding algorithms.
	*/
	private var _registeredEncodingAlgorithms : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* The vocabulary used for decoding.
	*/
	private var _v : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary;
	
	/**
	* The prefix table of the vocabulary.
	*/
	private var _prefixTable : com.sun.xml.internal.fastinfoset.util.PrefixArray;
	
	/**
	* The element name table of the vocabulary.
	*/
	private var _elementNameTable : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	/**
	* The attribute name table of the vocabulary.
	*/
	private var _attributeNameTable : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	/**
	* The character content chunk table of the vocabulary.
	*/
	private var _characterContentChunkTable : com.sun.xml.internal.fastinfoset.util.ContiguousCharArrayArray;
	
	/**
	* The attribute value table of the vocabulary.
	*/
	private var _attributeValueTable : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	/**
	* The current octet that is being read
	*/
	private var _b : Int;
	
	/**
	* True if an information item is terminated.
	*/
	private var _terminate : Bool;
	
	/**
	* True if two information item are terminated in direct sequence.
	*/
	private var _doubleTerminate : Bool;
	
	/**
	* True if an entry is required to be added to a table
	*/
	private var _addToTable : Bool;
	
	/**
	* The vocabulary table index to an indexed non identifying string.
	*/
	private var _integer : Int;
	
	/**
	* The vocabulary table index of identifying string or the identifier of
	* an encoding algorithm or restricted alphabet.
	*/
	private var _identifier : Int;
	
	/**
	* The size of the internal buffer.
	*/
	private var _bufferSize : Int;
	
	/**
	* The internal buffer used for decoding.
	*/
	private var _octetBuffer : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* A mark into the internal buffer used for decoding encoded algorithm
	* or restricted alphabet data.
	*/
	private var _octetBufferStart : Int;
	
	/**
	* The offset into the buffer to read the next byte.
	*/
	private var _octetBufferOffset : Int;
	
	/**
	* The end of the buffer.
	*/
	private var _octetBufferEnd : Int;
	
	/**
	* The length of some octets in the buffer that are to be read.
	*/
	private var _octetBufferLength : Int;
	
	/**
	* The internal buffer of characters.
	*/
	private var _charBuffer : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* The length of characters in the buffer of characters.
	*/
	private var _charBufferLength : Int;
	
	/**
	* Helper class that checks for duplicate attribute information items.
	*/
	private var _duplicateAttributeVerifier : com.sun.xml.internal.fastinfoset.util.DuplicateAttributeVerifier;
	
	/**
	* Default constructor for the Decoder.
	*/
	@:overload private function new() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setStringInterning(stringInterning : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getStringInterning() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setBufferSize(bufferSize : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getBufferSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setRegisteredEncodingAlgorithms(algorithms : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getRegisteredEncodingAlgorithms() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setExternalVocabularies(referencedVocabualries : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getExternalVocabularies() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setParseFragments(parseFragments : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getParseFragments() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setForceStreamClose(needForceStreamClose : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getForceStreamClose() : Bool;
	
	/**
	* Reset the decoder for reuse decoding another XML infoset.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the ParserVocabulary to be used for decoding.
	*
	* @param v the vocabulary to be used for decoding.
	*/
	@:overload public function setVocabulary(v : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary) : Void;
	
	/**
	* Set the InputStream to decode the fast infoset document.
	*
	* @param s the InputStream where the fast infoset document is decoded from.
	*/
	@:overload public function setInputStream(s : java.io.InputStream) : Void;
	
	@:overload @:final private function decodeDII() : Void;
	
	@:overload @:final private function decodeAdditionalData() : Void;
	
	@:overload @:final private function decodeInitialVocabulary() : Void;
	
	@:overload @:final private function decodeNotations() : Void;
	
	@:overload @:final private function decodeUnparsedEntities() : Void;
	
	@:overload @:final private function decodeCharacterEncodingScheme() : String;
	
	@:overload @:final private function decodeVersion() : String;
	
	@:overload @:final private function decodeEIIIndexMedium() : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function decodeEIIIndexLarge() : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function decodeLiteralQualifiedName(state : Int, q : com.sun.xml.internal.fastinfoset.QualifiedName) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	private static var NISTRING_STRING(default, null) : Int;
	
	private static var NISTRING_INDEX(default, null) : Int;
	
	private static var NISTRING_ENCODING_ALGORITHM(default, null) : Int;
	
	private static var NISTRING_EMPTY_STRING(default, null) : Int;
	
	/*
	* C.14
	* decodeNonIdentifyingStringOnFirstBit
	*/
	@:overload @:final private function decodeNonIdentifyingStringOnFirstBit() : Int;
	
	@:overload @:final private function decodeOctetsOnFifthBitOfNonIdentifyingStringOnFirstBit(b : Int) : Void;
	
	@:overload @:final private function decodeOctetsOnSeventhBitOfNonIdentifyingStringOnThirdBit(b : Int) : Void;
	
	/*
	* C.13
	*/
	@:overload @:final private function decodeIdentifyingNonEmptyStringOnFirstBit(table : com.sun.xml.internal.fastinfoset.util.StringArray) : String;
	
	private var _prefixIndex : Int;
	
	/*
	* C.13
	*/
	@:overload @:final private function decodeIdentifyingNonEmptyStringOnFirstBitAsPrefix(namespaceNamePresent : Bool) : String;
	
	/*
	* C.13
	*/
	@:overload @:final private function decodeIdentifyingNonEmptyStringIndexOnFirstBitAsPrefix(namespaceNamePresent : Bool) : String;
	
	private var _namespaceNameIndex : Int;
	
	/*
	* C.13
	*/
	@:overload @:final private function decodeIdentifyingNonEmptyStringOnFirstBitAsNamespaceName(prefixPresent : Bool) : String;
	
	/*
	* C.13
	*/
	@:overload @:final private function decodeIdentifyingNonEmptyStringIndexOnFirstBitAsNamespaceName(prefixPresent : Bool) : String;
	
	/*
	* C.22
	*/
	@:overload @:final private function decodeNonEmptyOctetStringOnSecondBitAsUtf8String() : String;
	
	/*
	* C.22
	*/
	@:overload @:final private function decodeNonEmptyOctetStringOnSecondBitAsUtf8CharArray() : Void;
	
	/*
	* C.22
	*/
	@:overload @:final private function decodeNonEmptyOctetStringLengthOnSecondBit() : Void;
	
	/*
	* C.25
	*/
	@:overload @:final private function decodeIntegerIndexOnSecondBit() : Int;
	
	@:overload @:final private function decodeHeader() : Void;
	
	@:overload @:final private function decodeRestrictedAlphabetAsCharBuffer() : Void;
	
	@:overload @:final private function decodeRestrictedAlphabetAsString() : String;
	
	@:overload @:final private function decodeRAOctetsAsString(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : String;
	
	@:overload @:final private function decodeFourBitAlphabetOctetsAsCharBuffer(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:final private function decodeAlphabetOctetsAsCharBuffer(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:final private function decodeUtf8StringAsCharBuffer() : Void;
	
	@:overload @:final private function decodeUtf8StringAsCharBuffer(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Void;
	
	@:overload @:final private function decodeUtf8StringAsString() : String;
	
	@:overload @:final private function decodeUtf16StringAsCharBuffer() : Void;
	
	@:overload @:final private function decodeUtf16StringAsString() : String;
	
	@:overload @:final private function decodeUtf8StringIntoCharBuffer() : Void;
	
	@:overload @:final private function decodeUtf8StringIntoCharBuffer(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Void;
	
	@:overload @:final private function decodeUtf8NCNameIntoCharBuffer() : Void;
	
	@:overload private function createQualifiedNameString(second : String) : String;
	
	@:overload private function createQualifiedNameString(first : java.NativeArray<java.StdTypes.Char16>, second : String) : String;
	
	@:overload @:final private function read() : Int;
	
	@:overload @:final private function closeIfRequired() : Void;
	
	@:overload @:final private function peek() : Int;
	
	@:overload @:final private function peek(octetBufferListener : com.sun.xml.internal.fastinfoset.OctetBufferListener) : Int;
	
	@:overload @:final private function peek2(octetBufferListener : com.sun.xml.internal.fastinfoset.OctetBufferListener) : Int;
	
	@:overload @:final private function _isFastInfosetDocument() : Bool;
	
	@:overload public static function isFastInfosetDocument(s : java.io.InputStream) : Bool;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$Decoder$EncodingAlgorithmInputStream') extern class Decoder_EncodingAlgorithmInputStream extends java.io.InputStream
{
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	
}
