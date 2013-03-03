package sun.net.idn;
/*
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
/*
*******************************************************************************
* Copyright (C) 2003-2004, International Business Machines Corporation and         *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
////
//// CHANGELOG
////      2005-05-19 Edward Wang
////          - copy this file from icu4jsrc_3_2/src/com/ibm/icu/text/StringPrep.java
////          - move from package com.ibm.icu.text to package sun.net.idn
////          - use ParseException instead of StringPrepParseException
////          - change 'Normalizer.getUnicodeVersion()' to 'NormalizerImpl.getUnicodeVersion()'
////          - remove all @deprecated tag to make compiler happy
////      2007-08-14 Martin Buchholz
////          - remove redundant casts
////
extern class StringPrep
{
	/**
	* Option to prohibit processing of unassigned code points in the input
	*
	* @see   #prepare
	* @draft ICU 2.8
	*/
	@:public @:static @:final public static var DEFAULT(default, null) : Int;
	
	/**
	* Option to allow processing of unassigned code points in the input
	*
	* @see   #prepare
	* @draft ICU 2.8
	*/
	@:public @:static @:final public static var ALLOW_UNASSIGNED(default, null) : Int;
	
	/**
	* Creates an StringPrep object after reading the input stream.
	* The object does not hold a reference to the input steam, so the stream can be
	* closed after the method returns.
	*
	* @param inputStream The stream for reading the StringPrep profile binarySun
	* @throws IOException
	* @draft ICU 2.8
	*/
	@:overload @:public public function new(inputStream : java.io.InputStream) : Void;
	
	/**
	* Prepare the input buffer for use in applications with the given profile. This operation maps, normalizes(NFKC),
	* checks for prohited and BiDi characters in the order defined by RFC 3454
	* depending on the options specified in the profile.
	*
	* @param src           A UCharacterIterator object containing the source string
	* @param options       A bit set of options:
	*
	*  - StringPrep.NONE               Prohibit processing of unassigned code points in the input
	*
	*  - StringPrep.ALLOW_UNASSIGNED   Treat the unassigned code points are in the input
	*                                  as normal Unicode code points.
	*
	* @return StringBuffer A StringBuffer containing the output
	* @throws ParseException
	* @draft ICU 2.8
	*/
	@:overload @:public public function prepare(src : sun.text.normalizer.UCharacterIterator, options : Int) : java.lang.StringBuffer;
	
	
}
/* Wrappers for Trie implementations */
@:native('sun$net$idn$StringPrep$StringPrepTrieImpl') @:internal extern class StringPrep_StringPrepTrieImpl implements sun.text.normalizer.Trie.Trie_DataManipulate
{
	/**
	* Called by com.ibm.icu.util.Trie to extract from a lead surrogate's
	* data the index array offset of the indexes for that lead surrogate.
	* @param property data value for a surrogate from the trie, including
	*        the folding offset
	* @return data offset or 0 if there is no data for the lead surrogate
	*/
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
@:native('sun$net$idn$StringPrep$Values') @:internal extern class StringPrep_Values
{
	@:overload @:public public function reset() : Void;
	
	
}
