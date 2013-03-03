package sun.text.normalizer;
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
extern class NormalizerImpl
{
	@:public @:static @:final public static var QC_NFC(default, null) : Int;
	
	/* no|maybe */
	@:public @:static @:final public static var QC_NFKC(default, null) : Int;
	
	/* no|maybe */
	@:public @:static @:final public static var QC_NFD(default, null) : Int;
	
	/* no */
	@:public @:static @:final public static var QC_NFKD(default, null) : Int;
	
	/* no */
	@:public @:static @:final public static var QC_ANY_NO(default, null) : Int;
	
	/* quick check flags 4..5 mean "maybe" for their forms;
	* test flags>=QC_MAYBE
	*/
	@:public @:static @:final public static var QC_MAYBE(default, null) : Int;
	
	@:public @:static @:final public static var QC_ANY_MAYBE(default, null) : Int;
	
	@:public @:static @:final public static var QC_MASK(default, null) : Int;
	
	@:public @:static @:final public static var COMBINES_ANY(default, null) : Int;
	
	@:public @:static @:final public static var CC_MASK(default, null) : Int;
	
	/* first code point with quick check NFC NO/MAYBE */
	@:public @:static @:final public static var INDEX_MIN_NFC_NO_MAYBE(default, null) : Int;
	
	/* first code point with quick check NFKC NO/MAYBE */
	@:public @:static @:final public static var INDEX_MIN_NFKC_NO_MAYBE(default, null) : Int;
	
	/* first code point with quick check NFD NO/MAYBE */
	@:public @:static @:final public static var INDEX_MIN_NFD_NO_MAYBE(default, null) : Int;
	
	/* first code point with quick check NFKD NO/MAYBE */
	@:public @:static @:final public static var INDEX_MIN_NFKD_NO_MAYBE(default, null) : Int;
	
	/**
	* FCD check: everything below this code point is known to have a 0
	* lead combining class
	*/
	@:public @:static @:final public static var MIN_WITH_LEAD_CC(default, null) : Int;
	
	@:overload @:public @:static public static function getFromIndexesArr(index : Int) : Int;
	
	/* Korean Hangul and Jamo constants */
	@:public @:static @:final public static var JAMO_L_BASE(default, null) : Int;
	
	/* "lead" jamo */
	@:public @:static @:final public static var JAMO_V_BASE(default, null) : Int;
	
	/* "vowel" jamo */
	@:public @:static @:final public static var JAMO_T_BASE(default, null) : Int;
	
	/* "trail" jamo */
	@:public @:static @:final public static var HANGUL_BASE(default, null) : Int;
	
	@:public @:static @:final public static var JAMO_L_COUNT(default, null) : Int;
	
	@:public @:static @:final public static var JAMO_V_COUNT(default, null) : Int;
	
	@:public @:static @:final public static var JAMO_T_COUNT(default, null) : Int;
	
	@:public @:static @:final public static var HANGUL_COUNT(default, null) : Int;
	
	/* data access primitives ----------------------------------------------- */
	@:overload @:public @:static public static function getNorm32(c : java.StdTypes.Char16) : haxe.Int64;
	
	@:overload @:public @:static public static function getNorm32FromSurrogatePair(norm32 : haxe.Int64, c2 : java.StdTypes.Char16) : haxe.Int64;
	
	@:overload @:public @:static public static function getUnicodeVersion() : sun.text.normalizer.VersionInfo;
	
	@:overload @:public @:static public static function getFCD16(c : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function getFCD16FromSurrogatePair(fcd16 : java.StdTypes.Char16, c2 : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function getFCD16(c : Int) : Int;
	
	/*
	* is this a safe boundary character for NF*D?
	* (lead cc==0)
	*/
	@:overload @:public @:static public static function isNFDSafe(norm32 : haxe.Int64, ccOrQCMask : Int, decompQCMask : Int) : Bool;
	
	/*
	* is this (or does its decomposition begin with) a "true starter"?
	* (cc==0 and NF*C_YES)
	*/
	@:overload @:public @:static public static function isTrueStarter(norm32 : haxe.Int64, ccOrQCMask : Int, decompQCMask : Int) : Bool;
	
	@:overload @:public @:static public static function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, minNoMaybe : Int, qcMask : Int, options : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : sun.text.normalizer.NormalizerBase.NormalizerBase_QuickCheckResult;
	
	@:overload @:public @:static public static function decompose(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, compat : Bool, outTrailCC : java.NativeArray<Int>, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	/*
	public static int compose(char[] src, char[] dest,boolean compat, UnicodeSet nx){
	return compose(src,0,src.length,dest,0,dest.length,compat, nx);
	}
	*/
	@:overload @:public @:static public static function compose(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, options : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	@:overload @:public @:static public static function getCombiningClass(c : Int) : Int;
	
	@:overload @:public @:static public static function isFullCompositionExclusion(c : Int) : Bool;
	
	@:overload @:public @:static public static function isCanonSafeStart(c : Int) : Bool;
	
	/* Is c an NF<mode>-skippable code point? See unormimp.h. */
	@:overload @:public @:static public static function isNFSkippable(c : Int, mode : sun.text.normalizer.NormalizerBase.NormalizerBase_Mode, mask : haxe.Int64) : Bool;
	
	@:overload @:public @:static public static function addPropertyStarts(set : sun.text.normalizer.UnicodeSet) : sun.text.normalizer.UnicodeSet;
	
	/**
	* Internal API, used in UCharacter.getIntPropertyValue().
	* @internal
	* @param c code point
	* @param modeValue numeric value compatible with Mode
	* @return numeric value compatible with QuickCheck
	*/
	@:overload @:public @:static @:final public static function quickCheck(c : Int, modeValue : Int) : Int;
	
	@:public @:static @:final public static var OPTIONS_SETS_MASK(default, null) : Int;
	
	/**
	* Options bit 8, use buggy recomposition described in
	* Unicode Public Review Issue #29
	* at http://www.unicode.org/review/resolved-pri.html#pri29
	*
	* Used in IDNA implementation according to strict interpretation
	* of IDNA definition based on Unicode 3.2 which predates PRI #29.
	*
	* See ICU4C unormimp.h
	*
	* @draft ICU 3.2
	*/
	@:public @:static @:final public static var BEFORE_PRI_29(default, null) : Int;
	
	/** Options bit 12, for compatibility vs. canonical decomposition. */
	@:public @:static @:final public static var OPTIONS_COMPAT(default, null) : Int;
	
	/** Options bit 13, no discontiguous composition (FCC vs. NFC). */
	@:public @:static @:final public static var OPTIONS_COMPOSE_CONTIGUOUS(default, null) : Int;
	
	@:overload @:public @:static @:final public static function getNX(options : Int) : sun.text.normalizer.UnicodeSet;
	
	/**
	* Get the canonical decomposition
	* sherman  for ComposedCharIter
	*/
	@:overload @:public @:static public static function getDecompose(chars : java.NativeArray<Int>, decomps : java.NativeArray<String>) : Int;
	
	@:overload @:public @:static public static function canonicalDecomposeWithSingleQuotation(string : String) : String;
	
	/*
	* Option used in NormalizerBase.UNICODE_3_2_0_ORIGINAL.
	*/
	@:public @:static @:final public static var WITHOUT_CORRIGENDUM4_CORRECTIONS(default, null) : Int;
	
	/*
	* Removing Corrigendum 4 fix
	* @return normalized text
	*/
	@:overload @:public @:static public static function convert(str : String) : String;
	
	
}
/* Wrappers for Trie implementations */
@:native('sun$text$normalizer$NormalizerImpl$NormTrieImpl') @:internal extern class NormalizerImpl_NormTrieImpl implements sun.text.normalizer.Trie.Trie_DataManipulate
{
	/* normTrie: 32-bit trie result may contain a special extraData index with the folding offset */
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
@:native('sun$text$normalizer$NormalizerImpl$FCDTrieImpl') @:internal extern class NormalizerImpl_FCDTrieImpl implements sun.text.normalizer.Trie.Trie_DataManipulate
{
	/* fcdTrie: the folding offset is the lead FCD value itself */
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
@:native('sun$text$normalizer$NormalizerImpl$AuxTrieImpl') @:internal extern class NormalizerImpl_AuxTrieImpl implements sun.text.normalizer.Trie.Trie_DataManipulate
{
	/* auxTrie: the folding offset is in bits 9..0 of the 16-bit trie result */
	@:overload @:public public function getFoldingOffset(value : Int) : Int;
	
	
}
@:native('sun$text$normalizer$NormalizerImpl$DecomposeArgs') @:internal extern class NormalizerImpl_DecomposeArgs
{
	
}
@:native('sun$text$normalizer$NormalizerImpl$NextCCArgs') @:internal extern class NormalizerImpl_NextCCArgs
{
	
}
@:native('sun$text$normalizer$NormalizerImpl$PrevArgs') @:internal extern class NormalizerImpl_PrevArgs
{
	
}
/* make NFC & NFKC ------------------------------------------------------ */
@:native('sun$text$normalizer$NormalizerImpl$NextCombiningArgs') @:internal extern class NormalizerImpl_NextCombiningArgs
{
	
}
@:native('sun$text$normalizer$NormalizerImpl$RecomposeArgs') @:internal extern class NormalizerImpl_RecomposeArgs
{
	
}
@:native('sun$text$normalizer$NormalizerImpl$ComposePartArgs') @:internal extern class NormalizerImpl_ComposePartArgs
{
	
}
