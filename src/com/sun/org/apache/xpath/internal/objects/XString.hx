package com.sun.org.apache.xpath.internal.objects;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XString.java,v 1.2.4.1 2005/09/14 20:47:20 jeffsuttor Exp $
*/
extern class XString extends com.sun.org.apache.xpath.internal.objects.XObject implements com.sun.org.apache.xml.internal.utils.XMLString
{
	/** Empty string XString object */
	public static var EMPTYSTRING(default, null) : XString;
	
	/**
	* Construct a XString object.  This constructor exists for derived classes.
	*
	* @param val String object this will wrap.
	*/
	@:overload private function new(val : Dynamic) : Void;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param val String object this will wrap.
	*/
	@:overload public function new(val : String) : Void;
	
	/**
	* Tell that this is a CLASS_STRING.
	*
	* @return type CLASS_STRING
	*/
	@:overload override public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#STRING"
	*/
	@:overload override public function getTypeString() : String;
	
	/**
	* Tell if this object contains a java String object.
	*
	* @return true if this XMLString can return a string without creating one.
	*/
	@:overload public function hasString() : Bool;
	
	/**
	* Cast result object to a number.
	*
	* @return 0.0 if this string is null, numeric value of this string
	* or NaN
	*/
	@:overload override public function num() : Float;
	
	/**
	* Convert a string to a double -- Allowed input is in fixed
	* notation ddd.fff.
	*
	* @return A double value representation of the string, or return Double.NaN
	* if the string can not be converted.
	*/
	@:overload public function toDouble() : Float;
	
	/**
	* Cast result object to a boolean.
	*
	* @return True if the length of this string object is greater
	* than 0.
	*/
	@:overload override public function bool() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload override public function xstr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload override public function str() : String;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @param support Xpath context to use for the conversion
	*
	* @return A document fragment with this string as a child node
	*/
	@:overload override public function rtf(support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Directly call the
	* characters method on the passed ContentHandler for the
	* string-value. Multiple calls to the
	* ContentHandler's characters methods may well occur for a single call to
	* this method.
	*
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function dispatchCharactersEvents(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Directly call the
	* comment method on the passed LexicalHandler for the
	* string-value.
	*
	* @param lh A non-null reference to a LexicalHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function dispatchAsComment(lh : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**
	* Returns the length of this string.
	*
	* @return  the length of the sequence of characters represented by this
	*          object.
	*/
	@:overload public function length() : Int;
	
	/**
	* Returns the character at the specified index. An index ranges
	* from <code>0</code> to <code>length() - 1</code>. The first character
	* of the sequence is at index <code>0</code>, the next at index
	* <code>1</code>, and so on, as for array indexing.
	*
	* @param      index   the index of the character.
	* @return     the character at the specified index of this string.
	*             The first character is at index <code>0</code>.
	* @exception  IndexOutOfBoundsException  if the <code>index</code>
	*             argument is negative or not less than the length of this
	*             string.
	*/
	@:overload public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Copies characters from this string into the destination character
	* array.
	*
	* @param      srcBegin   index of the first character in the string
	*                        to copy.
	* @param      srcEnd     index after the last character in the string
	*                        to copy.
	* @param      dst        the destination array.
	* @param      dstBegin   the start offset in the destination array.
	* @exception IndexOutOfBoundsException If any of the following
	*            is true:
	*            <ul><li><code>srcBegin</code> is negative.
	*            <li><code>srcBegin</code> is greater than <code>srcEnd</code>
	*            <li><code>srcEnd</code> is greater than the length of this
	*                string
	*            <li><code>dstBegin</code> is negative
	*            <li><code>dstBegin+(srcEnd-srcBegin)</code> is larger than
	*                <code>dst.length</code></ul>
	* @exception NullPointerException if <code>dst</code> is <code>null</code>
	*/
	@:overload public function getChars(srcBegin : Int, srcEnd : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstBegin : Int) : Void;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return true if the two objects are equal
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Compares this string to the specified <code>String</code>.
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is a <code>String</code> object that represents
	* the same sequence of characters as this object.
	*
	* @param   obj2   the object to compare this <code>String</code> against.
	* @return  <code>true</code> if the <code>String</code>s are equal;
	*          <code>false</code> otherwise.
	* @see     java.lang.String#compareTo(java.lang.String)
	* @see     java.lang.String#equalsIgnoreCase(java.lang.String)
	*/
	@:overload public function equals(obj2 : String) : Bool;
	
	/**
	* Compares this string to the specified object.
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is a <code>String</code> object that represents
	* the same sequence of characters as this object.
	*
	* @param obj2   the object to compare this <code>String</code>
	*                     against.
	* @return  <code>true</code> if the <code>String </code>are equal;
	*          <code>false</code> otherwise.
	* @see     java.lang.String#compareTo(java.lang.String)
	* @see     java.lang.String#equalsIgnoreCase(java.lang.String)
	*/
	@:overload public function equals(obj2 : com.sun.org.apache.xml.internal.utils.XMLString) : Bool;
	
	/**
	* Compares this string to the specified object.
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is a <code>String</code> object that represents
	* the same sequence of characters as this object.
	*
	* @param   obj2       the object to compare this <code>String</code>
	*                     against.
	* @return  <code>true</code> if the <code>String </code>are equal;
	*          <code>false</code> otherwise.
	* @see     java.lang.String#compareTo(java.lang.String)
	* @see     java.lang.String#equalsIgnoreCase(java.lang.String)
	*/
	@:overload public function equals(obj2 : Dynamic) : Bool;
	
	/**
	* Compares this <code>String</code> to another <code>String</code>,
	* ignoring case considerations.  Two strings are considered equal
	* ignoring case if they are of the same length, and corresponding
	* characters in the two strings are equal ignoring case.
	*
	* @param   anotherString   the <code>String</code> to compare this
	*                          <code>String</code> against.
	* @return  <code>true</code> if the argument is not <code>null</code>
	*          and the <code>String</code>s are equal,
	*          ignoring case; <code>false</code> otherwise.
	* @see     #equals(Object)
	* @see     java.lang.Character#toLowerCase(char)
	* @see java.lang.Character#toUpperCase(char)
	*/
	@:overload public function equalsIgnoreCase(anotherString : String) : Bool;
	
	/**
	* Compares two strings lexicographically.
	*
	* @param   xstr   the <code>String</code> to be compared.
	*
	* @return  the value <code>0</code> if the argument string is equal to
	*          this string; a value less than <code>0</code> if this string
	*          is lexicographically less than the string argument; and a
	*          value greater than <code>0</code> if this string is
	*          lexicographically greater than the string argument.
	* @exception java.lang.NullPointerException if <code>anotherString</code>
	*          is <code>null</code>.
	*/
	@:overload public function compareTo(xstr : com.sun.org.apache.xml.internal.utils.XMLString) : Int;
	
	/**
	* Compares two strings lexicographically, ignoring case considerations.
	* This method returns an integer whose sign is that of
	* <code>this.toUpperCase().toLowerCase().compareTo(
	* str.toUpperCase().toLowerCase())</code>.
	* <p>
	* Note that this method does <em>not</em> take locale into account,
	* and will result in an unsatisfactory ordering for certain locales.
	* The java.text package provides <em>collators</em> to allow
	* locale-sensitive ordering.
	*
	* @param   str   the <code>String</code> to be compared.
	* @return  a negative integer, zero, or a positive integer as the
	*          the specified String is greater than, equal to, or less
	*          than this String, ignoring case considerations.
	* @see     java.text.Collator#compare(String, String)
	* @since   1.2
	*/
	@:require(java2) @:overload public function compareToIgnoreCase(str : com.sun.org.apache.xml.internal.utils.XMLString) : Int;
	
	/**
	* Tests if this string starts with the specified prefix beginning
	* a specified index.
	*
	* @param   prefix    the prefix.
	* @param   toffset   where to begin looking in the string.
	* @return  <code>true</code> if the character sequence represented by the
	*          argument is a prefix of the substring of this object starting
	*          at index <code>toffset</code>; <code>false</code> otherwise.
	*          The result is <code>false</code> if <code>toffset</code> is
	*          negative or greater than the length of this
	*          <code>String</code> object; otherwise the result is the same
	*          as the result of the expression
	*          <pre>
	*          this.subString(toffset).startsWith(prefix)
	*          </pre>
	* @exception java.lang.NullPointerException if <code>prefix</code> is
	*          <code>null</code>.
	*/
	@:overload public function startsWith(prefix : String, toffset : Int) : Bool;
	
	/**
	* Tests if this string starts with the specified prefix.
	*
	* @param   prefix   the prefix.
	* @return  <code>true</code> if the character sequence represented by the
	*          argument is a prefix of the character sequence represented by
	*          this string; <code>false</code> otherwise.
	*          Note also that <code>true</code> will be returned if the
	*          argument is an empty string or is equal to this
	*          <code>String</code> object as determined by the
	*          {@link #equals(Object)} method.
	* @exception java.lang.NullPointerException if <code>prefix</code> is
	*          <code>null</code>.
	*/
	@:overload public function startsWith(prefix : String) : Bool;
	
	/**
	* Tests if this string starts with the specified prefix beginning
	* a specified index.
	*
	* @param   prefix    the prefix.
	* @param   toffset   where to begin looking in the string.
	* @return  <code>true</code> if the character sequence represented by the
	*          argument is a prefix of the substring of this object starting
	*          at index <code>toffset</code>; <code>false</code> otherwise.
	*          The result is <code>false</code> if <code>toffset</code> is
	*          negative or greater than the length of this
	*          <code>String</code> object; otherwise the result is the same
	*          as the result of the expression
	*          <pre>
	*          this.subString(toffset).startsWith(prefix)
	*          </pre>
	* @exception java.lang.NullPointerException if <code>prefix</code> is
	*          <code>null</code>.
	*/
	@:overload public function startsWith(prefix : com.sun.org.apache.xml.internal.utils.XMLString, toffset : Int) : Bool;
	
	/**
	* Tests if this string starts with the specified prefix.
	*
	* @param   prefix   the prefix.
	* @return  <code>true</code> if the character sequence represented by the
	*          argument is a prefix of the character sequence represented by
	*          this string; <code>false</code> otherwise.
	*          Note also that <code>true</code> will be returned if the
	*          argument is an empty string or is equal to this
	*          <code>String</code> object as determined by the
	*          {@link #equals(Object)} method.
	* @exception java.lang.NullPointerException if <code>prefix</code> is
	*          <code>null</code>.
	*/
	@:overload public function startsWith(prefix : com.sun.org.apache.xml.internal.utils.XMLString) : Bool;
	
	/**
	* Tests if this string ends with the specified suffix.
	*
	* @param   suffix   the suffix.
	* @return  <code>true</code> if the character sequence represented by the
	*          argument is a suffix of the character sequence represented by
	*          this object; <code>false</code> otherwise. Note that the
	*          result will be <code>true</code> if the argument is the
	*          empty string or is equal to this <code>String</code> object
	*          as determined by the {@link #equals(Object)} method.
	* @exception java.lang.NullPointerException if <code>suffix</code> is
	*          <code>null</code>.
	*/
	@:overload public function endsWith(suffix : String) : Bool;
	
	/**
	* Returns a hashcode for this string. The hashcode for a
	* <code>String</code> object is computed as
	* <blockquote><pre>
	* s[0]*31^(n-1) + s[1]*31^(n-2) + ... + s[n-1]
	* </pre></blockquote>
	* using <code>int</code> arithmetic, where <code>s[i]</code> is the
	* <i>i</i>th character of the string, <code>n</code> is the length of
	* the string, and <code>^</code> indicates exponentiation.
	* (The hash value of the empty string is zero.)
	*
	* @return  a hash code value for this object.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified character. If a character with value <code>ch</code> occurs
	* in the character sequence represented by this <code>String</code>
	* object, then the index of the first such occurrence is returned --
	* that is, the smallest value <i>k</i> such that:
	* <blockquote><pre>
	* this.charAt(<i>k</i>) == ch
	* </pre></blockquote>
	* is <code>true</code>. If no such character occurs in this string,
	* then <code>-1</code> is returned.
	*
	* @param   ch   a character.
	* @return  the index of the first occurrence of the character in the
	*          character sequence represented by this object, or
	*          <code>-1</code> if the character does not occur.
	*/
	@:overload public function indexOf(ch : Int) : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified character, starting the search at the specified index.
	* <p>
	* If a character with value <code>ch</code> occurs in the character
	* sequence represented by this <code>String</code> object at an index
	* no smaller than <code>fromIndex</code>, then the index of the first
	* such occurrence is returned--that is, the smallest value <i>k</i>
	* such that:
	* <blockquote><pre>
	* (this.charAt(<i>k</i>) == ch) && (<i>k</i> >= fromIndex)
	* </pre></blockquote>
	* is true. If no such character occurs in this string at or after
	* position <code>fromIndex</code>, then <code>-1</code> is returned.
	* <p>
	* There is no restriction on the value of <code>fromIndex</code>. If it
	* is negative, it has the same effect as if it were zero: this entire
	* string may be searched. If it is greater than the length of this
	* string, it has the same effect as if it were equal to the length of
	* this string: <code>-1</code> is returned.
	*
	* @param   ch          a character.
	* @param   fromIndex   the index to start the search from.
	* @return  the index of the first occurrence of the character in the
	*          character sequence represented by this object that is greater
	*          than or equal to <code>fromIndex</code>, or <code>-1</code>
	*          if the character does not occur.
	*/
	@:overload public function indexOf(ch : Int, fromIndex : Int) : Int;
	
	/**
	* Returns the index within this string of the last occurrence of the
	* specified character. That is, the index returned is the largest
	* value <i>k</i> such that:
	* <blockquote><pre>
	* this.charAt(<i>k</i>) == ch
	* </pre></blockquote>
	* is true.
	* The String is searched backwards starting at the last character.
	*
	* @param   ch   a character.
	* @return  the index of the last occurrence of the character in the
	*          character sequence represented by this object, or
	*          <code>-1</code> if the character does not occur.
	*/
	@:overload public function lastIndexOf(ch : Int) : Int;
	
	/**
	* Returns the index within this string of the last occurrence of the
	* specified character, searching backward starting at the specified
	* index. That is, the index returned is the largest value <i>k</i>
	* such that:
	* <blockquote><pre>
	* this.charAt(k) == ch) && (k <= fromIndex)
	* </pre></blockquote>
	* is true.
	*
	* @param   ch          a character.
	* @param   fromIndex   the index to start the search from. There is no
	*          restriction on the value of <code>fromIndex</code>. If it is
	*          greater than or equal to the length of this string, it has
	*          the same effect as if it were equal to one less than the
	*          length of this string: this entire string may be searched.
	*          If it is negative, it has the same effect as if it were -1:
	*          -1 is returned.
	* @return  the index of the last occurrence of the character in the
	*          character sequence represented by this object that is less
	*          than or equal to <code>fromIndex</code>, or <code>-1</code>
	*          if the character does not occur before that point.
	*/
	@:overload public function lastIndexOf(ch : Int, fromIndex : Int) : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified substring. The integer returned is the smallest value
	* <i>k</i> such that:
	* <blockquote><pre>
	* this.startsWith(str, <i>k</i>)
	* </pre></blockquote>
	* is <code>true</code>.
	*
	* @param   str   any string.
	* @return  if the string argument occurs as a substring within this
	*          object, then the index of the first character of the first
	*          such substring is returned; if it does not occur as a
	*          substring, <code>-1</code> is returned.
	* @exception java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload public function indexOf(str : String) : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified substring. The integer returned is the smallest value
	* <i>k</i> such that:
	* <blockquote><pre>
	* this.startsWith(str, <i>k</i>)
	* </pre></blockquote>
	* is <code>true</code>.
	*
	* @param   str   any string.
	* @return  if the string argument occurs as a substring within this
	*          object, then the index of the first character of the first
	*          such substring is returned; if it does not occur as a
	*          substring, <code>-1</code> is returned.
	* @exception java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload public function indexOf(str : com.sun.org.apache.xml.internal.utils.XMLString) : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified substring, starting at the specified index. The integer
	* returned is the smallest value <i>k</i> such that:
	* <blockquote><pre>
	* this.startsWith(str, <i>k</i>) && (<i>k</i> >= fromIndex)
	* </pre></blockquote>
	* is <code>true</code>.
	* <p>
	* There is no restriction on the value of <code>fromIndex</code>. If
	* it is negative, it has the same effect as if it were zero: this entire
	* string may be searched. If it is greater than the length of this
	* string, it has the same effect as if it were equal to the length of
	* this string: <code>-1</code> is returned.
	*
	* @param   str         the substring to search for.
	* @param   fromIndex   the index to start the search from.
	* @return  If the string argument occurs as a substring within this
	*          object at a starting index no smaller than
	*          <code>fromIndex</code>, then the index of the first character
	*          of the first such substring is returned. If it does not occur
	*          as a substring starting at <code>fromIndex</code> or beyond,
	*          <code>-1</code> is returned.
	* @exception java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>
	*/
	@:overload public function indexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* Returns the index within this string of the rightmost occurrence
	* of the specified substring.  The rightmost empty string "" is
	* considered to occur at the index value <code>this.length()</code>.
	* The returned index is the largest value <i>k</i> such that
	* <blockquote><pre>
	* this.startsWith(str, k)
	* </pre></blockquote>
	* is true.
	*
	* @param   str   the substring to search for.
	* @return  if the string argument occurs one or more times as a substring
	*          within this object, then the index of the first character of
	*          the last such substring is returned. If it does not occur as
	*          a substring, <code>-1</code> is returned.
	* @exception java.lang.NullPointerException  if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload public function lastIndexOf(str : String) : Int;
	
	/**
	* Returns the index within this string of the last occurrence of
	* the specified substring.
	*
	* @param   str         the substring to search for.
	* @param   fromIndex   the index to start the search from. There is no
	*          restriction on the value of fromIndex. If it is greater than
	*          the length of this string, it has the same effect as if it
	*          were equal to the length of this string: this entire string
	*          may be searched. If it is negative, it has the same effect
	*          as if it were -1: -1 is returned.
	* @return  If the string argument occurs one or more times as a substring
	*          within this object at a starting index no greater than
	*          <code>fromIndex</code>, then the index of the first character of
	*          the last such substring is returned. If it does not occur as a
	*          substring starting at <code>fromIndex</code> or earlier,
	*          <code>-1</code> is returned.
	* @exception java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload public function lastIndexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* Returns a new string that is a substring of this string. The
	* substring begins with the character at the specified index and
	* extends to the end of this string. <p>
	* Examples:
	* <blockquote><pre>
	* "unhappy".substring(2) returns "happy"
	* "Harbison".substring(3) returns "bison"
	* "emptiness".substring(9) returns "" (an empty string)
	* </pre></blockquote>
	*
	* @param      beginIndex   the beginning index, inclusive.
	* @return     the specified substring.
	* @exception  IndexOutOfBoundsException  if
	*             <code>beginIndex</code> is negative or larger than the
	*             length of this <code>String</code> object.
	*/
	@:overload public function substring(beginIndex : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Returns a new string that is a substring of this string. The
	* substring begins at the specified <code>beginIndex</code> and
	* extends to the character at index <code>endIndex - 1</code>.
	* Thus the length of the substring is <code>endIndex-beginIndex</code>.
	*
	* @param      beginIndex   the beginning index, inclusive.
	* @param      endIndex     the ending index, exclusive.
	* @return     the specified substring.
	* @exception  IndexOutOfBoundsException  if the
	*             <code>beginIndex</code> is negative, or
	*             <code>endIndex</code> is larger than the length of
	*             this <code>String</code> object, or
	*             <code>beginIndex</code> is larger than
	*             <code>endIndex</code>.
	*/
	@:overload public function substring(beginIndex : Int, endIndex : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Concatenates the specified string to the end of this string.
	*
	* @param   str   the <code>String</code> that is concatenated to the end
	*                of this <code>String</code>.
	* @return  a string that represents the concatenation of this object's
	*          characters followed by the string argument's characters.
	* @exception java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload public function concat(str : String) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Converts all of the characters in this <code>String</code> to lower
	* case using the rules of the given <code>Locale</code>.
	*
	* @param locale use the case transformation rules for this locale
	* @return the String, converted to lowercase.
	* @see     java.lang.Character#toLowerCase(char)
	* @see     java.lang.String#toUpperCase(Locale)
	*/
	@:overload public function toLowerCase(locale : java.util.Locale) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Converts all of the characters in this <code>String</code> to lower
	* case using the rules of the default locale, which is returned
	* by <code>Locale.getDefault</code>.
	* <p>
	*
	* @return  the string, converted to lowercase.
	* @see     java.lang.Character#toLowerCase(char)
	* @see     java.lang.String#toLowerCase(Locale)
	*/
	@:overload public function toLowerCase() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Converts all of the characters in this <code>String</code> to upper
	* case using the rules of the given locale.
	* @param locale use the case transformation rules for this locale
	* @return the String, converted to uppercase.
	* @see     java.lang.Character#toUpperCase(char)
	* @see     java.lang.String#toLowerCase(Locale)
	*/
	@:overload public function toUpperCase(locale : java.util.Locale) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Converts all of the characters in this <code>String</code> to upper
	* case using the rules of the default locale, which is returned
	* by <code>Locale.getDefault</code>.
	*
	* <p>
	* If no character in this string has a different uppercase version,
	* based on calling the <code>toUpperCase</code> method defined by
	* <code>Character</code>, then the original string is returned.
	* <p>
	* Otherwise, this method creates a new <code>String</code> object
	* representing a character sequence identical in length to the
	* character sequence represented by this <code>String</code> object and
	* with every character equal to the result of applying the method
	* <code>Character.toUpperCase</code> to the corresponding character of
	* this <code>String</code> object. <p>
	* Examples:
	* <blockquote><pre>
	* "Fahrvergn&uuml;gen".toUpperCase() returns "FAHRVERGN&Uuml;GEN"
	* "Visit Ljubinje!".toUpperCase() returns "VISIT LJUBINJE!"
	* </pre></blockquote>
	*
	* @return  the string, converted to uppercase.
	* @see     java.lang.Character#toUpperCase(char)
	* @see     java.lang.String#toUpperCase(Locale)
	*/
	@:overload public function toUpperCase() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Removes white space from both ends of this string.
	*
	* @return  this string, with white space removed from the front and end.
	*/
	@:overload public function trim() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Conditionally trim all leading and trailing whitespace in the specified String.
	* All strings of white space are
	* replaced by a single space character (#x20), except spaces after punctuation which
	* receive double spaces if doublePunctuationSpaces is true.
	* This function may be useful to a formatter, but to get first class
	* results, the formatter should probably do it's own white space handling
	* based on the semantics of the formatting object.
	*
	* @param   trimHead    Trim leading whitespace?
	* @param   trimTail    Trim trailing whitespace?
	* @param   doublePunctuationSpaces    Use double spaces for punctuation?
	* @return              The trimmed string.
	*/
	@:overload public function fixWhiteSpace(trimHead : Bool, trimTail : Bool, doublePunctuationSpaces : Bool) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	
}
