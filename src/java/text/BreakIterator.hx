package java.text;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class BreakIterator implements java.lang.Cloneable
{
	/**
	* Constructor. BreakIterator is stateless and has no default behavior.
	*/
	@:overload private function new() : Void;
	
	/**
	* Create a copy of this iterator
	* @return A copy of this
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* DONE is returned by previous(), next(), next(int), preceding(int)
	* and following(int) when either the first or last text boundary has been
	* reached.
	*/
	public static var DONE(default, null) : Int;
	
	/**
	* Returns the first boundary. The iterator's current position is set
	* to the first text boundary.
	* @return The character index of the first text boundary.
	*/
	@:overload @:abstract public function first() : Int;
	
	/**
	* Returns the last boundary. The iterator's current position is set
	* to the last text boundary.
	* @return The character index of the last text boundary.
	*/
	@:overload @:abstract public function last() : Int;
	
	/**
	* Returns the nth boundary from the current boundary. If either
	* the first or last text boundary has been reached, it returns
	* <code>BreakIterator.DONE</code> and the current position is set to either
	* the first or last text boundary depending on which one is reached. Otherwise,
	* the iterator's current position is set to the new boundary.
	* For example, if the iterator's current position is the mth text boundary
	* and three more boundaries exist from the current boundary to the last text
	* boundary, the next(2) call will return m + 2. The new text position is set
	* to the (m + 2)th text boundary. A next(4) call would return
	* <code>BreakIterator.DONE</code> and the last text boundary would become the
	* new text position.
	* @param n which boundary to return.  A value of 0
	* does nothing.  Negative values move to previous boundaries
	* and positive values move to later boundaries.
	* @return The character index of the nth boundary from the current position
	* or <code>BreakIterator.DONE</code> if either first or last text boundary
	* has been reached.
	*/
	@:overload @:abstract public function next(n : Int) : Int;
	
	/**
	* Returns the boundary following the current boundary. If the current boundary
	* is the last text boundary, it returns <code>BreakIterator.DONE</code> and
	* the iterator's current position is unchanged. Otherwise, the iterator's
	* current position is set to the boundary following the current boundary.
	* @return The character index of the next text boundary or
	* <code>BreakIterator.DONE</code> if the current boundary is the last text
	* boundary.
	* Equivalent to next(1).
	* @see #next(int)
	*/
	@:overload @:abstract public function next() : Int;
	
	/**
	* Returns the boundary preceding the current boundary. If the current boundary
	* is the first text boundary, it returns <code>BreakIterator.DONE</code> and
	* the iterator's current position is unchanged. Otherwise, the iterator's
	* current position is set to the boundary preceding the current boundary.
	* @return The character index of the previous text boundary or
	* <code>BreakIterator.DONE</code> if the current boundary is the first text
	* boundary.
	*/
	@:overload @:abstract public function previous() : Int;
	
	/**
	* Returns the first boundary following the specified character offset. If the
	* specified offset equals to the last text boundary, it returns
	* <code>BreakIterator.DONE</code> and the iterator's current position is unchanged.
	* Otherwise, the iterator's current position is set to the returned boundary.
	* The value returned is always greater than the offset or the value
	* <code>BreakIterator.DONE</code>.
	* @param offset the character offset to begin scanning.
	* @return The first boundary after the specified offset or
	* <code>BreakIterator.DONE</code> if the last text boundary is passed in
	* as the offset.
	* @exception  IllegalArgumentException if the specified offset is less than
	* the first text boundary or greater than the last text boundary.
	*/
	@:overload @:abstract public function following(offset : Int) : Int;
	
	/**
	* Returns the last boundary preceding the specified character offset. If the
	* specified offset equals to the first text boundary, it returns
	* <code>BreakIterator.DONE</code> and the iterator's current position is unchanged.
	* Otherwise, the iterator's current position is set to the returned boundary.
	* The value returned is always less than the offset or the value
	* <code>BreakIterator.DONE</code>.
	* @param offset the characater offset to begin scanning.
	* @return The last boundary before the specified offset or
	* <code>BreakIterator.DONE</code> if the first text boundary is passed in
	* as the offset.
	* @exception   IllegalArgumentException if the specified offset is less than
	* the first text boundary or greater than the last text boundary.
	* @since 1.2
	*/
	@:require(java2) @:overload public function preceding(offset : Int) : Int;
	
	/**
	* Returns true if the specified character offset is a text boundary.
	* @param offset the character offset to check.
	* @return <code>true</code> if "offset" is a boundary position,
	* <code>false</code> otherwise.
	* @exception   IllegalArgumentException if the specified offset is less than
	* the first text boundary or greater than the last text boundary.
	* @since 1.2
	*/
	@:require(java2) @:overload public function isBoundary(offset : Int) : Bool;
	
	/**
	* Returns character index of the text boundary that was most
	* recently returned by next(), next(int), previous(), first(), last(),
	* following(int) or preceding(int). If any of these methods returns
	* <code>BreakIterator.DONE</code> because either first or last text boundary
	* has been reached, it returns the first or last text boundary depending on
	* which one is reached.
	* @return The text boundary returned from the above methods, first or last
	* text boundary.
	* @see #next()
	* @see #next(int)
	* @see #previous()
	* @see #first()
	* @see #last()
	* @see #following(int)
	* @see #preceding(int)
	*/
	@:overload @:abstract public function current() : Int;
	
	/**
	* Get the text being scanned
	* @return the text being scanned
	*/
	@:overload @:abstract public function getText() : java.text.CharacterIterator;
	
	/**
	* Set a new text string to be scanned.  The current scan
	* position is reset to first().
	* @param newText new text to scan.
	*/
	@:overload public function setText(newText : String) : Void;
	
	/**
	* Set a new text for scanning.  The current scan
	* position is reset to first().
	* @param newText new text to scan.
	*/
	@:overload @:abstract public function setText(newText : java.text.CharacterIterator) : Void;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#word">word breaks</a>
	* for the {@linkplain Locale#getDefault() default locale}.
	* @return A break iterator for word breaks
	*/
	@:overload public static function getWordInstance() : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#word">word breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for word breaks
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public static function getWordInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#line">line breaks</a>
	* for the {@linkplain Locale#getDefault() default locale}.
	* @return A break iterator for line breaks
	*/
	@:overload public static function getLineInstance() : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#line">line breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for line breaks
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public static function getLineInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#character">character breaks</a>
	* for the {@linkplain Locale#getDefault() default locale}.
	* @return A break iterator for character breaks
	*/
	@:overload public static function getCharacterInstance() : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#character">character breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for character breaks
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public static function getCharacterInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#sentence">sentence breaks</a>
	* for the {@linkplain Locale#getDefault() default locale}.
	* @return A break iterator for sentence breaks
	*/
	@:overload public static function getSentenceInstance() : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="#sentence">sentence breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for sentence breaks
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public static function getSentenceInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns an array of all locales for which the
	* <code>get*Instance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported by the Java
	* runtime and by installed
	* {@link java.text.spi.BreakIteratorProvider BreakIteratorProvider} implementations.
	* It must contain at least a <code>Locale</code>
	* instance equal to {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>BreakIterator</code> instances are available.
	*/
	@:overload @:synchronized public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	
}
@:native('java$text$BreakIterator$BreakIteratorCache') @:internal extern class BreakIterator_BreakIteratorCache
{
	
}
/**
* Obtains a BreakIterator instance from a BreakIteratorProvider
* implementation.
*/
@:native('java$text$BreakIterator$BreakIteratorGetter') @:internal extern class BreakIterator_BreakIteratorGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.BreakIteratorProvider, java.text.BreakIterator>
{
	@:overload public function getObject(breakIteratorProvider : java.text.spi.BreakIteratorProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : java.text.BreakIterator;
	
	
}
