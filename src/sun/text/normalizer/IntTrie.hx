package sun.text.normalizer;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class IntTrie extends sun.text.normalizer.Trie
{
	/**
	* <p>Creates a new Trie with the settings for the trie data.</p>
	* <p>Unserialize the 32-bit-aligned input stream and use the data for the
	* trie.</p>
	* @param inputStream file input stream to a ICU data file, containing
	*                    the trie
	* @param dataManipulate object which provides methods to parse the char
	*                        data
	* @throws IOException thrown when data reading fails
	* @draft 2.1
	*/
	@:overload public function new(inputStream : java.io.InputStream, datamanipulate : sun.text.normalizer.Trie.Trie_DataManipulate) : Void;
	
	/**
	* Gets the value associated with the codepoint.
	* If no value is associated with the codepoint, a default value will be
	* returned.
	* @param ch codepoint
	* @return offset to data
	* @draft 2.1
	*/
	@:overload @:final public function getCodePointValue(ch : Int) : Int;
	
	/**
	* Gets the value to the data which this lead surrogate character points
	* to.
	* Returned data may contain folding offset information for the next
	* trailing surrogate character.
	* This method does not guarantee correct results for trail surrogates.
	* @param ch lead surrogate character
	* @return data value
	* @draft 2.1
	*/
	@:overload @:final public function getLeadValue(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Get a value from a folding offset (from the value of a lead surrogate)
	* and a trail surrogate.
	* @param leadvalue the value of a lead surrogate that contains the
	*        folding offset
	* @param trail surrogate
	* @return trie data value associated with the trail character
	* @draft 2.1
	*/
	@:overload @:final public function getTrailValue(leadvalue : Int, trail : java.StdTypes.Char16) : Int;
	
	/**
	* <p>Parses the input stream and stores its trie content into a index and
	* data array</p>
	* @param inputStream data input stream containing trie data
	* @exception IOException thrown when data reading fails
	*/
	@:overload @:final private function unserialize(inputStream : java.io.InputStream) : Void;
	
	/**
	* Gets the offset to the data which the surrogate pair points to.
	* @param lead lead surrogate
	* @param trail trailing surrogate
	* @return offset to data
	* @draft 2.1
	*/
	@:overload @:final private function getSurrogateOffset(lead : java.StdTypes.Char16, trail : java.StdTypes.Char16) : Int;
	
	/**
	* Gets the value at the argument index.
	* For use internally in TrieIterator
	* @param index value at index will be retrieved
	* @return 32 bit value
	* @see com.ibm.icu.impl.TrieIterator
	* @draft 2.1
	*/
	@:overload @:final private function getValue(index : Int) : Int;
	
	/**
	* Gets the default initial value
	* @return 32 bit value
	* @draft 2.1
	*/
	@:overload @:final private function getInitialValue() : Int;
	
	
}
