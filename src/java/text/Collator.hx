package java.text;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996-1998 -  All Rights Reserved
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class Collator implements java.util.Comparator<Dynamic> implements java.lang.Cloneable
{
	/**
	* Collator strength value.  When set, only PRIMARY differences are
	* considered significant during comparison. The assignment of strengths
	* to language features is locale dependant. A common example is for
	* different base letters ("a" vs "b") to be considered a PRIMARY difference.
	* @see java.text.Collator#setStrength
	* @see java.text.Collator#getStrength
	*/
	public static var PRIMARY(default, null) : Int;
	
	/**
	* Collator strength value.  When set, only SECONDARY and above differences are
	* considered significant during comparison. The assignment of strengths
	* to language features is locale dependant. A common example is for
	* different accented forms of the same base letter ("a" vs "\u00E4") to be
	* considered a SECONDARY difference.
	* @see java.text.Collator#setStrength
	* @see java.text.Collator#getStrength
	*/
	public static var SECONDARY(default, null) : Int;
	
	/**
	* Collator strength value.  When set, only TERTIARY and above differences are
	* considered significant during comparison. The assignment of strengths
	* to language features is locale dependant. A common example is for
	* case differences ("a" vs "A") to be considered a TERTIARY difference.
	* @see java.text.Collator#setStrength
	* @see java.text.Collator#getStrength
	*/
	public static var TERTIARY(default, null) : Int;
	
	/**
	* Collator strength value.  When set, all differences are
	* considered significant during comparison. The assignment of strengths
	* to language features is locale dependant. A common example is for control
	* characters ("&#092;u0001" vs "&#092;u0002") to be considered equal at the
	* PRIMARY, SECONDARY, and TERTIARY levels but different at the IDENTICAL
	* level.  Additionally, differences between pre-composed accents such as
	* "&#092;u00C0" (A-grave) and combining accents such as "A&#092;u0300"
	* (A, combining-grave) will be considered significant at the IDENTICAL
	* level if decomposition is set to NO_DECOMPOSITION.
	*/
	public static var IDENTICAL(default, null) : Int;
	
	/**
	* Decomposition mode value. With NO_DECOMPOSITION
	* set, accented characters will not be decomposed for collation. This
	* is the default setting and provides the fastest collation but
	* will only produce correct results for languages that do not use accents.
	* @see java.text.Collator#getDecomposition
	* @see java.text.Collator#setDecomposition
	*/
	public static var NO_DECOMPOSITION(default, null) : Int;
	
	/**
	* Decomposition mode value. With CANONICAL_DECOMPOSITION
	* set, characters that are canonical variants according to Unicode
	* standard will be decomposed for collation. This should be used to get
	* correct collation of accented characters.
	* <p>
	* CANONICAL_DECOMPOSITION corresponds to Normalization Form D as
	* described in
	* <a href="http://www.unicode.org/unicode/reports/tr15/tr15-23.html">Unicode
	* Technical Report #15</a>.
	* @see java.text.Collator#getDecomposition
	* @see java.text.Collator#setDecomposition
	*/
	public static var CANONICAL_DECOMPOSITION(default, null) : Int;
	
	/**
	* Decomposition mode value. With FULL_DECOMPOSITION
	* set, both Unicode canonical variants and Unicode compatibility variants
	* will be decomposed for collation.  This causes not only accented
	* characters to be collated, but also characters that have special formats
	* to be collated with their norminal form. For example, the half-width and
	* full-width ASCII and Katakana characters are then collated together.
	* FULL_DECOMPOSITION is the most complete and therefore the slowest
	* decomposition mode.
	* <p>
	* FULL_DECOMPOSITION corresponds to Normalization Form KD as
	* described in
	* <a href="http://www.unicode.org/unicode/reports/tr15/tr15-23.html">Unicode
	* Technical Report #15</a>.
	* @see java.text.Collator#getDecomposition
	* @see java.text.Collator#setDecomposition
	*/
	public static var FULL_DECOMPOSITION(default, null) : Int;
	
	/**
	* Gets the Collator for the current default locale.
	* The default locale is determined by java.util.Locale.getDefault.
	* @return the Collator for the default locale.(for example, en_US)
	* @see java.util.Locale#getDefault
	*/
	@:overload @:synchronized public static function getInstance() : Collator;
	
	/**
	* Gets the Collator for the desired locale.
	* @param desiredLocale the desired locale.
	* @return the Collator for the desired locale.
	* @see java.util.Locale
	* @see java.util.ResourceBundle
	*/
	@:overload @:synchronized public static function getInstance(desiredLocale : java.util.Locale) : Collator;
	
	/**
	* Compares the source string to the target string according to the
	* collation rules for this Collator.  Returns an integer less than,
	* equal to or greater than zero depending on whether the source String is
	* less than, equal to or greater than the target string.  See the Collator
	* class description for an example of use.
	* <p>
	* For a one time comparison, this method has the best performance. If a
	* given String will be involved in multiple comparisons, CollationKey.compareTo
	* has the best performance. See the Collator class description for an example
	* using CollationKeys.
	* @param source the source string.
	* @param target the target string.
	* @return Returns an integer value. Value is less than zero if source is less than
	* target, value is zero if source and target are equal, value is greater than zero
	* if source is greater than target.
	* @see java.text.CollationKey
	* @see java.text.Collator#getCollationKey
	*/
	@:overload @:abstract public function compare(source : String, target : String) : Int;
	
	/**
	* Compares its two arguments for order.  Returns a negative integer,
	* zero, or a positive integer as the first argument is less than, equal
	* to, or greater than the second.
	* <p>
	* This implementation merely returns
	*  <code> compare((String)o1, (String)o2) </code>.
	*
	* @return a negative integer, zero, or a positive integer as the
	*         first argument is less than, equal to, or greater than the
	*         second.
	* @exception ClassCastException the arguments cannot be cast to Strings.
	* @see java.util.Comparator
	* @since   1.2
	*/
	@:require(java2) @:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	/**
	* Transforms the String into a series of bits that can be compared bitwise
	* to other CollationKeys. CollationKeys provide better performance than
	* Collator.compare when Strings are involved in multiple comparisons.
	* See the Collator class description for an example using CollationKeys.
	* @param source the string to be transformed into a collation key.
	* @return the CollationKey for the given String based on this Collator's collation
	* rules. If the source String is null, a null CollationKey is returned.
	* @see java.text.CollationKey
	* @see java.text.Collator#compare
	*/
	@:overload @:abstract public function getCollationKey(source : String) : java.text.CollationKey;
	
	/**
	* Convenience method for comparing the equality of two strings based on
	* this Collator's collation rules.
	* @param source the source string to be compared with.
	* @param target the target string to be compared with.
	* @return true if the strings are equal according to the collation
	* rules.  false, otherwise.
	* @see java.text.Collator#compare
	*/
	@:overload public function equals(source : String, target : String) : Bool;
	
	/**
	* Returns this Collator's strength property.  The strength property determines
	* the minimum level of difference considered significant during comparison.
	* See the Collator class description for an example of use.
	* @return this Collator's current strength property.
	* @see java.text.Collator#setStrength
	* @see java.text.Collator#PRIMARY
	* @see java.text.Collator#SECONDARY
	* @see java.text.Collator#TERTIARY
	* @see java.text.Collator#IDENTICAL
	*/
	@:overload @:synchronized public function getStrength() : Int;
	
	/**
	* Sets this Collator's strength property.  The strength property determines
	* the minimum level of difference considered significant during comparison.
	* See the Collator class description for an example of use.
	* @param newStrength  the new strength value.
	* @see java.text.Collator#getStrength
	* @see java.text.Collator#PRIMARY
	* @see java.text.Collator#SECONDARY
	* @see java.text.Collator#TERTIARY
	* @see java.text.Collator#IDENTICAL
	* @exception  IllegalArgumentException If the new strength value is not one of
	* PRIMARY, SECONDARY, TERTIARY or IDENTICAL.
	*/
	@:overload @:synchronized public function setStrength(newStrength : Int) : Void;
	
	/**
	* Get the decomposition mode of this Collator. Decomposition mode
	* determines how Unicode composed characters are handled. Adjusting
	* decomposition mode allows the user to select between faster and more
	* complete collation behavior.
	* <p>The three values for decomposition mode are:
	* <UL>
	* <LI>NO_DECOMPOSITION,
	* <LI>CANONICAL_DECOMPOSITION
	* <LI>FULL_DECOMPOSITION.
	* </UL>
	* See the documentation for these three constants for a description
	* of their meaning.
	* @return the decomposition mode
	* @see java.text.Collator#setDecomposition
	* @see java.text.Collator#NO_DECOMPOSITION
	* @see java.text.Collator#CANONICAL_DECOMPOSITION
	* @see java.text.Collator#FULL_DECOMPOSITION
	*/
	@:overload @:synchronized public function getDecomposition() : Int;
	
	/**
	* Set the decomposition mode of this Collator. See getDecomposition
	* for a description of decomposition mode.
	* @param decompositionMode  the new decomposition mode.
	* @see java.text.Collator#getDecomposition
	* @see java.text.Collator#NO_DECOMPOSITION
	* @see java.text.Collator#CANONICAL_DECOMPOSITION
	* @see java.text.Collator#FULL_DECOMPOSITION
	* @exception IllegalArgumentException If the given value is not a valid decomposition
	* mode.
	*/
	@:overload @:synchronized public function setDecomposition(decompositionMode : Int) : Void;
	
	/**
	* Returns an array of all locales for which the
	* <code>getInstance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported
	* by the Java runtime and by installed
	* {@link java.text.spi.CollatorProvider CollatorProvider} implementations.
	* It must contain at least a Locale instance equal to
	* {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>Collator</code> instances are available.
	*/
	@:overload @:synchronized public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Overrides Cloneable
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Compares the equality of two Collators.
	* @param that the Collator to be compared with this.
	* @return true if this Collator is the same as that Collator;
	* false otherwise.
	*/
	@:overload public function equals(that : Dynamic) : Bool;
	
	/**
	* Generates the hash code for this Collator.
	*/
	@:overload @:abstract public function hashCode() : Int;
	
	/**
	* Default constructor.  This constructor is
	* protected so subclasses can get access to it. Users typically create
	* a Collator sub-class by calling the factory method getInstance.
	* @see java.text.Collator#getInstance
	*/
	@:overload private function new() : Void;
	
	
}
/**
* Obtains a Collator instance from a CollatorProvider
* implementation.
*/
@:native('java$text$Collator$CollatorGetter') @:internal extern class Collator_CollatorGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.CollatorProvider, Collator>
{
	@:overload public function getObject(collatorProvider : java.text.spi.CollatorProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : Collator;
	
	
}
