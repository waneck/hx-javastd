package java.text.spi;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BreakIteratorProvider extends java.util.spi.LocaleServiceProvider
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="../BreakIterator.html#word">word breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for word breaks
	* @exception NullPointerException if <code>locale</code> is null
	* @exception IllegalArgumentException if <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @see java.text.BreakIterator#getWordInstance(java.util.Locale)
	*/
	@:overload @:public @:abstract public function getWordInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="../BreakIterator.html#line">line breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for line breaks
	* @exception NullPointerException if <code>locale</code> is null
	* @exception IllegalArgumentException if <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @see java.text.BreakIterator#getLineInstance(java.util.Locale)
	*/
	@:overload @:public @:abstract public function getLineInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="../BreakIterator.html#character">character breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for character breaks
	* @exception NullPointerException if <code>locale</code> is null
	* @exception IllegalArgumentException if <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @see java.text.BreakIterator#getCharacterInstance(java.util.Locale)
	*/
	@:overload @:public @:abstract public function getCharacterInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	/**
	* Returns a new <code>BreakIterator</code> instance
	* for <a href="../BreakIterator.html#sentence">sentence breaks</a>
	* for the given locale.
	* @param locale the desired locale
	* @return A break iterator for sentence breaks
	* @exception NullPointerException if <code>locale</code> is null
	* @exception IllegalArgumentException if <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @see java.text.BreakIterator#getSentenceInstance(java.util.Locale)
	*/
	@:overload @:public @:abstract public function getSentenceInstance(locale : java.util.Locale) : java.text.BreakIterator;
	
	
}
