package java.nio.charset;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Charset implements java.lang.Comparable<java.nio.charset.Charset>
{
	/**
	* Tells whether the named charset is supported. </p>
	*
	* @param  charsetName
	*         The name of the requested charset; may be either
	*         a canonical name or an alias
	*
	* @return  <tt>true</tt> if, and only if, support for the named charset
	*          is available in the current Java virtual machine
	*
	* @throws IllegalCharsetNameException
	*         If the given charset name is illegal
	*
	* @throws  IllegalArgumentException
	*          If the given <tt>charsetName</tt> is null
	*/
	@:overload @:public @:static public static function isSupported(charsetName : String) : Bool;
	
	/**
	* Returns a charset object for the named charset. </p>
	*
	* @param  charsetName
	*         The name of the requested charset; may be either
	*         a canonical name or an alias
	*
	* @return  A charset object for the named charset
	*
	* @throws  IllegalCharsetNameException
	*          If the given charset name is illegal
	*
	* @throws  IllegalArgumentException
	*          If the given <tt>charsetName</tt> is null
	*
	* @throws  UnsupportedCharsetException
	*          If no support for the named charset is available
	*          in this instance of the Java virtual machine
	*/
	@:overload @:public @:static public static function forName(charsetName : String) : java.nio.charset.Charset;
	
	/**
	* Constructs a sorted map from canonical charset names to charset objects.
	*
	* <p> The map returned by this method will have one entry for each charset
	* for which support is available in the current Java virtual machine.  If
	* two or more supported charsets have the same canonical name then the
	* resulting map will contain just one of them; which one it will contain
	* is not specified. </p>
	*
	* <p> The invocation of this method, and the subsequent use of the
	* resulting map, may cause time-consuming disk or network I/O operations
	* to occur.  This method is provided for applications that need to
	* enumerate all of the available charsets, for example to allow user
	* charset selection.  This method is not used by the {@link #forName
	* forName} method, which instead employs an efficient incremental lookup
	* algorithm.
	*
	* <p> This method may return different results at different times if new
	* charset providers are dynamically made available to the current Java
	* virtual machine.  In the absence of such changes, the charsets returned
	* by this method are exactly those that can be retrieved via the {@link
	* #forName forName} method.  </p>
	*
	* @return An immutable, case-insensitive map from canonical charset names
	*         to charset objects
	*/
	@:overload @:public @:static public static function availableCharsets() : java.util.SortedMap<String, java.nio.charset.Charset>;
	
	/**
	* Returns the default charset of this Java virtual machine.
	*
	* <p> The default charset is determined during virtual-machine startup and
	* typically depends upon the locale and charset of the underlying
	* operating system.
	*
	* @return  A charset object for the default charset
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function defaultCharset() : java.nio.charset.Charset;
	
	/**
	* Initializes a new charset with the given canonical name and alias
	* set. </p>
	*
	* @param  canonicalName
	*         The canonical name of this charset
	*
	* @param  aliases
	*         An array of this charset's aliases, or null if it has no aliases
	*
	* @throws IllegalCharsetNameException
	*         If the canonical name or any of the aliases are illegal
	*/
	@:overload @:protected private function new(canonicalName : String, aliases : java.NativeArray<String>) : Void;
	
	/**
	* Returns this charset's canonical name. </p>
	*
	* @return  The canonical name of this charset
	*/
	@:overload @:public @:final public function name() : String;
	
	/**
	* Returns a set containing this charset's aliases. </p>
	*
	* @return  An immutable set of this charset's aliases
	*/
	@:overload @:public @:final public function aliases() : java.util.Set<String>;
	
	/**
	* Returns this charset's human-readable name for the default locale.
	*
	* <p> The default implementation of this method simply returns this
	* charset's canonical name.  Concrete subclasses of this class may
	* override this method in order to provide a localized display name. </p>
	*
	* @return  The display name of this charset in the default locale
	*/
	@:overload @:public public function displayName() : String;
	
	/**
	* Tells whether or not this charset is registered in the <a
	* href="http://www.iana.org/assignments/character-sets">IANA Charset
	* Registry</a>.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this charset is known by its
	*          implementor to be registered with the IANA
	*/
	@:overload @:public @:final public function isRegistered() : Bool;
	
	/**
	* Returns this charset's human-readable name for the given locale.
	*
	* <p> The default implementation of this method simply returns this
	* charset's canonical name.  Concrete subclasses of this class may
	* override this method in order to provide a localized display name. </p>
	*
	* @param  locale
	*         The locale for which the display name is to be retrieved
	*
	* @return  The display name of this charset in the given locale
	*/
	@:overload @:public public function displayName(locale : java.util.Locale) : String;
	
	/**
	* Tells whether or not this charset contains the given charset.
	*
	* <p> A charset <i>C</i> is said to <i>contain</i> a charset <i>D</i> if,
	* and only if, every character representable in <i>D</i> is also
	* representable in <i>C</i>.  If this relationship holds then it is
	* guaranteed that every string that can be encoded in <i>D</i> can also be
	* encoded in <i>C</i> without performing any replacements.
	*
	* <p> That <i>C</i> contains <i>D</i> does not imply that each character
	* representable in <i>C</i> by a particular byte sequence is represented
	* in <i>D</i> by the same byte sequence, although sometimes this is the
	* case.
	*
	* <p> Every charset contains itself.
	*
	* <p> This method computes an approximation of the containment relation:
	* If it returns <tt>true</tt> then the given charset is known to be
	* contained by this charset; if it returns <tt>false</tt>, however, then
	* it is not necessarily the case that the given charset is not contained
	* in this charset.
	*
	* @return  <tt>true</tt> if the given charset is contained in this charset
	*/
	@:overload @:public @:abstract public function contains(cs : java.nio.charset.Charset) : Bool;
	
	/**
	* Constructs a new decoder for this charset. </p>
	*
	* @return  A new decoder for this charset
	*/
	@:overload @:public @:abstract public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	/**
	* Constructs a new encoder for this charset. </p>
	*
	* @return  A new encoder for this charset
	*
	* @throws  UnsupportedOperationException
	*          If this charset does not support encoding
	*/
	@:overload @:public @:abstract public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	/**
	* Tells whether or not this charset supports encoding.
	*
	* <p> Nearly all charsets support encoding.  The primary exceptions are
	* special-purpose <i>auto-detect</i> charsets whose decoders can determine
	* which of several possible encoding schemes is in use by examining the
	* input byte sequence.  Such charsets do not support encoding because
	* there is no way to determine which encoding should be used on output.
	* Implementations of such charsets should override this method to return
	* <tt>false</tt>. </p>
	*
	* @return  <tt>true</tt> if, and only if, this charset supports encoding
	*/
	@:overload @:public public function canEncode() : Bool;
	
	/**
	* Convenience method that decodes bytes in this charset into Unicode
	* characters.
	*
	* <p> An invocation of this method upon a charset <tt>cs</tt> returns the
	* same result as the expression
	*
	* <pre>
	*     cs.newDecoder()
	*       .onMalformedInput(CodingErrorAction.REPLACE)
	*       .onUnmappableCharacter(CodingErrorAction.REPLACE)
	*       .decode(bb); </pre>
	*
	* except that it is potentially more efficient because it can cache
	* decoders between successive invocations.
	*
	* <p> This method always replaces malformed-input and unmappable-character
	* sequences with this charset's default replacement byte array.  In order
	* to detect such sequences, use the {@link
	* CharsetDecoder#decode(java.nio.ByteBuffer)} method directly.  </p>
	*
	* @param  bb  The byte buffer to be decoded
	*
	* @return  A char buffer containing the decoded characters
	*/
	@:overload @:public @:final public function decode(bb : java.nio.ByteBuffer) : java.nio.CharBuffer;
	
	/**
	* Convenience method that encodes Unicode characters into bytes in this
	* charset.
	*
	* <p> An invocation of this method upon a charset <tt>cs</tt> returns the
	* same result as the expression
	*
	* <pre>
	*     cs.newEncoder()
	*       .onMalformedInput(CodingErrorAction.REPLACE)
	*       .onUnmappableCharacter(CodingErrorAction.REPLACE)
	*       .encode(bb); </pre>
	*
	* except that it is potentially more efficient because it can cache
	* encoders between successive invocations.
	*
	* <p> This method always replaces malformed-input and unmappable-character
	* sequences with this charset's default replacement string.  In order to
	* detect such sequences, use the {@link
	* CharsetEncoder#encode(java.nio.CharBuffer)} method directly.  </p>
	*
	* @param  cb  The char buffer to be encoded
	*
	* @return  A byte buffer containing the encoded characters
	*/
	@:overload @:public @:final public function encode(cb : java.nio.CharBuffer) : java.nio.ByteBuffer;
	
	/**
	* Convenience method that encodes a string into bytes in this charset.
	*
	* <p> An invocation of this method upon a charset <tt>cs</tt> returns the
	* same result as the expression
	*
	* <pre>
	*     cs.encode(CharBuffer.wrap(s)); </pre>
	*
	* @param  str  The string to be encoded
	*
	* @return  A byte buffer containing the encoded characters
	*/
	@:overload @:public @:final public function encode(str : String) : java.nio.ByteBuffer;
	
	/**
	* Compares this charset to another.
	*
	* <p> Charsets are ordered by their canonical names, without regard to
	* case. </p>
	*
	* @param  that
	*         The charset to which this charset is to be compared
	*
	* @return A negative integer, zero, or a positive integer as this charset
	*         is less than, equal to, or greater than the specified charset
	*/
	@:overload @:public @:final public function compareTo(that : java.nio.charset.Charset) : Int;
	
	/**
	* Computes a hashcode for this charset. </p>
	*
	* @return  An integer hashcode
	*/
	@:overload @:public @:final public function hashCode() : Int;
	
	/**
	* Tells whether or not this object is equal to another.
	*
	* <p> Two charsets are equal if, and only if, they have the same canonical
	* names.  A charset is never equal to any other type of object.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this charset is equal to the
	*          given object
	*/
	@:overload @:public @:final public function equals(ob : Dynamic) : Bool;
	
	/**
	* Returns a string describing this charset. </p>
	*
	* @return  A string describing this charset
	*/
	@:overload @:public @:final public function toString() : String;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
