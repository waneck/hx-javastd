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
extern class Encoder extends org.xml.sax.helpers.DefaultHandler implements com.sun.xml.internal.org.jvnet.fastinfoset.FastInfosetSerializer
{
	/**
	* Character encoding scheme system property for the encoding
	* of content and attribute values.
	*/
	@:public @:static @:final public static var CHARACTER_ENCODING_SCHEME_SYSTEM_PROPERTY(default, null) : String;
	
	/**
	* Default character encoding scheme system property for the encoding
	* of content and attribute values.
	*/
	@:protected @:static @:final private static var _characterEncodingSchemeSystemDefault(default, null) : String;
	
	/**
	* The vocabulary that is used by the encoder
	*/
	@:protected private var _v : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;
	
	/**
	* The vocabulary application data that is used by the encoder
	*/
	@:protected private var _vData : com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData;
	
	/**
	* True if terminatation of an information item is required
	*/
	@:protected private var _terminate : Bool;
	
	/**
	* The current octet that is to be written.
	*/
	@:protected private var _b : Int;
	
	/**
	* The {@link java.io.OutputStream} that the encoded XML infoset (the
	* fast infoset document) is written to.
	*/
	@:protected private var _s : java.io.OutputStream;
	
	/**
	* The internal buffer of characters used for the UTF-8 or UTF-16 encoding
	* of characters.
	*/
	@:protected private var _charBuffer : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* The internal buffer of bytes.
	*/
	@:protected private var _octetBuffer : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The current position in the internal buffer.
	*/
	@:protected private var _octetBufferIndex : Int;
	
	/**
	* The current mark in the internal buffer.
	*
	* <p>
	* If the value of the mark is < 0 then the mark is not set.
	*/
	@:protected private var _markIndex : Int;
	
	/**
	* The minimum size of [normalized value] of Attribute Information
	* Items that will be indexed.
	*/
	@:protected private var minAttributeValueSize : Int;
	
	/**
	* The maximum size of [normalized value] of Attribute Information
	* Items that will be indexed.
	*/
	@:protected private var maxAttributeValueSize : Int;
	
	/**
	* The limit on the size of indexed Map for attribute values
	* Limit is measured in characters number
	*/
	@:protected private var attributeValueMapTotalCharactersConstraint : Int;
	
	/**
	* The minimum size of character content chunks
	* of Character Information Items or Comment Information Items that
	* will be indexed.
	*/
	@:protected private var minCharacterContentChunkSize : Int;
	
	/**
	* The maximum size of character content chunks
	* of Character Information Items or Comment Information Items that
	* will be indexed.
	*/
	@:protected private var maxCharacterContentChunkSize : Int;
	
	/**
	* The limit on the size of indexed Map for character content chunks
	* Limit is measured in characters number
	*/
	@:protected private var characterContentChunkMapTotalCharactersConstraint : Int;
	
	/**
	* Default constructor for the Encoder.
	*/
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(useLocalNameAsKeyForQualifiedNameLookup : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function setIgnoreDTD(ignoreDTD : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getIgnoreDTD() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function setIgnoreComments(ignoreComments : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getIgnoreComments() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function setIgnoreProcesingInstructions(ignoreProcesingInstructions : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getIgnoreProcesingInstructions() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function setIgnoreWhiteSpaceTextContent(ignoreWhiteSpaceTextContent : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getIgnoreWhiteSpaceTextContent() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setCharacterEncodingScheme(characterEncodingScheme : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getCharacterEncodingScheme() : String;
	
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
	@:overload @:public public function getMinCharacterContentChunkSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setMinCharacterContentChunkSize(size : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMaxCharacterContentChunkSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setMaxCharacterContentChunkSize(size : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getCharacterContentChunkMapMemoryLimit() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setCharacterContentChunkMapMemoryLimit(size : Int) : Void;
	
	/**
	* Checks whether character content chunk (its length) matches length limit
	*
	* @param length the length of character content chunk is checking to be added to Map.
	* @return whether character content chunk length matches limit
	*/
	@:overload @:public public function isCharacterContentChunkLengthMatchesLimit(length : Int) : Bool;
	
	/**
	* Checks whether character content table has enough memory to
	* store character content chunk with the given length
	*
	* @param length the length of character content chunk is checking to be added to Map.
	* @param map the custom CharArrayIntMap, which memory limits will be checked.
	* @return whether character content map has enough memory
	*/
	@:overload @:public public function canAddCharacterContentToTable(length : Int, map : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMinAttributeValueSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setMinAttributeValueSize(size : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMaxAttributeValueSize() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setMaxAttributeValueSize(size : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setAttributeValueMapMemoryLimit(size : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getAttributeValueMapMemoryLimit() : Int;
	
	/**
	* Checks whether attribute value (its length) matches length limit
	*
	* @param length the length of attribute
	* @return whether attribute value matches limit
	*/
	@:overload @:public public function isAttributeValueLengthMatchesLimit(length : Int) : Bool;
	
	/**
	* Checks whether attribute table has enough memory to
	* store attribute value with the given length
	*
	* @param length the length of attribute value is checking to be added to Map.
	* @return whether attribute map has enough memory
	*/
	@:overload @:public public function canAddAttributeToTable(length : Int) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setExternalVocabulary(v : com.sun.xml.internal.org.jvnet.fastinfoset.ExternalVocabulary) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setVocabularyApplicationData(data : com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getVocabularyApplicationData() : com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData;
	
	/**
	* Reset the encoder for reuse encoding another XML infoset.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Set the OutputStream to encode the XML infoset to a
	* fast infoset document.
	*
	* @param s the OutputStream where the fast infoset document is written to.
	*/
	@:overload @:public public function setOutputStream(s : java.io.OutputStream) : Void;
	
	/**
	* Set the SerializerVocabulary to be used for encoding.
	*
	* @param vocabulary the vocabulary to be used for encoding.
	*/
	@:overload @:public public function setVocabulary(vocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary) : Void;
	
	/**
	* Encode the header of a fast infoset document.
	*
	* @param encodeXmlDecl true if the XML declaration should be encoded.
	*/
	@:overload @:protected @:final private function encodeHeader(encodeXmlDecl : Bool) : Void;
	
	/**
	* Encode the initial vocabulary of a fast infoset document.
	*
	*/
	@:overload @:protected @:final private function encodeInitialVocabulary() : Void;
	
	/**
	* Encode the termination of the Document Information Item.
	*
	*/
	@:overload @:protected @:final private function encodeDocumentTermination() : Void;
	
	/**
	* Encode the termination of an Element Information Item.
	*
	*/
	@:overload @:protected @:final private function encodeElementTermination() : Void;
	
	/**
	* Encode a termination if required.
	*
	*/
	@:overload @:protected @:final private function encodeTermination() : Void;
	
	/**
	* Encode a Attribute Information Item that is a namespace declaration.
	*
	* @param prefix the prefix of the namespace declaration,
	* if "" then there is no prefix for the namespace declaration.
	* @param uri the URI of the namespace declaration,
	* if "" then there is no URI for the namespace declaration.
	*/
	@:overload @:protected @:final private function encodeNamespaceAttribute(prefix : String, uri : String) : Void;
	
	/**
	* Encode a chunk of Character Information Items.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeCharacters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a chunk of Character Information Items.
	*
	* If the array of characters is to be indexed (as determined by
	* {@link Encoder#characterContentChunkSizeContraint}) then the array is not cloned
	* when adding the array to the vocabulary.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeCharactersNoClone(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a chunk of Character Information Items using a numeric
	* alphabet that results in the encoding of a character in 4 bits
	* (or two characters per octet).
	*
	* @param id the restricted alphabet identifier.
	* @param table the table mapping characters to 4 bit values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param addToTable if characters should be added to table.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeNumericFourBitCharacters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, addToTable : Bool) : Void;
	
	/**
	* Encode a chunk of Character Information Items using a date-time
	* alphabet that results in the encoding of a character in 4 bits
	* (or two characters per octet).
	*
	* @param id the restricted alphabet identifier.
	* @param table the table mapping characters to 4 bit values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param addToTable if characters should be added to table.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeDateTimeFourBitCharacters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, addToTable : Bool) : Void;
	
	/**
	* Encode a chunk of Character Information Items using a restricted
	* alphabet that results in the encoding of a character in 4 bits
	* (or two characters per octet).
	*
	* @param id the restricted alphabet identifier.
	* @param table the table mapping characters to 4 bit values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param addToTable if characters should be added to table.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeFourBitCharacters(id : Int, table : java.NativeArray<Int>, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, addToTable : Bool) : Void;
	
	/**
	* Encode a chunk of Character Information Items using a restricted
	* alphabet table.
	*
	* @param alphabet the alphabet defining the mapping between characters and
	*        integer values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param addToTable if characters should be added to table
	* @throws ArrayIndexOutOfBoundsException.
	* @throws FastInfosetException if the alphabet is not present in the
	*         vocabulary.
	*/
	@:overload @:protected @:final private function encodeAlphabetCharacters(alphabet : String, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, addToTable : Bool) : Void;
	
	/**
	* Encode a Processing Instruction Information Item.
	*
	* @param target the target of the processing instruction.
	* @param data the data of the processing instruction.
	*/
	@:overload @:protected @:final private function encodeProcessingInstruction(target : String, data : String) : Void;
	
	/**
	* Encode a Document Type Declaration.
	*
	* @param systemId the system identifier of the external subset.
	* @param publicId the public identifier of the external subset.
	*/
	@:overload @:protected @:final private function encodeDocumentTypeDeclaration(systemId : String, publicId : String) : Void;
	
	/**
	* Encode a Comment Information Item.
	*
	* @param ch the array of characters that is as comment.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeComment(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a Comment Information Item.
	*
	* If the array of characters that is a comment is to be indexed (as
	* determined by {@link Encoder#characterContentChunkSizeContraint}) then
	* the array is not cloned when adding the array to the vocabulary.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @throws ArrayIndexOutOfBoundsException.
	*/
	@:overload @:protected @:final private function encodeCommentNoClone(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a qualified name of an Element Informaiton Item on the third bit
	* of an octet.
	* Implementation of clause C.18 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* <p>
	* The index of the qualified name will be encoded if the name is present
	* in the vocabulary otherwise the qualified name will be encoded literally
	* (see {@link #encodeLiteralElementQualifiedNameOnThirdBit}).
	*
	* @param namespaceURI the namespace URI of the qualified name.
	* @param prefix the prefix of the qualified name.
	* @param localName the local name of the qualified name.
	*/
	@:overload @:protected @:final private function encodeElementQualifiedNameOnThirdBit(namespaceURI : String, prefix : String, localName : String) : Void;
	
	/**
	* Encode a literal qualified name of an Element Informaiton Item on the
	* third bit of an octet.
	* Implementation of clause C.18 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param namespaceURI the namespace URI of the qualified name.
	* @param prefix the prefix of the qualified name.
	* @param localName the local name of the qualified name.
	*/
	@:overload @:protected @:final private function encodeLiteralElementQualifiedNameOnThirdBit(namespaceURI : String, prefix : String, localName : String, entry : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap.LocalNameQualifiedNamesMap_Entry) : Void;
	
	/**
	* Encode a qualified name of an Attribute Informaiton Item on the third bit
	* of an octet.
	* Implementation of clause C.17 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* <p>
	* The index of the qualified name will be encoded if the name is present
	* in the vocabulary otherwise the qualified name will be encoded literally
	* (see {@link #encodeLiteralAttributeQualifiedNameOnSecondBit}).
	*
	* @param namespaceURI the namespace URI of the qualified name.
	* @param prefix the prefix of the qualified name.
	* @param localName the local name of the qualified name.
	*/
	@:overload @:protected @:final private function encodeAttributeQualifiedNameOnSecondBit(namespaceURI : String, prefix : String, localName : String) : Void;
	
	/**
	* Encode a literal qualified name of an Attribute Informaiton Item on the
	* third bit of an octet.
	* Implementation of clause C.17 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param namespaceURI the namespace URI of the qualified name.
	* @param prefix the prefix of the qualified name.
	* @param localName the local name of the qualified name.
	*/
	@:overload @:protected @:final private function encodeLiteralAttributeQualifiedNameOnSecondBit(namespaceURI : String, prefix : String, localName : String, entry : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap.LocalNameQualifiedNamesMap_Entry) : Bool;
	
	/**
	* Encode a non identifying string on the first bit of an octet.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param s the string to encode
	* @param map the vocabulary table of strings to indexes.
	* @param addToTable true if the string could be added to the vocabulary
	*                   table (if table has enough memory)
	* @param mustBeAddedToTable true if the string must be added to the vocabulary
	*                   table (if not already present in the table).
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnFirstBit(s : String, map : com.sun.xml.internal.fastinfoset.util.StringIntMap, addToTable : Bool, mustBeAddedToTable : Bool) : Void;
	
	/**
	* Encode a non identifying string on the first bit of an octet.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param s the string to encode
	* @param map the vocabulary table of character arrays to indexes.
	* @param addToTable true if the string should be added to the vocabulary
	*                   table (if not already present in the table).
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnFirstBit(s : String, map : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap, addToTable : Bool) : Void;
	
	/**
	* Encode a non identifying string on the first bit of an octet.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param map the vocabulary table of character arrays to indexes.
	* @param addToTable true if the string should be added to the vocabulary
	*                   table (if not already present in the table).
	* @param clone true if the array of characters should be cloned if added
	*              to the vocabulary table.
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnFirstBit(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, map : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap, addToTable : Bool, clone : Bool) : Void;
	
	@:overload @:protected @:final private function encodeNumericNonIdentifyingStringOnFirstBit(s : String, addToTable : Bool, mustBeAddedToTable : Bool) : Void;
	
	@:overload @:protected @:final private function encodeDateTimeNonIdentifyingStringOnFirstBit(s : String, addToTable : Bool, mustBeAddedToTable : Bool) : Void;
	
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnFirstBit(id : Int, table : java.NativeArray<Int>, s : String, addToTable : Bool, mustBeAddedToTable : Bool) : Void;
	
	/**
	* Encode a non identifying string on the first bit of an octet as binary
	* data using an encoding algorithm.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param URI the encoding algorithm URI. If the URI == null then the
	*            encoding algorithm identifier takes precendence.
	* @param id the encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm.
	* @throws EncodingAlgorithmException if the encoding algorithm URI is not
	*         present in the vocabulary, or the encoding algorithm identifier
	*         is not with the required range.
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnFirstBit(URI : String, id : Int, data : Dynamic) : Void;
	
	/**
	* Encode the [normalized value] of an Attribute Information Item using
	* using an encoding algorithm.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the encoding algorithm identifier.
	* @param d the data, as an array of bytes, to be encoded.
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function encodeAIIOctetAlgorithmData(id : Int, d : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Encode the [normalized value] of an Attribute Information Item using
	* using an encoding algorithm.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm.
	* @param ea the encoding algorithm to use to encode the data into an
	*           array of bytes.
	*/
	@:overload @:protected @:final private function encodeAIIObjectAlgorithmData(id : Int, data : Dynamic, ea : com.sun.xml.internal.org.jvnet.fastinfoset.EncodingAlgorithm) : Void;
	
	/**
	* Encode the [normalized value] of an Attribute Information Item using
	* using a built in encoding algorithm.
	* Implementation of clause C.14 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the built in encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm. The data
	*        represents an array of items specified by the encoding algorithm
	*        identifier
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function encodeAIIBuiltInAlgorithmData(id : Int, data : Dynamic, offset : Int, length : Int) : Void;
	
	/**
	* Encode a non identifying string on the third bit of an octet.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	* @param map the vocabulary table of character arrays to indexes.
	* @param addToTable true if the array of characters should be added to the vocabulary
	*                   table (if not already present in the table).
	* @param clone true if the array of characters should be cloned if added
	*              to the vocabulary table.
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnThirdBit(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, map : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap, addToTable : Bool, clone : Bool) : Void;
	
	/**
	* Encode a non identifying string on the third bit of an octet as binary
	* data using an encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param URI the encoding algorithm URI. If the URI == null then the
	*            encoding algorithm identifier takes precendence.
	* @param id the encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm.
	* @throws EncodingAlgorithmException if the encoding algorithm URI is not
	*         present in the vocabulary, or the encoding algorithm identifier
	*         is not with the required range.
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnThirdBit(URI : String, id : Int, data : Dynamic) : Void;
	
	/**
	* Encode a non identifying string on the third bit of an octet as binary
	* data using an encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param URI the encoding algorithm URI. If the URI == null then the
	*            encoding algorithm identifier takes precendence.
	* @param id the encoding algorithm identifier.
	* @param d the data, as an array of bytes, to be encoded.
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	* @throws EncodingAlgorithmException if the encoding algorithm URI is not
	*         present in the vocabulary.
	*/
	@:overload @:protected @:final private function encodeNonIdentifyingStringOnThirdBit(URI : String, id : Int, d : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a chunk of Character Information Items using
	* using an encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the encoding algorithm identifier.
	* @param d the data, as an array of bytes, to be encoded.
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function encodeCIIOctetAlgorithmData(id : Int, d : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a chunk of Character Information Items using
	* using an encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm.
	* @param ea the encoding algorithm to use to encode the data into an
	*           array of bytes.
	*/
	@:overload @:protected @:final private function encodeCIIObjectAlgorithmData(id : Int, data : Dynamic, ea : com.sun.xml.internal.org.jvnet.fastinfoset.EncodingAlgorithm) : Void;
	
	/**
	* Encode a chunk of Character Information Items using
	* using an encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param id the built in encoding algorithm identifier.
	* @param data the data to be encoded using an encoding algorithm. The data
	*        represents an array of items specified by the encoding algorithm
	*        identifier
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function encodeCIIBuiltInAlgorithmData(id : Int, data : Dynamic, offset : Int, length : Int) : Void;
	
	/**
	* Encode a chunk of Character Information Items using
	* using the CDATA built in encoding algorithm.
	* Implementation of clause C.15 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeCIIBuiltInAlgorithmDataAsCDATA(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a non empty identifying string on the first bit of an octet.
	* Implementation of clause C.13 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param s the identifying string.
	* @param map the vocabulary table to use to determin the index of the
	*        identifying string
	*/
	@:overload @:protected @:final private function encodeIdentifyingNonEmptyStringOnFirstBit(s : String, map : com.sun.xml.internal.fastinfoset.util.StringIntMap) : Void;
	
	/**
	* Encode a non empty string on the second bit of an octet using the UTF-8
	* encoding.
	* Implementation of clause C.22 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param s the string.
	*/
	@:overload @:protected @:final private function encodeNonEmptyOctetStringOnSecondBit(s : String) : Void;
	
	/**
	* Encode the length of a UTF-8 encoded string on the second bit of an octet.
	* Implementation of clause C.22 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param length the length to encode.
	*/
	@:overload @:protected @:final private function encodeNonZeroOctetStringLengthOnSecondBit(length : Int) : Void;
	
	/**
	* Encode a non empty string on the fifth bit of an octet using the UTF-8
	* or UTF-16 encoding.
	* Implementation of clause C.23 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param s the string.
	*/
	@:overload @:protected @:final private function encodeNonEmptyCharacterStringOnFifthBit(s : String) : Void;
	
	/**
	* Encode a non empty string on the fifth bit of an octet using the UTF-8
	* or UTF-16 encoding.
	* Implementation of clause C.23 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeNonEmptyCharacterStringOnFifthBit(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode the length of a UTF-8 or UTF-16 encoded string on the fifth bit
	* of an octet.
	* Implementation of clause C.23 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param length the length to encode.
	*/
	@:overload @:protected @:final private function encodeNonZeroOctetStringLengthOnFifthBit(length : Int) : Void;
	
	/**
	* Encode a non empty string on the seventh bit of an octet using the UTF-8
	* or UTF-16 encoding.
	* Implementation of clause C.24 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeNonEmptyCharacterStringOnSeventhBit(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a non empty string on the seventh bit of an octet using a restricted
	* alphabet that results in the encoding of a character in 4 bits
	* (or two characters per octet).
	* Implementation of clause C.24 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param table the table mapping characters to 4 bit values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeNonEmptyFourBitCharacterStringOnSeventhBit(table : java.NativeArray<Int>, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:protected @:final private function encodeNonEmptyFourBitCharacterString(table : java.NativeArray<Int>, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, octetPairLength : Int, octetSingleLength : Int) : Void;
	
	/**
	* Encode a non empty string on the seventh bit of an octet using a restricted
	* alphabet table.
	* Implementation of clause C.24 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param alphabet the alphabet defining the mapping between characters and
	*        integer values.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeNonEmptyNBitCharacterStringOnSeventhBit(alphabet : String, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Encode the length of a encoded string on the seventh bit
	* of an octet.
	* Implementation of clause C.24 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param length the length to encode.
	*/
	@:overload @:protected @:final private function encodeNonZeroOctetStringLengthOnSenventhBit(length : Int) : Void;
	
	/**
	* Encode a non zero integer on the second bit of an octet, setting
	* the first bit to 1.
	* Implementation of clause C.24 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* <p>
	* The first bit of the first octet is set, as specified in clause C.13 of
	* ITU-T Rec. X.891 | ISO/IEC 24824-1
	*
	* @param i The integer to encode, which is a member of the interval
	*          [0, 1048575]. In the specification the interval is [1, 1048576]
	*
	*/
	@:overload @:protected @:final private function encodeNonZeroIntegerOnSecondBitFirstBitOne(i : Int) : Void;
	
	/**
	* Encode a non zero integer on the second bit of an octet, setting
	* the first bit to 0.
	* Implementation of clause C.25 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* <p>
	* The first bit of the first octet is set, as specified in clause C.13 of
	* ITU-T Rec. X.891 | ISO/IEC 24824-1
	*
	* @param i The integer to encode, which is a member of the interval
	*          [0, 1048575]. In the specification the interval is [1, 1048576]
	*
	*/
	@:overload @:protected @:final private function encodeNonZeroIntegerOnSecondBitFirstBitZero(i : Int) : Void;
	
	/**
	* Encode a non zero integer on the third bit of an octet.
	* Implementation of clause C.27 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param i The integer to encode, which is a member of the interval
	*          [0, 1048575]. In the specification the interval is [1, 1048576]
	*
	*/
	@:overload @:protected @:final private function encodeNonZeroIntegerOnThirdBit(i : Int) : Void;
	
	/**
	* Encode a non zero integer on the fourth bit of an octet.
	* Implementation of clause C.28 of ITU-T Rec. X.891 | ISO/IEC 24824-1.
	*
	* @param i The integer to encode, which is a member of the interval
	*          [0, 1048575]. In the specification the interval is [1, 1048576]
	*
	*/
	@:overload @:protected @:final private function encodeNonZeroIntegerOnFourthBit(i : Int) : Void;
	
	/**
	* Encode a non empty string using the UTF-8 encoding.
	*
	* @param b the current octet that is being written.
	* @param s the string to be UTF-8 encoded.
	* @param constants the array of constants to use when encoding to determin
	*        how the length of the UTF-8 encoded string is encoded.
	*/
	@:overload @:protected @:final private function encodeNonEmptyUTF8StringAsOctetString(b : Int, s : String, constants : java.NativeArray<Int>) : Void;
	
	/**
	* Encode a non empty string using the UTF-8 encoding.
	*
	* @param b the current octet that is being written.
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*        how the length of the UTF-8 encoded string is encoded.
	* @param constants the array of constants to use when encoding to determin
	*        how the length of the UTF-8 encoded string is encoded.
	*/
	@:overload @:protected @:final private function encodeNonEmptyUTF8StringAsOctetString(b : Int, ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, constants : java.NativeArray<Int>) : Void;
	
	/**
	* Encode the length of non empty UTF-8 encoded string.
	*
	* @param b the current octet that is being written.
	* @param length the length of the UTF-8 encoded string.
	*        how the length of the UTF-8 encoded string is encoded.
	* @param constants the array of constants to use when encoding to determin
	*        how the length of the UTF-8 encoded string is encoded.
	*/
	@:overload @:protected @:final private function encodeNonZeroOctetStringLength(b : Int, length : Int, constants : java.NativeArray<Int>) : Void;
	
	/**
	* Encode a non zero integer.
	*
	* @param b the current octet that is being written.
	* @param i the non zero integer.
	* @param constants the array of constants to use when encoding to determin
	*        how the non zero integer is encoded.
	*/
	@:overload @:protected @:final private function encodeNonZeroInteger(b : Int, i : Int, constants : java.NativeArray<Int>) : Void;
	
	/**
	* Mark the current position in the buffered stream.
	*/
	@:overload @:protected @:final private function mark() : Void;
	
	/**
	* Reset the marked position in the buffered stream.
	*/
	@:overload @:protected @:final private function resetMark() : Void;
	
	/**
	* @return true if the mark has been set, otherwise false if the mark
	*         has not been set.
	*/
	@:overload @:protected @:final private function hasMark() : Bool;
	
	/**
	* Write a byte to the buffered stream.
	*/
	@:overload @:protected @:final private function write(i : Int) : Void;
	
	/**
	* Write an array of bytes to the buffered stream.
	*
	* @param b the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function write(b : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Write an array of bytes to the buffered stream.
	*
	* @param b the array of bytes.
	* @param offset the offset into the array of bytes.
	* @param length the length of bytes.
	*/
	@:overload @:protected @:final private function write(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Encode a string using the UTF-8 encoding.
	*
	* @param s the string to encode.
	*/
	@:overload @:protected @:final private function encodeUTF8String(s : String) : Int;
	
	/**
	* Encode a string using the UTF-8 encoding.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeUTF8String(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Encode a string using the UTF-16 encoding.
	*
	* @param s the string to encode.
	*/
	@:overload @:protected @:final private function encodeUtf16String(s : String) : Int;
	
	/**
	* Encode a string using the UTF-16 encoding.
	*
	* @param ch the array of characters.
	* @param offset the offset into the array of characters.
	* @param length the length of characters.
	*/
	@:overload @:protected @:final private function encodeUtf16String(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Obtain the prefix from a qualified name.
	*
	* @param qName the qualified name
	* @return the prefix, or "" if there is no prefix.
	*/
	@:overload @:public @:static public static function getPrefixFromQualifiedName(qName : String) : String;
	
	/**
	* Check if character array contains characters that are all white space.
	*
	* @param ch the character array
	* @param start the starting character index into the array to check from
	* @param length the number of characters to check
	* @return true if all characters are white space, false otherwise
	*/
	@:overload @:public @:static public static function isWhiteSpace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Bool;
	
	/**
	* Check if a String contains characters that are all white space.
	*
	* @param s the string
	* @return true if all characters are white space, false otherwise
	*/
	@:overload @:public @:static public static function isWhiteSpace(s : String) : Bool;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$Encoder$EncodingBufferOutputStream') @:internal extern class Encoder_EncodingBufferOutputStream extends java.io.OutputStream
{
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function reset() : Void;
	
	
}
