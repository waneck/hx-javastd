package java.text;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class MessageFormat extends java.text.Format
{
	/**
	* Constructs a MessageFormat for the default locale and the
	* specified pattern.
	* The constructor first sets the locale, then parses the pattern and
	* creates a list of subformats for the format elements contained in it.
	* Patterns and their interpretation are specified in the
	* <a href="#patterns">class description</a>.
	*
	* @param pattern the pattern for this message format
	* @exception IllegalArgumentException if the pattern is invalid
	*/
	@:overload public function new(pattern : String) : Void;
	
	/**
	* Constructs a MessageFormat for the specified locale and
	* pattern.
	* The constructor first sets the locale, then parses the pattern and
	* creates a list of subformats for the format elements contained in it.
	* Patterns and their interpretation are specified in the
	* <a href="#patterns">class description</a>.
	*
	* @param pattern the pattern for this message format
	* @param locale the locale for this message format
	* @exception IllegalArgumentException if the pattern is invalid
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(pattern : String, locale : java.util.Locale) : Void;
	
	/**
	* Sets the locale to be used when creating or comparing subformats.
	* This affects subsequent calls
	* <ul>
	* <li>to the {@link #applyPattern applyPattern}
	*     and {@link #toPattern toPattern} methods if format elements specify
	*     a format type and therefore have the subformats created in the
	*     <code>applyPattern</code> method, as well as
	* <li>to the <code>format</code> and
	*     {@link #formatToCharacterIterator formatToCharacterIterator} methods
	*     if format elements do not specify a format type and therefore have
	*     the subformats created in the formatting methods.
	* </ul>
	* Subformats that have already been created are not affected.
	*
	* @param locale the locale to be used when creating or comparing subformats
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Gets the locale that's used when creating or comparing subformats.
	*
	* @return the locale used when creating or comparing subformats
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* Sets the pattern used by this message format.
	* The method parses the pattern and creates a list of subformats
	* for the format elements contained in it.
	* Patterns and their interpretation are specified in the
	* <a href="#patterns">class description</a>.
	*
	* @param pattern the pattern for this message format
	* @exception IllegalArgumentException if the pattern is invalid
	*/
	@:overload public function applyPattern(pattern : String) : Void;
	
	/**
	* Returns a pattern representing the current state of the message format.
	* The string is constructed from internal information and therefore
	* does not necessarily equal the previously applied pattern.
	*
	* @return a pattern representing the current state of the message format
	*/
	@:overload public function toPattern() : String;
	
	/**
	* Sets the formats to use for the values passed into
	* <code>format</code> methods or returned from <code>parse</code>
	* methods. The indices of elements in <code>newFormats</code>
	* correspond to the argument indices used in the previously set
	* pattern string.
	* The order of formats in <code>newFormats</code> thus corresponds to
	* the order of elements in the <code>arguments</code> array passed
	* to the <code>format</code> methods or the result array returned
	* by the <code>parse</code> methods.
	* <p>
	* If an argument index is used for more than one format element
	* in the pattern string, then the corresponding new format is used
	* for all such format elements. If an argument index is not used
	* for any format element in the pattern string, then the
	* corresponding new format is ignored. If fewer formats are provided
	* than needed, then only the formats for argument indices less
	* than <code>newFormats.length</code> are replaced.
	*
	* @param newFormats the new formats to use
	* @exception NullPointerException if <code>newFormats</code> is null
	* @since 1.4
	*/
	@:require(java4) @:overload public function setFormatsByArgumentIndex(newFormats : java.NativeArray<java.text.Format>) : Void;
	
	/**
	* Sets the formats to use for the format elements in the
	* previously set pattern string.
	* The order of formats in <code>newFormats</code> corresponds to
	* the order of format elements in the pattern string.
	* <p>
	* If more formats are provided than needed by the pattern string,
	* the remaining ones are ignored. If fewer formats are provided
	* than needed, then only the first <code>newFormats.length</code>
	* formats are replaced.
	* <p>
	* Since the order of format elements in a pattern string often
	* changes during localization, it is generally better to use the
	* {@link #setFormatsByArgumentIndex setFormatsByArgumentIndex}
	* method, which assumes an order of formats corresponding to the
	* order of elements in the <code>arguments</code> array passed to
	* the <code>format</code> methods or the result array returned by
	* the <code>parse</code> methods.
	*
	* @param newFormats the new formats to use
	* @exception NullPointerException if <code>newFormats</code> is null
	*/
	@:overload public function setFormats(newFormats : java.NativeArray<java.text.Format>) : Void;
	
	/**
	* Sets the format to use for the format elements within the
	* previously set pattern string that use the given argument
	* index.
	* The argument index is part of the format element definition and
	* represents an index into the <code>arguments</code> array passed
	* to the <code>format</code> methods or the result array returned
	* by the <code>parse</code> methods.
	* <p>
	* If the argument index is used for more than one format element
	* in the pattern string, then the new format is used for all such
	* format elements. If the argument index is not used for any format
	* element in the pattern string, then the new format is ignored.
	*
	* @param argumentIndex the argument index for which to use the new format
	* @param newFormat the new format to use
	* @since 1.4
	*/
	@:require(java4) @:overload public function setFormatByArgumentIndex(argumentIndex : Int, newFormat : java.text.Format) : Void;
	
	/**
	* Sets the format to use for the format element with the given
	* format element index within the previously set pattern string.
	* The format element index is the zero-based number of the format
	* element counting from the start of the pattern string.
	* <p>
	* Since the order of format elements in a pattern string often
	* changes during localization, it is generally better to use the
	* {@link #setFormatByArgumentIndex setFormatByArgumentIndex}
	* method, which accesses format elements based on the argument
	* index they specify.
	*
	* @param formatElementIndex the index of a format element within the pattern
	* @param newFormat the format to use for the specified format element
	* @exception ArrayIndexOutOfBoundsException if {@code formatElementIndex} is equal to or
	*            larger than the number of format elements in the pattern string
	*/
	@:overload public function setFormat(formatElementIndex : Int, newFormat : java.text.Format) : Void;
	
	/**
	* Gets the formats used for the values passed into
	* <code>format</code> methods or returned from <code>parse</code>
	* methods. The indices of elements in the returned array
	* correspond to the argument indices used in the previously set
	* pattern string.
	* The order of formats in the returned array thus corresponds to
	* the order of elements in the <code>arguments</code> array passed
	* to the <code>format</code> methods or the result array returned
	* by the <code>parse</code> methods.
	* <p>
	* If an argument index is used for more than one format element
	* in the pattern string, then the format used for the last such
	* format element is returned in the array. If an argument index
	* is not used for any format element in the pattern string, then
	* null is returned in the array.
	*
	* @return the formats used for the arguments within the pattern
	* @since 1.4
	*/
	@:require(java4) @:overload public function getFormatsByArgumentIndex() : java.NativeArray<java.text.Format>;
	
	/**
	* Gets the formats used for the format elements in the
	* previously set pattern string.
	* The order of formats in the returned array corresponds to
	* the order of format elements in the pattern string.
	* <p>
	* Since the order of format elements in a pattern string often
	* changes during localization, it's generally better to use the
	* {@link #getFormatsByArgumentIndex getFormatsByArgumentIndex}
	* method, which assumes an order of formats corresponding to the
	* order of elements in the <code>arguments</code> array passed to
	* the <code>format</code> methods or the result array returned by
	* the <code>parse</code> methods.
	*
	* @return the formats used for the format elements in the pattern
	*/
	@:overload public function getFormats() : java.NativeArray<java.text.Format>;
	
	/**
	* Formats an array of objects and appends the <code>MessageFormat</code>'s
	* pattern, with format elements replaced by the formatted objects, to the
	* provided <code>StringBuffer</code>.
	* <p>
	* The text substituted for the individual format elements is derived from
	* the current subformat of the format element and the
	* <code>arguments</code> element at the format element's argument index
	* as indicated by the first matching line of the following table. An
	* argument is <i>unavailable</i> if <code>arguments</code> is
	* <code>null</code> or has fewer than argumentIndex+1 elements.
	* <p>
	* <table border=1 summary="Examples of subformat,argument,and formatted text">
	*    <tr>
	*       <th>Subformat
	*       <th>Argument
	*       <th>Formatted Text
	*    <tr>
	*       <td><i>any</i>
	*       <td><i>unavailable</i>
	*       <td><code>"{" + argumentIndex + "}"</code>
	*    <tr>
	*       <td><i>any</i>
	*       <td><code>null</code>
	*       <td><code>"null"</code>
	*    <tr>
	*       <td><code>instanceof ChoiceFormat</code>
	*       <td><i>any</i>
	*       <td><code>subformat.format(argument).indexOf('{') >= 0 ?<br>
	*           (new MessageFormat(subformat.format(argument), getLocale())).format(argument) :
	*           subformat.format(argument)</code>
	*    <tr>
	*       <td><code>!= null</code>
	*       <td><i>any</i>
	*       <td><code>subformat.format(argument)</code>
	*    <tr>
	*       <td><code>null</code>
	*       <td><code>instanceof Number</code>
	*       <td><code>NumberFormat.getInstance(getLocale()).format(argument)</code>
	*    <tr>
	*       <td><code>null</code>
	*       <td><code>instanceof Date</code>
	*       <td><code>DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, getLocale()).format(argument)</code>
	*    <tr>
	*       <td><code>null</code>
	*       <td><code>instanceof String</code>
	*       <td><code>argument</code>
	*    <tr>
	*       <td><code>null</code>
	*       <td><i>any</i>
	*       <td><code>argument.toString()</code>
	* </table>
	* <p>
	* If <code>pos</code> is non-null, and refers to
	* <code>Field.ARGUMENT</code>, the location of the first formatted
	* string will be returned.
	*
	* @param arguments an array of objects to be formatted and substituted.
	* @param result where text is appended.
	* @param pos On input: an alignment field, if desired.
	*            On output: the offsets of the alignment field.
	* @exception IllegalArgumentException if an argument in the
	*            <code>arguments</code> array is not of the type
	*            expected by the format element(s) that use it.
	*/
	@:overload @:final public function format(arguments : java.NativeArray<Dynamic>, result : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Creates a MessageFormat with the given pattern and uses it
	* to format the given arguments. This is equivalent to
	* <blockquote>
	*     <code>(new {@link #MessageFormat(String) MessageFormat}(pattern)).{@link #format(java.lang.Object[], java.lang.StringBuffer, java.text.FieldPosition) format}(arguments, new StringBuffer(), null).toString()</code>
	* </blockquote>
	*
	* @exception IllegalArgumentException if the pattern is invalid,
	*            or if an argument in the <code>arguments</code> array
	*            is not of the type expected by the format element(s)
	*            that use it.
	*/
	@:native('format') @:overload public static function _format(pattern : String, arguments : java.NativeArray<Dynamic>) : String;
	
	/**
	* Formats an array of objects and appends the <code>MessageFormat</code>'s
	* pattern, with format elements replaced by the formatted objects, to the
	* provided <code>StringBuffer</code>.
	* This is equivalent to
	* <blockquote>
	*     <code>{@link #format(java.lang.Object[], java.lang.StringBuffer, java.text.FieldPosition) format}((Object[]) arguments, result, pos)</code>
	* </blockquote>
	*
	* @param arguments an array of objects to be formatted and substituted.
	* @param result where text is appended.
	* @param pos On input: an alignment field, if desired.
	*            On output: the offsets of the alignment field.
	* @exception IllegalArgumentException if an argument in the
	*            <code>arguments</code> array is not of the type
	*            expected by the format element(s) that use it.
	*/
	@:overload @:final public function format(arguments : Dynamic, result : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats an array of objects and inserts them into the
	* <code>MessageFormat</code>'s pattern, producing an
	* <code>AttributedCharacterIterator</code>.
	* You can use the returned <code>AttributedCharacterIterator</code>
	* to build the resulting String, as well as to determine information
	* about the resulting String.
	* <p>
	* The text of the returned <code>AttributedCharacterIterator</code> is
	* the same that would be returned by
	* <blockquote>
	*     <code>{@link #format(java.lang.Object[], java.lang.StringBuffer, java.text.FieldPosition) format}(arguments, new StringBuffer(), null).toString()</code>
	* </blockquote>
	* <p>
	* In addition, the <code>AttributedCharacterIterator</code> contains at
	* least attributes indicating where text was generated from an
	* argument in the <code>arguments</code> array. The keys of these attributes are of
	* type <code>MessageFormat.Field</code>, their values are
	* <code>Integer</code> objects indicating the index in the <code>arguments</code>
	* array of the argument from which the text was generated.
	* <p>
	* The attributes/value from the underlying <code>Format</code>
	* instances that <code>MessageFormat</code> uses will also be
	* placed in the resulting <code>AttributedCharacterIterator</code>.
	* This allows you to not only find where an argument is placed in the
	* resulting String, but also which fields it contains in turn.
	*
	* @param arguments an array of objects to be formatted and substituted.
	* @return AttributedCharacterIterator describing the formatted value.
	* @exception NullPointerException if <code>arguments</code> is null.
	* @exception IllegalArgumentException if an argument in the
	*            <code>arguments</code> array is not of the type
	*            expected by the format element(s) that use it.
	* @since 1.4
	*/
	@:require(java4) @:overload public function formatToCharacterIterator(arguments : Dynamic) : java.text.AttributedCharacterIterator;
	
	/**
	* Parses the string.
	*
	* <p>Caveats: The parse may fail in a number of circumstances.
	* For example:
	* <ul>
	* <li>If one of the arguments does not occur in the pattern.
	* <li>If the format of an argument loses information, such as
	*     with a choice format where a large number formats to "many".
	* <li>Does not yet handle recursion (where
	*     the substituted strings contain {n} references.)
	* <li>Will not always find a match (or the correct match)
	*     if some part of the parse is ambiguous.
	*     For example, if the pattern "{1},{2}" is used with the
	*     string arguments {"a,b", "c"}, it will format as "a,b,c".
	*     When the result is parsed, it will return {"a", "b,c"}.
	* <li>If a single argument is parsed more than once in the string,
	*     then the later parse wins.
	* </ul>
	* When the parse fails, use ParsePosition.getErrorIndex() to find out
	* where in the string the parsing failed.  The returned error
	* index is the starting offset of the sub-patterns that the string
	* is comparing with.  For example, if the parsing string "AAA {0} BBB"
	* is comparing against the pattern "AAD {0} BBB", the error index is
	* 0. When an error occurs, the call to this method will return null.
	* If the source is null, return an empty array.
	*/
	@:overload public function parse(source : String, pos : java.text.ParsePosition) : java.NativeArray<Dynamic>;
	
	/**
	* Parses text from the beginning of the given string to produce an object
	* array.
	* The method may not use the entire text of the given string.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on message parsing.
	*
	* @param source A <code>String</code> whose beginning should be parsed.
	* @return An <code>Object</code> array parsed from the string.
	* @exception ParseException if the beginning of the specified string
	*            cannot be parsed.
	*/
	@:overload public function parse(source : String) : java.NativeArray<Dynamic>;
	
	/**
	* Parses text from a string to produce an object array.
	* <p>
	* The method attempts to parse text starting at the index given by
	* <code>pos</code>.
	* If parsing succeeds, then the index of <code>pos</code> is updated
	* to the index after the last character used (parsing does not necessarily
	* use all characters up to the end of the string), and the parsed
	* object array is returned. The updated <code>pos</code> can be used to
	* indicate the starting point for the next call to this method.
	* If an error occurs, then the index of <code>pos</code> is not
	* changed, the error index of <code>pos</code> is set to the index of
	* the character where the error occurred, and null is returned.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on message parsing.
	*
	* @param source A <code>String</code>, part of which should be parsed.
	* @param pos A <code>ParsePosition</code> object with index and error
	*            index information as described above.
	* @return An <code>Object</code> array parsed from the string. In case of
	*         error, returns null.
	* @exception NullPointerException if <code>pos</code> is null.
	*/
	@:overload public function parseObject(source : String, pos : java.text.ParsePosition) : Dynamic;
	
	/**
	* Creates and returns a copy of this object.
	*
	* @return a clone of this instance.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Equality comparison between two message format objects
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates a hash code for the message format object.
	*/
	@:overload public function hashCode() : Int;
	
	
}
/**
* Defines constants that are used as attribute keys in the
* <code>AttributedCharacterIterator</code> returned
* from <code>MessageFormat.formatToCharacterIterator</code>.
*
* @since 1.4
*/
@:require(java4) @:native('java$text$MessageFormat$Field') extern class MessageFormat_Field extends java.text.Format.Format_Field
{
	/**
	* Creates a Field with the specified name.
	*
	* @param name Name of the attribute
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Resolves instances being deserialized to the predefined constants.
	*
	* @throws InvalidObjectException if the constant could not be
	*         resolved.
	* @return resolved MessageFormat.Field constant
	*/
	@:overload override private function readResolve() : Dynamic;
	
	/**
	* Constant identifying a portion of a message that was generated
	* from an argument passed into <code>formatToCharacterIterator</code>.
	* The value associated with the key will be an <code>Integer</code>
	* indicating the index in the <code>arguments</code> array of the
	* argument from which the text was generated.
	*/
	public static var ARGUMENT(default, null) : java.text.Format.Format_Field;
	
	
}
