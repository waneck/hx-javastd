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
extern class UnicodeSet implements sun.text.normalizer.UnicodeMatcher
{
	/**
	* Minimum value that can be stored in a UnicodeSet.
	* @stable ICU 2.0
	*/
	public static var MIN_VALUE(default, null) : Int;
	
	/**
	* Maximum value that can be stored in a UnicodeSet.
	* @stable ICU 2.0
	*/
	public static var MAX_VALUE(default, null) : Int;
	
	/**
	* Constructs an empty set.
	* @stable ICU 2.0
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a set containing the given range. If <code>end >
	* start</code> then an empty set is created.
	*
	* @param start first character, inclusive, of range
	* @param end last character, inclusive, of range
	* @stable ICU 2.0
	*/
	@:overload public function new(start : Int, end : Int) : Void;
	
	/**
	* Constructs a set from the given pattern.  See the class description
	* for the syntax of the pattern language.  Whitespace is ignored.
	* @param pattern a string specifying what characters are in the set
	* @exception java.lang.IllegalArgumentException if the pattern contains
	* a syntax error.
	* @stable ICU 2.0
	*/
	@:overload public function new(pattern : String) : Void;
	
	/**
	* Make this object represent the same set as <code>other</code>.
	* @param other a <code>UnicodeSet</code> whose value will be
	* copied to this object
	* @stable ICU 2.0
	*/
	@:overload public function set(other : UnicodeSet) : UnicodeSet;
	
	/**
	* Modifies this set to represent the set specified by the given pattern.
	* See the class description for the syntax of the pattern language.
	* Whitespace is ignored.
	* @param pattern a string specifying what characters are in the set
	* @exception java.lang.IllegalArgumentException if the pattern
	* contains a syntax error.
	* @stable ICU 2.0
	*/
	@:overload @:final public function applyPattern(pattern : String) : UnicodeSet;
	
	/**
	* Generate and append a string representation of this set to result.
	* This does not use this.pat, the cleaned up copy of the string
	* passed to applyPattern().
	* @param includeStrings if false, doesn't include the strings.
	* @stable ICU 3.8
	*/
	@:overload public function _generatePattern(result : java.lang.StringBuffer, escapeUnprintable : Bool, includeStrings : Bool) : java.lang.StringBuffer;
	
	/**
	* Adds the specified character to this set if it is not already
	* present.  If this set already contains the specified character,
	* the call leaves this set unchanged.
	* @stable ICU 2.0
	*/
	@:overload @:final public function add(c : Int) : UnicodeSet;
	
	/**
	* Adds the specified multicharacter to this set if it is not already
	* present.  If this set already contains the multicharacter,
	* the call leaves this set unchanged.
	* Thus "ch" => {"ch"}
	* <br><b>Warning: you cannot add an empty string ("") to a UnicodeSet.</b>
	* @param s the source string
	* @return this object, for chaining
	* @stable ICU 2.0
	*/
	@:overload @:final public function add(s : String) : UnicodeSet;
	
	/**
	* Complements the specified range in this set.  Any character in
	* the range will be removed if it is in this set, or will be
	* added if it is not in this set.  If <code>end > start</code>
	* then an empty range is complemented, leaving the set unchanged.
	*
	* @param start first character, inclusive, of range to be removed
	* from this set.
	* @param end last character, inclusive, of range to be removed
	* from this set.
	* @stable ICU 2.0
	*/
	@:overload public function complement(start : Int, end : Int) : UnicodeSet;
	
	/**
	* This is equivalent to
	* <code>complement(MIN_VALUE, MAX_VALUE)</code>.
	* @stable ICU 2.0
	*/
	@:overload public function complement() : UnicodeSet;
	
	/**
	* Returns true if this set contains the given character.
	* @param c character to be checked for containment
	* @return true if the test condition is met
	* @stable ICU 2.0
	*/
	@:overload public function contains(c : Int) : Bool;
	
	/**
	* Adds all of the elements in the specified set to this set if
	* they're not already present.  This operation effectively
	* modifies this set so that its value is the <i>union</i> of the two
	* sets.  The behavior of this operation is unspecified if the specified
	* collection is modified while the operation is in progress.
	*
	* @param c set whose elements are to be added to this set.
	* @stable ICU 2.0
	*/
	@:overload public function addAll(c : UnicodeSet) : UnicodeSet;
	
	/**
	* Retains only the elements in this set that are contained in the
	* specified set.  In other words, removes from this set all of
	* its elements that are not contained in the specified set.  This
	* operation effectively modifies this set so that its value is
	* the <i>intersection</i> of the two sets.
	*
	* @param c set that defines which elements this set will retain.
	* @stable ICU 2.0
	*/
	@:overload public function retainAll(c : UnicodeSet) : UnicodeSet;
	
	/**
	* Removes from this set all of its elements that are contained in the
	* specified set.  This operation effectively modifies this
	* set so that its value is the <i>asymmetric set difference</i> of
	* the two sets.
	*
	* @param c set that defines which elements will be removed from
	*          this set.
	* @stable ICU 2.0
	*/
	@:overload public function removeAll(c : UnicodeSet) : UnicodeSet;
	
	/**
	* Removes all of the elements from this set.  This set will be
	* empty after this call returns.
	* @stable ICU 2.0
	*/
	@:overload public function clear() : UnicodeSet;
	
	/**
	* Iteration method that returns the number of ranges contained in
	* this set.
	* @see #getRangeStart
	* @see #getRangeEnd
	* @stable ICU 2.0
	*/
	@:overload public function getRangeCount() : Int;
	
	/**
	* Iteration method that returns the first character in the
	* specified range of this set.
	* @exception ArrayIndexOutOfBoundsException if index is outside
	* the range <code>0..getRangeCount()-1</code>
	* @see #getRangeCount
	* @see #getRangeEnd
	* @stable ICU 2.0
	*/
	@:overload public function getRangeStart(index : Int) : Int;
	
	/**
	* Iteration method that returns the last character in the
	* specified range of this set.
	* @exception ArrayIndexOutOfBoundsException if index is outside
	* the range <code>0..getRangeCount()-1</code>
	* @see #getRangeStart
	* @see #getRangeEnd
	* @stable ICU 2.0
	*/
	@:overload public function getRangeEnd(index : Int) : Int;
	
	/**
	* Modifies this set to contain those code points which have the
	* given value for the given property.  Prior contents of this
	* set are lost.
	* @param propertyAlias
	* @param valueAlias
	* @param symbols if not null, then symbols are first called to see if a property
	* is available. If true, then everything else is skipped.
	* @return this set
	* @stable ICU 3.2
	*/
	@:overload public function applyPropertyAlias(propertyAlias : String, valueAlias : String, symbols : sun.text.normalizer.SymbolTable) : UnicodeSet;
	
	/**
	* Bitmask for constructor and applyPattern() indicating that
	* white space should be ignored.  If set, ignore characters for
	* which UCharacterProperty.isRuleWhiteSpace() returns true,
	* unless they are quoted or escaped.  This may be ORed together
	* with other selectors.
	* @stable ICU 3.8
	*/
	public static var IGNORE_SPACE(default, null) : Int;
	
	
}
@:native('sun$text$normalizer$UnicodeSet$Filter') @:internal extern interface UnicodeSet_Filter
{
	@:overload public function contains(codePoint : Int) : Bool;
	
	
}
@:native('sun$text$normalizer$UnicodeSet$VersionFilter') @:internal extern class UnicodeSet_VersionFilter implements UnicodeSet_Filter
{
	@:overload public function contains(ch : Int) : Bool;
	
	
}
