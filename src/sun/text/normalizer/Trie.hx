package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class Trie
{
	/**
	* Trie constructor for CharTrie use.
	* @param inputStream ICU data file input stream which contains the
	*                        trie
	* @param dataManipulate object containing the information to parse the
	*                       trie data
	* @throws IOException thrown when input stream does not have the
	*                        right header.
	*/
	@:overload @:protected private function new(inputStream : java.io.InputStream, dataManipulate : sun.text.normalizer.Trie.Trie_DataManipulate) : Void;
	
	/**
	* Trie constructor
	* @param index array to be used for index
	* @param options used by the trie
	* @param dataManipulate object containing the information to parse the
	*                       trie data
	*/
	@:overload @:protected private function new(index : java.NativeArray<java.StdTypes.Char16>, options : Int, dataManipulate : sun.text.normalizer.Trie.Trie_DataManipulate) : Void;
	
	/**
	* Lead surrogate code points' index displacement in the index array.
	* 0x10000-0xd800=0x2800
	* 0x2800 >> INDEX_STAGE_1_SHIFT_
	*/
	@:protected @:static @:final private static var LEAD_INDEX_OFFSET_(default, null) : Int;
	
	/**
	* Shift size for shifting right the input index. 1..9
	*/
	@:protected @:static @:final private static var INDEX_STAGE_1_SHIFT_(default, null) : Int;
	
	/**
	* Shift size for shifting left the index array values.
	* Increases possible data size with 16-bit index values at the cost
	* of compactability.
	* This requires blocks of stage 2 data to be aligned by
	* DATA_GRANULARITY.
	* 0..INDEX_STAGE_1_SHIFT
	*/
	@:protected @:static @:final private static var INDEX_STAGE_2_SHIFT_(default, null) : Int;
	
	/**
	* Number of data values in a stage 2 (data array) block.
	*/
	@:protected @:static @:final private static var DATA_BLOCK_LENGTH(default, null) : Int;
	
	/**
	* Mask for getting the lower bits from the input index.
	* DATA_BLOCK_LENGTH - 1.
	*/
	@:protected @:static @:final private static var INDEX_STAGE_3_MASK_(default, null) : Int;
	
	/** Number of bits of a trail surrogate that are used in index table lookups. */
	@:protected @:static @:final private static var SURROGATE_BLOCK_BITS(default, null) : Int;
	
	/**
	* Number of index (stage 1) entries per lead surrogate.
	* Same as number of index entries for 1024 trail surrogates,
	* ==0x400>>INDEX_STAGE_1_SHIFT_
	*/
	@:protected @:static @:final private static var SURROGATE_BLOCK_COUNT(default, null) : Int;
	
	/** Length of the BMP portion of the index (stage 1) array. */
	@:protected @:static @:final private static var BMP_INDEX_LENGTH(default, null) : Int;
	
	/**
	* Surrogate mask to use when shifting offset to retrieve supplementary
	* values
	*/
	@:protected @:static @:final private static var SURROGATE_MASK_(default, null) : Int;
	
	/**
	* Index or UTF16 characters
	*/
	@:protected private var m_index_ : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Internal TrieValue which handles the parsing of the data value.
	* This class is to be implemented by the user
	*/
	@:protected private var m_dataManipulate_ : sun.text.normalizer.Trie.Trie_DataManipulate;
	
	/**
	* Start index of the data portion of the trie. CharTrie combines
	* index and data into a char array, so this is used to indicate the
	* initial offset to the data portion.
	* Note this index always points to the initial value.
	*/
	@:protected private var m_dataOffset_ : Int;
	
	/**
	* Length of the data array
	*/
	@:protected private var m_dataLength_ : Int;
	
	/**
	* Gets the offset to the data which the surrogate pair points to.
	* @param lead lead surrogate
	* @param trail trailing surrogate
	* @return offset to data
	*/
	@:overload @:protected @:abstract private function getSurrogateOffset(lead : java.StdTypes.Char16, trail : java.StdTypes.Char16) : Int;
	
	/**
	* Gets the value at the argument index
	* @param index value at index will be retrieved
	* @return 32 bit value
	*/
	@:overload @:protected @:abstract private function getValue(index : Int) : Int;
	
	/**
	* Gets the default initial value
	* @return 32 bit value
	*/
	@:overload @:protected @:abstract private function getInitialValue() : Int;
	
	/**
	* Gets the offset to the data which the index ch after variable offset
	* points to.
	* Note for locating a non-supplementary character data offset, calling
	* <p>
	* getRawOffset(0, ch);
	* </p>
	* will do. Otherwise if it is a supplementary character formed by
	* surrogates lead and trail. Then we would have to call getRawOffset()
	* with getFoldingIndexOffset(). See getSurrogateOffset().
	* @param offset index offset which ch is to start from
	* @param ch index to be used after offset
	* @return offset to the data
	*/
	@:overload @:protected @:final private function getRawOffset(offset : Int, ch : java.StdTypes.Char16) : Int;
	
	/**
	* Gets the offset to data which the BMP character points to
	* Treats a lead surrogate as a normal code point.
	* @param ch BMP character
	* @return offset to data
	*/
	@:overload @:protected @:final private function getBMPOffset(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Gets the offset to the data which this lead surrogate character points
	* to.
	* Data at the returned offset may contain folding offset information for
	* the next trailing surrogate character.
	* @param ch lead surrogate character
	* @return offset to data
	*/
	@:overload @:protected @:final private function getLeadOffset(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Internal trie getter from a code point.
	* Could be faster(?) but longer with
	*   if((c32)<=0xd7ff) { (result)=_TRIE_GET_RAW(trie, data, 0, c32); }
	* Gets the offset to data which the codepoint points to
	* @param ch codepoint
	* @return offset to data
	*/
	@:overload @:protected @:final private function getCodePointOffset(ch : Int) : Int;
	
	/**
	* <p>Parses the inputstream and creates the trie index with it.</p>
	* <p>This is overwritten by the child classes.
	* @param inputStream input stream containing the trie information
	* @exception IOException thrown when data reading fails.
	*/
	@:overload @:protected private function unserialize(inputStream : java.io.InputStream) : Void;
	
	/**
	* Determines if this is a 32 bit trie
	* @return true if options specifies this is a 32 bit trie
	*/
	@:overload @:protected @:final private function isIntTrie() : Bool;
	
	/**
	* Determines if this is a 16 bit trie
	* @return true if this is a 16 bit trie
	*/
	@:overload @:protected @:final private function isCharTrie() : Bool;
	
	/**
	* Latin 1 option mask
	*/
	@:protected @:static @:final private static var HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_(default, null) : Int;
	
	/**
	* Constant number to authenticate the byte block
	*/
	@:protected @:static @:final private static var HEADER_SIGNATURE_(default, null) : Int;
	
	@:protected @:static @:final private static var HEADER_OPTIONS_INDEX_SHIFT_(default, null) : Int;
	
	@:protected @:static @:final private static var HEADER_OPTIONS_DATA_IS_32_BIT_(default, null) : Int;
	
	
}
/**
* Character data in com.ibm.impl.Trie have different user-specified format
* for different purposes.
* This interface specifies methods to be implemented in order for
* com.ibm.impl.Trie, to surrogate offset information encapsulated within
* the data.
*/
@:native('sun$text$normalizer$Trie$DataManipulate') extern interface Trie_DataManipulate
{
	/**
	* Called by com.ibm.icu.impl.Trie to extract from a lead surrogate's
	* data
	* the index array offset of the indexes for that lead surrogate.
	* @param value data value for a surrogate from the trie, including the
	*        folding offset
	* @return data offset or 0 if there is no data for the lead surrogate
	*/
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
@:native('sun$text$normalizer$Trie$DefaultGetFoldingOffset') @:internal extern class Trie_DefaultGetFoldingOffset implements sun.text.normalizer.Trie.Trie_DataManipulate
{
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
