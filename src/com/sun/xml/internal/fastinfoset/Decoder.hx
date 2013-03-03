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
	@:public @:static @:final public static var STRING_INTERNING_SYSTEM_PROPERTY(default, null) : String;
	
	/**
	* Internal buffer size interning system property.
	*/
	@:public @:static @:final public static var BUFFER_SIZE_SYSTEM_PROPERTY(default, null) : String;
	
	/**
	* True if can parse fragments.
	*/
	@:protected private var _parseFragments : Bool;
	
	/**
	* True if needs to close underlying input stream.
	*/
	@:protected private var _needForceStreamClose : Bool;
	
	/**
	* The list of Notation Information Items that are part of the
	* Document Information Item.
	*/
	@:protected private var _notations : java.util.List<Dynamic>;
	
	/**
	* The list of Unparsed Entity Information Items that are part of the
	* Document Information Item.
	*/
	@:protected private var _unparsedEntities : java.util.List<Dynamic>;
	
	/**
	* The map of URIs to registered encoding algorithms.
	*/
	@:protected private var _registeredEncodingAlgorithms : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* The vocabulary used for decoding.
	*/
	@:protected private var _v : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary;
	
	/**
	* The prefix table of the vocabulary.
	*/
	@:protected private var _prefixTable : com.sun.xml.internal.fastinfoset.util.PrefixArray;
	
	/**
	* The element name table of the vocabulary.
	*/
	@:protected private var _elementNameTable : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	/**
	* The attribute name table of the vocabulary.
	*/
	@:protected private var _attributeNameTable : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	/**
	* The character content chunk table of the vocabulary.
	*/
	@:protected private var _characterContentChunkTable : com.sun.xml.internal.fastinfoset.util.ContiguousCharArrayArray;
	
	/**
	* The attribute value table of the vocabulary.
	*/
	@:protected private var _attributeValueTable : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	/**
	* The current octet that is being read
	*/
	@:protected private var _b : Int;
	
	/**
	* True if an information item is terminated.
	*/
	@:protected private var _terminate : Bool;
	
	/**
	* True if two information item are terminated in direct sequence.
	*/
	@:protected private var _doubleTerminate : Bool;
	
	/**
	* True if an entry is required to be added to a table
	*/
	@:protected private var _addToTable : Bool;
	
	/**
	* The vocabulary table index to an indexed non identifying string.
	*/
	@:protected private var _integer : Int;
	
	/**
	* The vocabulary table index of identifying string or the identifier of
	* an encoding algorithm or restricted alphabet.
	*/
	@:protected private var _identifier : Int;
	
	/**
	* The size of the internal buffer.
	*/
	@:protected private var _bufferSize : Int;
	
	/**
	* The internal buffer used for decoding.
	*/
	@:protected private var _octetBuffer : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* A mark into the internal buffer used for decoding encoded algorithm
	* or restricted alphabet data.
	*/
	@:protected private var _octetBufferStart : Int;
	
	/**
	* The offset into the buffer to read the next byte.
	*/
	@:protected private var _octetBufferOffset : Int;
	
	/**
	* The end of the buffer.
	*/
	@:protected private var _octetBufferEnd : Int;
	
	/**
	* The length of some octets in the buffer that are to be read.
	*/
	@:protected private var _octetBufferLength : Int;
	
	/**
	* The internal buffer of characters.
	*/
	@:protected private var _charBuffer : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* The length of characters in the buffer of characters.
	*/
	@:protected private var _charBufferLength : Int;
	
	/**
	* Helper class that checks for duplicate attribute information items.
	*/
	@:protected private var _duplicateAttributeVerifier : com.sun.xml.internal.fastinfoset.util.DuplicateAttributeVerifier;
	
	/**
	* Default constructor for the Decoder.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setStringInterning(stringInterning : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getStringInterning() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setBufferSize(bufferSize : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getBufferSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setRegisteredEncodingAlgorithms(algorithms : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getRegisteredEncodingAlgorithms() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setExternalVocabularies(referencedVocabualries : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getExternalVocabularies() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setParseFragments(parseFragments : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getParseFragments() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setForceStreamClose(needForceStreamClose : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getForceStreamClose() : Bool;
	
	/**
	* Reset the decoder for reuse decoding another XML infoset.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Set the ParserVocabulary to be used for decoding.
	*
	* @param v the vocabulary to be used for decoding.
	*/
	@:overload @:public public function setVocabulary(v : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary) : Void;
	
	/**
	* Set the InputStream to decode the fast infoset document.
	*
	* @param s the InputStream where the fast infoset document is decoded from.
	*/
	@:overload @:public public function setInputStream(s : java.io.InputStream) : Void;
	
	@:overload @:protected @:final private function decodeDII() : Void;
	
	@:overload @:protected @:final private function decodeAdditionalData() : Void;
	
	@:overload @:protected @:final private function decodeInitialVocabulary() : Void;
	
	@:overload @:protected @:final private function decodeNotations() : Void;
	
	@:overload @:protected @:final private function decodeUnparsedEntities() : Void;
	
	@:overload @:protected @:final private function decodeCharacterEncodingScheme() : String;
	
	@:overload @:protected @:final private function decodeVersion() : String;
	
	@:overload @:protected @:final private function decodeEIIIndexMedium() : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:protected @:final private function decodeEIIIndexLarge() : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:protected @:final private function decodeLiteralQualifiedName(state : Int, q : com.sun.xml.internal.fastinfoset.QualifiedName) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:protected @:static @:final private static var NISTRING_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var NISTRING_INDEX(default, null) : Int;
	
	@:protected @:static @:final private static var NISTRING_ENCODING_ALGORITHM(default, null) : Int;
	
	@:protected @:static @:final private static var NISTRING_EMPTY_STRING(default, null) : Int;
	
	/*
	* C.14
	* decodeNonIdentifyingStringOnFirstBit
	*/
	@:overload @:protected @:final private function decodeNonIdentifyingStringOnFirstBit() : Int;
	
	@:overload @:protected @:final private function decodeOctetsOnFifthBitOfNonIdentifyingStringOnFirstBit(b : Int) : Void;
	
	@:overload @:protected @:final private function decodeOctetsOnSeventhBitOfNonIdentifyingStringOnThirdBit(b : Int) : Void;
	
	/*
	* C.13
	*/
	@:overload @:protected @:final private function decodeIdentifyingNonEmptyStringOnFirstBit(table : com.sun.xml.internal.fastinfoset.util.StringArray) : String;
	
	@:protected private var _prefixIndex : Int;
	
	/*
	* C.13
	*/
	@:overload @:protected @:final private function decodeIdentifyingNonEmptyStringOnFirstBitAsPrefix(namespaceNamePresent : Bool) : String;
	
	/*
	* C.13
	*/
	@:overload @:protected @:final private function decodeIdentifyingNonEmptyStringIndexOnFirstBitAsPrefix(namespaceNamePresent : Bool) : String;
	
	@:protected private var _namespaceNameIndex : Int;
	
	/*
	* C.13
	*/
	@:overload @:protected @:final private function decodeIdentifyingNonEmptyStringOnFirstBitAsNamespaceName(prefixPresent : Bool) : String;
	
	/*
	* C.13
	*/
	@:overload @:protected @:final private function decodeIdentifyingNonEmptyStringIndexOnFirstBitAsNamespaceName(prefixPresent : Bool) : String;
	
	/*
	* C.22
	*/
	@:overload @:protected @:final private function decodeNonEmptyOctetStringOnSecondBitAsUtf8String() : String;
	
	/*
	* C.22
	*/
	@:overload @:protected @:final private function decodeNonEmptyOctetStringOnSecondBitAsUtf8CharArray() : Void;
	
	/*
	* C.22
	*/
	@:overload @:protected @:final private function decodeNonEmptyOctetStringLengthOnSecondBit() : Void;
	
	/*
	* C.25
	*/
	@:overload @:protected @:final private function decodeIntegerIndexOnSecondBit() : Int;
	
	@:overload @:protected @:final private function decodeHeader() : Void;
	
	@:overload @:protected @:final private function decodeRestrictedAlphabetAsCharBuffer() : Void;
	
	@:overload @:protected @:final private function decodeRestrictedAlphabetAsString() : String;
	
	@:overload @:protected @:final private function decodeRAOctetsAsString(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : String;
	
	@:overload @:protected @:final private function decodeFourBitAlphabetOctetsAsCharBuffer(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected @:final private function decodeAlphabetOctetsAsCharBuffer(restrictedAlphabet : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected @:final private function decodeUtf8StringAsCharBuffer() : Void;
	
	@:overload @:protected @:final private function decodeUtf8StringAsCharBuffer(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Void;
	
	@:overload @:protected @:final private function decodeUtf8StringAsString() : String;
	
	@:overload @:protected @:final private function decodeUtf16StringAsCharBuffer() : Void;
	
	@:overload @:protected @:final private function decodeUtf16StringAsString() : String;
	
	@:overload @:protected @:final private function decodeUtf8StringIntoCharBuffer() : Void;
	
	@:overload @:protected @:final private function decodeUtf8StringIntoCharBuffer(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Void;
	
	@:overload @:protected @:final private function decodeUtf8NCNameIntoCharBuffer() : Void;
	
	@:overload @:protected private function createQualifiedNameString(second : String) : String;
	
	@:overload @:protected private function createQualifiedNameString(first : java.NativeArray<java.StdTypes.Char16>, second : String) : String;
	
	@:overload @:protected @:final private function read() : Int;
	
	@:overload @:protected @:final private function closeIfRequired() : Void;
	
	@:overload @:protected @:final private function peek() : Int;
	
	@:overload @:protected @:final private function peek(octetBufferListener : com.sun.xml.internal.fastinfoset.OctetBufferListener) : Int;
	
	@:overload @:protected @:final private function peek2(octetBufferListener : com.sun.xml.internal.fastinfoset.OctetBufferListener) : Int;
	
	@:overload @:protected @:final private function _isFastInfosetDocument() : Bool;
	
	@:overload @:static @:public public static function isFastInfosetDocument(s : java.io.InputStream) : Bool;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$Decoder$EncodingAlgorithmInputStream') extern class Decoder_EncodingAlgorithmInputStream extends java.io.InputStream
{
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	
}
