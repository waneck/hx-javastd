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
extern class UnicodeSetIterator
{
	/**
	* Value of <tt>codepoint</tt> if the iterator points to a string.
	* If <tt>codepoint == IS_STRING</tt>, then examine
	* <tt>string</tt> for the current iteration result.
	* @stable ICU 2.0
	*/
	@:public @:static public static var IS_STRING : Int;
	
	/**
	* Current code point, or the special value <tt>IS_STRING</tt>, if
	* the iterator points to a string.
	* @stable ICU 2.0
	*/
	@:public public var codepoint : Int;
	
	/**
	* When iterating over ranges using <tt>nextRange()</tt>,
	* <tt>codepointEnd</tt> contains the inclusive end of the
	* iteration range, if <tt>codepoint != IS_STRING</tt>.  If
	* iterating over code points using <tt>next()</tt>, or if
	* <tt>codepoint == IS_STRING</tt>, then the value of
	* <tt>codepointEnd</tt> is undefined.
	* @stable ICU 2.0
	*/
	@:public public var codepointEnd : Int;
	
	/**
	* If <tt>codepoint == IS_STRING</tt>, then <tt>string</tt> points
	* to the current string.  If <tt>codepoint != IS_STRING</tt>, the
	* value of <tt>string</tt> is undefined.
	* @stable ICU 2.0
	*/
	@:public public var string : String;
	
	/**
	* Create an iterator over the given set.
	* @param set set to iterate over
	* @stable ICU 2.0
	*/
	@:overload @:public public function new(set : sun.text.normalizer.UnicodeSet) : Void;
	
	/**
	* Returns the next element in the set, either a code point range
	* or a string.  If there are no more elements in the set, return
	* false.  If <tt>codepoint == IS_STRING</tt>, the value is a
	* string in the <tt>string</tt> field.  Otherwise the value is a
	* range of one or more code points from <tt>codepoint</tt> to
	* <tt>codepointeEnd</tt> inclusive.
	*
	* <p>The order of iteration is all code points ranges in sorted
	* order, followed by all strings sorted order.  Ranges are
	* disjoint and non-contiguous.  <tt>string</tt> is undefined
	* unless <tt>codepoint == IS_STRING</tt>.  Do not mix calls to
	* <tt>next()</tt> and <tt>nextRange()</tt> without calling
	* <tt>reset()</tt> between them.  The results of doing so are
	* undefined.
	*
	* @return true if there was another element in the set and this
	* object contains the element.
	* @stable ICU 2.0
	*/
	@:overload @:public public function nextRange() : Bool;
	
	/**
	* Sets this iterator to visit the elements of the given set and
	* resets it to the start of that set.  The iterator is valid only
	* so long as <tt>set</tt> is valid.
	* @param set the set to iterate over.
	* @stable ICU 2.0
	*/
	@:overload @:public public function reset(uset : sun.text.normalizer.UnicodeSet) : Void;
	
	/**
	* Resets this iterator to the start of the set.
	* @stable ICU 2.0
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* @internal
	*/
	@:protected private var endElement : Int;
	
	/**
	* @internal
	*/
	@:protected private var nextElement : Int;
	
	/**
	* @internal
	*/
	@:overload @:protected private function loadRange(aRange : Int) : Void;
	
	
}
