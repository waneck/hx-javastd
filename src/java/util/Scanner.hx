package java.util;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Scanner implements java.util.Iterator<String> implements java.io.Closeable
{
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified source.
	*
	* @param  source A character source implementing the {@link Readable}
	*         interface
	*/
	@:overload public function new(source : java.lang.Readable) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified input stream. Bytes from the stream are converted
	* into characters using the underlying platform's
	* {@linkplain java.nio.charset.Charset#defaultCharset() default charset}.
	*
	* @param  source An input stream to be scanned
	*/
	@:overload public function new(source : java.io.InputStream) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified input stream. Bytes from the stream are converted
	* into characters using the specified charset.
	*
	* @param  source An input stream to be scanned
	* @param charsetName The encoding type used to convert bytes from the
	*        stream into characters to be scanned
	* @throws IllegalArgumentException if the specified character set
	*         does not exist
	*/
	@:overload public function new(source : java.io.InputStream, charsetName : String) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified file. Bytes from the file are converted into
	* characters using the underlying platform's
	* {@linkplain java.nio.charset.Charset#defaultCharset() default charset}.
	*
	* @param  source A file to be scanned
	* @throws FileNotFoundException if source is not found
	*/
	@:overload public function new(source : java.io.File) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified file. Bytes from the file are converted into
	* characters using the specified charset.
	*
	* @param  source A file to be scanned
	* @param charsetName The encoding type used to convert bytes from the file
	*        into characters to be scanned
	* @throws FileNotFoundException if source is not found
	* @throws IllegalArgumentException if the specified encoding is
	*         not found
	*/
	@:overload public function new(source : java.io.File, charsetName : String) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified file. Bytes from the file are converted into
	* characters using the underlying platform's
	* {@linkplain java.nio.charset.Charset#defaultCharset() default charset}.
	*
	* @param   source
	*          the path to the file to be scanned
	* @throws  IOException
	*          if an I/O error occurs opening source
	*
	* @since   1.7
	*/
	@:require(java7) @:overload public function new(source : java.nio.file.Path) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified file. Bytes from the file are converted into
	* characters using the specified charset.
	*
	* @param   source
	*          the path to the file to be scanned
	* @param   charsetName
	*          The encoding type used to convert bytes from the file
	*          into characters to be scanned
	* @throws  IOException
	*          if an I/O error occurs opening source
	* @throws  IllegalArgumentException
	*          if the specified encoding is not found
	* @since   1.7
	*/
	@:require(java7) @:overload public function new(source : java.nio.file.Path, charsetName : String) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified string.
	*
	* @param  source A string to scan
	*/
	@:overload public function new(source : String) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified channel. Bytes from the source are converted into
	* characters using the underlying platform's
	* {@linkplain java.nio.charset.Charset#defaultCharset() default charset}.
	*
	* @param  source A channel to scan
	*/
	@:overload public function new(source : java.nio.channels.ReadableByteChannel) : Void;
	
	/**
	* Constructs a new <code>Scanner</code> that produces values scanned
	* from the specified channel. Bytes from the source are converted into
	* characters using the specified charset.
	*
	* @param  source A channel to scan
	* @param charsetName The encoding type used to convert bytes from the
	*        channel into characters to be scanned
	* @throws IllegalArgumentException if the specified character set
	*         does not exist
	*/
	@:overload public function new(source : java.nio.channels.ReadableByteChannel, charsetName : String) : Void;
	
	/**
	* Closes this scanner.
	*
	* <p> If this scanner has not yet been closed then if its underlying
	* {@linkplain java.lang.Readable readable} also implements the {@link
	* java.io.Closeable} interface then the readable's <tt>close</tt> method
	* will be invoked.  If this scanner is already closed then invoking this
	* method will have no effect.
	*
	* <p>Attempting to perform search operations after a scanner has
	* been closed will result in an {@link IllegalStateException}.
	*
	*/
	@:overload public function close() : Void;
	
	/**
	* Returns the <code>IOException</code> last thrown by this
	* <code>Scanner</code>'s underlying <code>Readable</code>. This method
	* returns <code>null</code> if no such exception exists.
	*
	* @return the last exception thrown by this scanner's readable
	*/
	@:overload public function ioException() : java.io.IOException;
	
	/**
	* Returns the <code>Pattern</code> this <code>Scanner</code> is currently
	* using to match delimiters.
	*
	* @return this scanner's delimiting pattern.
	*/
	@:overload public function delimiter() : java.util.regex.Pattern;
	
	/**
	* Sets this scanner's delimiting pattern to the specified pattern.
	*
	* @param pattern A delimiting pattern
	* @return this scanner
	*/
	@:overload public function useDelimiter(pattern : java.util.regex.Pattern) : Scanner;
	
	/**
	* Sets this scanner's delimiting pattern to a pattern constructed from
	* the specified <code>String</code>.
	*
	* <p> An invocation of this method of the form
	* <tt>useDelimiter(pattern)</tt> behaves in exactly the same way as the
	* invocation <tt>useDelimiter(Pattern.compile(pattern))</tt>.
	*
	* <p> Invoking the {@link #reset} method will set the scanner's delimiter
	* to the <a href= "#default-delimiter">default</a>.
	*
	* @param pattern A string specifying a delimiting pattern
	* @return this scanner
	*/
	@:overload public function useDelimiter(pattern : String) : Scanner;
	
	/**
	* Returns this scanner's locale.
	*
	* <p>A scanner's locale affects many elements of its default
	* primitive matching regular expressions; see
	* <a href= "#localized-numbers">localized numbers</a> above.
	*
	* @return this scanner's locale
	*/
	@:overload public function locale() : java.util.Locale;
	
	/**
	* Sets this scanner's locale to the specified locale.
	*
	* <p>A scanner's locale affects many elements of its default
	* primitive matching regular expressions; see
	* <a href= "#localized-numbers">localized numbers</a> above.
	*
	* <p>Invoking the {@link #reset} method will set the scanner's locale to
	* the <a href= "#initial-locale">initial locale</a>.
	*
	* @param locale A string specifying the locale to use
	* @return this scanner
	*/
	@:overload public function useLocale(locale : java.util.Locale) : Scanner;
	
	/**
	* Returns this scanner's default radix.
	*
	* <p>A scanner's radix affects elements of its default
	* number matching regular expressions; see
	* <a href= "#localized-numbers">localized numbers</a> above.
	*
	* @return the default radix of this scanner
	*/
	@:overload public function radix() : Int;
	
	/**
	* Sets this scanner's default radix to the specified radix.
	*
	* <p>A scanner's radix affects elements of its default
	* number matching regular expressions; see
	* <a href= "#localized-numbers">localized numbers</a> above.
	*
	* <p>If the radix is less than <code>Character.MIN_RADIX</code>
	* or greater than <code>Character.MAX_RADIX</code>, then an
	* <code>IllegalArgumentException</code> is thrown.
	*
	* <p>Invoking the {@link #reset} method will set the scanner's radix to
	* <code>10</code>.
	*
	* @param radix The radix to use when scanning numbers
	* @return this scanner
	* @throws IllegalArgumentException if radix is out of range
	*/
	@:overload public function useRadix(radix : Int) : Scanner;
	
	/**
	* Returns the match result of the last scanning operation performed
	* by this scanner. This method throws <code>IllegalStateException</code>
	* if no match has been performed, or if the last match was
	* not successful.
	*
	* <p>The various <code>next</code>methods of <code>Scanner</code>
	* make a match result available if they complete without throwing an
	* exception. For instance, after an invocation of the {@link #nextInt}
	* method that returned an int, this method returns a
	* <code>MatchResult</code> for the search of the
	* <a href="#Integer-regex"><i>Integer</i></a> regular expression
	* defined above. Similarly the {@link #findInLine},
	* {@link #findWithinHorizon}, and {@link #skip} methods will make a
	* match available if they succeed.
	*
	* @return a match result for the last match operation
	* @throws IllegalStateException  If no match result is available
	*/
	@:overload public function match() : java.util.regex.MatchResult;
	
	/**
	* <p>Returns the string representation of this <code>Scanner</code>. The
	* string representation of a <code>Scanner</code> contains information
	* that may be useful for debugging. The exact format is unspecified.
	*
	* @return  The string representation of this scanner
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns true if this scanner has another token in its input.
	* This method may block while waiting for input to scan.
	* The scanner does not advance past any input.
	*
	* @return true if and only if this scanner has another token
	* @throws IllegalStateException if this scanner is closed
	* @see java.util.Iterator
	*/
	@:overload public function hasNext() : Bool;
	
	/**
	* Finds and returns the next complete token from this scanner.
	* A complete token is preceded and followed by input that matches
	* the delimiter pattern. This method may block while waiting for input
	* to scan, even if a previous invocation of {@link #hasNext} returned
	* <code>true</code>.
	*
	* @return the next token
	* @throws NoSuchElementException if no more tokens are available
	* @throws IllegalStateException if this scanner is closed
	* @see java.util.Iterator
	*/
	@:overload public function next() : String;
	
	/**
	* The remove operation is not supported by this implementation of
	* <code>Iterator</code>.
	*
	* @throws UnsupportedOperationException if this method is invoked.
	* @see java.util.Iterator
	*/
	@:overload public function remove() : Void;
	
	/**
	* Returns true if the next token matches the pattern constructed from the
	* specified string. The scanner does not advance past any input.
	*
	* <p> An invocation of this method of the form <tt>hasNext(pattern)</tt>
	* behaves in exactly the same way as the invocation
	* <tt>hasNext(Pattern.compile(pattern))</tt>.
	*
	* @param pattern a string specifying the pattern to scan
	* @return true if and only if this scanner has another token matching
	*         the specified pattern
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNext(pattern : String) : Bool;
	
	/**
	* Returns the next token if it matches the pattern constructed from the
	* specified string.  If the match is successful, the scanner advances
	* past the input that matched the pattern.
	*
	* <p> An invocation of this method of the form <tt>next(pattern)</tt>
	* behaves in exactly the same way as the invocation
	* <tt>next(Pattern.compile(pattern))</tt>.
	*
	* @param pattern a string specifying the pattern to scan
	* @return the next token
	* @throws NoSuchElementException if no such tokens are available
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function next(pattern : String) : String;
	
	/**
	* Returns true if the next complete token matches the specified pattern.
	* A complete token is prefixed and postfixed by input that matches
	* the delimiter pattern. This method may block while waiting for input.
	* The scanner does not advance past any input.
	*
	* @param pattern the pattern to scan for
	* @return true if and only if this scanner has another token matching
	*         the specified pattern
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNext(pattern : java.util.regex.Pattern) : Bool;
	
	/**
	* Returns the next token if it matches the specified pattern. This
	* method may block while waiting for input to scan, even if a previous
	* invocation of {@link #hasNext(Pattern)} returned <code>true</code>.
	* If the match is successful, the scanner advances past the input that
	* matched the pattern.
	*
	* @param pattern the pattern to scan for
	* @return the next token
	* @throws NoSuchElementException if no more tokens are available
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function next(pattern : java.util.regex.Pattern) : String;
	
	/**
	* Returns true if there is another line in the input of this scanner.
	* This method may block while waiting for input. The scanner does not
	* advance past any input.
	*
	* @return true if and only if this scanner has another line of input
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextLine() : Bool;
	
	/**
	* Advances this scanner past the current line and returns the input
	* that was skipped.
	*
	* This method returns the rest of the current line, excluding any line
	* separator at the end. The position is set to the beginning of the next
	* line.
	*
	* <p>Since this method continues to search through the input looking
	* for a line separator, it may buffer all of the input searching for
	* the line to skip if no line separators are present.
	*
	* @return the line that was skipped
	* @throws NoSuchElementException if no line was found
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextLine() : String;
	
	/**
	* Attempts to find the next occurrence of a pattern constructed from the
	* specified string, ignoring delimiters.
	*
	* <p>An invocation of this method of the form <tt>findInLine(pattern)</tt>
	* behaves in exactly the same way as the invocation
	* <tt>findInLine(Pattern.compile(pattern))</tt>.
	*
	* @param pattern a string specifying the pattern to search for
	* @return the text that matched the specified pattern
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function findInLine(pattern : String) : String;
	
	/**
	* Attempts to find the next occurrence of the specified pattern ignoring
	* delimiters. If the pattern is found before the next line separator, the
	* scanner advances past the input that matched and returns the string that
	* matched the pattern.
	* If no such pattern is detected in the input up to the next line
	* separator, then <code>null</code> is returned and the scanner's
	* position is unchanged. This method may block waiting for input that
	* matches the pattern.
	*
	* <p>Since this method continues to search through the input looking
	* for the specified pattern, it may buffer all of the input searching for
	* the desired token if no line separators are present.
	*
	* @param pattern the pattern to scan for
	* @return the text that matched the specified pattern
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function findInLine(pattern : java.util.regex.Pattern) : String;
	
	/**
	* Attempts to find the next occurrence of a pattern constructed from the
	* specified string, ignoring delimiters.
	*
	* <p>An invocation of this method of the form
	* <tt>findWithinHorizon(pattern)</tt> behaves in exactly the same way as
	* the invocation
	* <tt>findWithinHorizon(Pattern.compile(pattern, horizon))</tt>.
	*
	* @param pattern a string specifying the pattern to search for
	* @return the text that matched the specified pattern
	* @throws IllegalStateException if this scanner is closed
	* @throws IllegalArgumentException if horizon is negative
	*/
	@:overload public function findWithinHorizon(pattern : String, horizon : Int) : String;
	
	/**
	* Attempts to find the next occurrence of the specified pattern.
	*
	* <p>This method searches through the input up to the specified
	* search horizon, ignoring delimiters. If the pattern is found the
	* scanner advances past the input that matched and returns the string
	* that matched the pattern. If no such pattern is detected then the
	* null is returned and the scanner's position remains unchanged. This
	* method may block waiting for input that matches the pattern.
	*
	* <p>A scanner will never search more than <code>horizon</code> code
	* points beyond its current position. Note that a match may be clipped
	* by the horizon; that is, an arbitrary match result may have been
	* different if the horizon had been larger. The scanner treats the
	* horizon as a transparent, non-anchoring bound (see {@link
	* Matcher#useTransparentBounds} and {@link Matcher#useAnchoringBounds}).
	*
	* <p>If horizon is <code>0</code>, then the horizon is ignored and
	* this method continues to search through the input looking for the
	* specified pattern without bound. In this case it may buffer all of
	* the input searching for the pattern.
	*
	* <p>If horizon is negative, then an IllegalArgumentException is
	* thrown.
	*
	* @param pattern the pattern to scan for
	* @return the text that matched the specified pattern
	* @throws IllegalStateException if this scanner is closed
	* @throws IllegalArgumentException if horizon is negative
	*/
	@:overload public function findWithinHorizon(pattern : java.util.regex.Pattern, horizon : Int) : String;
	
	/**
	* Skips input that matches the specified pattern, ignoring delimiters.
	* This method will skip input if an anchored match of the specified
	* pattern succeeds.
	*
	* <p>If a match to the specified pattern is not found at the
	* current position, then no input is skipped and a
	* <tt>NoSuchElementException</tt> is thrown.
	*
	* <p>Since this method seeks to match the specified pattern starting at
	* the scanner's current position, patterns that can match a lot of
	* input (".*", for example) may cause the scanner to buffer a large
	* amount of input.
	*
	* <p>Note that it is possible to skip something without risking a
	* <code>NoSuchElementException</code> by using a pattern that can
	* match nothing, e.g., <code>sc.skip("[ \t]*")</code>.
	*
	* @param pattern a string specifying the pattern to skip over
	* @return this scanner
	* @throws NoSuchElementException if the specified pattern is not found
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function skip(pattern : java.util.regex.Pattern) : Scanner;
	
	/**
	* Skips input that matches a pattern constructed from the specified
	* string.
	*
	* <p> An invocation of this method of the form <tt>skip(pattern)</tt>
	* behaves in exactly the same way as the invocation
	* <tt>skip(Pattern.compile(pattern))</tt>.
	*
	* @param pattern a string specifying the pattern to skip over
	* @return this scanner
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function skip(pattern : String) : Scanner;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a boolean value using a case insensitive pattern
	* created from the string "true|false".  The scanner does not
	* advance past the input that matched.
	*
	* @return true if and only if this scanner's next token is a valid
	*         boolean value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextBoolean() : Bool;
	
	/**
	* Scans the next token of the input into a boolean value and returns
	* that value. This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid boolean value.
	* If the match is successful, the scanner advances past the input that
	* matched.
	*
	* @return the boolean scanned from the input
	* @throws InputMismatchException if the next token is not a valid boolean
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextBoolean() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a byte value in the default radix using the
	* {@link #nextByte} method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         byte value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextByte() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a byte value in the specified radix using the
	* {@link #nextByte} method. The scanner does not advance past any input.
	*
	* @param radix the radix used to interpret the token as a byte value
	* @return true if and only if this scanner's next token is a valid
	*         byte value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextByte(radix : Int) : Bool;
	
	/**
	* Scans the next token of the input as a <tt>byte</tt>.
	*
	* <p> An invocation of this method of the form
	* <tt>nextByte()</tt> behaves in exactly the same way as the
	* invocation <tt>nextByte(radix)</tt>, where <code>radix</code>
	* is the default radix of this scanner.
	*
	* @return the <tt>byte</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextByte() : java.StdTypes.Int8;
	
	/**
	* Scans the next token of the input as a <tt>byte</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid byte value as
	* described below. If the translation is successful, the scanner advances
	* past the input that matched.
	*
	* <p> If the next token matches the <a
	* href="#Integer-regex"><i>Integer</i></a> regular expression defined
	* above then the token is converted into a <tt>byte</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Byte#parseByte(String, int) Byte.parseByte} with the
	* specified radix.
	*
	* @param radix the radix used to interpret the token as a byte value
	* @return the <tt>byte</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextByte(radix : Int) : java.StdTypes.Int8;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a short value in the default radix using the
	* {@link #nextShort} method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         short value in the default radix
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextShort() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a short value in the specified radix using the
	* {@link #nextShort} method. The scanner does not advance past any input.
	*
	* @param radix the radix used to interpret the token as a short value
	* @return true if and only if this scanner's next token is a valid
	*         short value in the specified radix
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextShort(radix : Int) : Bool;
	
	/**
	* Scans the next token of the input as a <tt>short</tt>.
	*
	* <p> An invocation of this method of the form
	* <tt>nextShort()</tt> behaves in exactly the same way as the
	* invocation <tt>nextShort(radix)</tt>, where <code>radix</code>
	* is the default radix of this scanner.
	*
	* @return the <tt>short</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextShort() : java.StdTypes.Int16;
	
	/**
	* Scans the next token of the input as a <tt>short</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid short value as
	* described below. If the translation is successful, the scanner advances
	* past the input that matched.
	*
	* <p> If the next token matches the <a
	* href="#Integer-regex"><i>Integer</i></a> regular expression defined
	* above then the token is converted into a <tt>short</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Short#parseShort(String, int) Short.parseShort} with the
	* specified radix.
	*
	* @param radix the radix used to interpret the token as a short value
	* @return the <tt>short</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextShort(radix : Int) : java.StdTypes.Int16;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as an int value in the default radix using the
	* {@link #nextInt} method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         int value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextInt() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as an int value in the specified radix using the
	* {@link #nextInt} method. The scanner does not advance past any input.
	*
	* @param radix the radix used to interpret the token as an int value
	* @return true if and only if this scanner's next token is a valid
	*         int value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextInt(radix : Int) : Bool;
	
	/**
	* Scans the next token of the input as an <tt>int</tt>.
	*
	* <p> An invocation of this method of the form
	* <tt>nextInt()</tt> behaves in exactly the same way as the
	* invocation <tt>nextInt(radix)</tt>, where <code>radix</code>
	* is the default radix of this scanner.
	*
	* @return the <tt>int</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextInt() : Int;
	
	/**
	* Scans the next token of the input as an <tt>int</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid int value as
	* described below. If the translation is successful, the scanner advances
	* past the input that matched.
	*
	* <p> If the next token matches the <a
	* href="#Integer-regex"><i>Integer</i></a> regular expression defined
	* above then the token is converted into an <tt>int</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Integer#parseInt(String, int) Integer.parseInt} with the
	* specified radix.
	*
	* @param radix the radix used to interpret the token as an int value
	* @return the <tt>int</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextInt(radix : Int) : Int;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a long value in the default radix using the
	* {@link #nextLong} method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         long value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextLong() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a long value in the specified radix using the
	* {@link #nextLong} method. The scanner does not advance past any input.
	*
	* @param radix the radix used to interpret the token as a long value
	* @return true if and only if this scanner's next token is a valid
	*         long value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextLong(radix : Int) : Bool;
	
	/**
	* Scans the next token of the input as a <tt>long</tt>.
	*
	* <p> An invocation of this method of the form
	* <tt>nextLong()</tt> behaves in exactly the same way as the
	* invocation <tt>nextLong(radix)</tt>, where <code>radix</code>
	* is the default radix of this scanner.
	*
	* @return the <tt>long</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextLong() : haxe.Int64;
	
	/**
	* Scans the next token of the input as a <tt>long</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid long value as
	* described below. If the translation is successful, the scanner advances
	* past the input that matched.
	*
	* <p> If the next token matches the <a
	* href="#Integer-regex"><i>Integer</i></a> regular expression defined
	* above then the token is converted into a <tt>long</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Long#parseLong(String, int) Long.parseLong} with the
	* specified radix.
	*
	* @param radix the radix used to interpret the token as an int value
	* @return the <tt>long</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextLong(radix : Int) : haxe.Int64;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a float value using the {@link #nextFloat}
	* method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         float value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextFloat() : Bool;
	
	/**
	* Scans the next token of the input as a <tt>float</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid float value as
	* described below. If the translation is successful, the scanner advances
	* past the input that matched.
	*
	* <p> If the next token matches the <a
	* href="#Float-regex"><i>Float</i></a> regular expression defined above
	* then the token is converted into a <tt>float</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Float#parseFloat Float.parseFloat}. If the token matches
	* the localized NaN or infinity strings, then either "Nan" or "Infinity"
	* is passed to {@link Float#parseFloat(String) Float.parseFloat} as
	* appropriate.
	*
	* @return the <tt>float</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Float</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextFloat() : Single;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a double value using the {@link #nextDouble}
	* method. The scanner does not advance past any input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         double value
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextDouble() : Bool;
	
	/**
	* Scans the next token of the input as a <tt>double</tt>.
	* This method will throw <code>InputMismatchException</code>
	* if the next token cannot be translated into a valid double value.
	* If the translation is successful, the scanner advances past the input
	* that matched.
	*
	* <p> If the next token matches the <a
	* href="#Float-regex"><i>Float</i></a> regular expression defined above
	* then the token is converted into a <tt>double</tt> value as if by
	* removing all locale specific prefixes, group separators, and locale
	* specific suffixes, then mapping non-ASCII digits into ASCII
	* digits via {@link Character#digit Character.digit}, prepending a
	* negative sign (-) if the locale specific negative prefixes and suffixes
	* were present, and passing the resulting string to
	* {@link Double#parseDouble Double.parseDouble}. If the token matches
	* the localized NaN or infinity strings, then either "Nan" or "Infinity"
	* is passed to {@link Double#parseDouble(String) Double.parseDouble} as
	* appropriate.
	*
	* @return the <tt>double</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Float</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if the input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextDouble() : Float;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a <code>BigInteger</code> in the default radix using the
	* {@link #nextBigInteger} method. The scanner does not advance past any
	* input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         <code>BigInteger</code>
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextBigInteger() : Bool;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a <code>BigInteger</code> in the specified radix using
	* the {@link #nextBigInteger} method. The scanner does not advance past
	* any input.
	*
	* @param radix the radix used to interpret the token as an integer
	* @return true if and only if this scanner's next token is a valid
	*         <code>BigInteger</code>
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextBigInteger(radix : Int) : Bool;
	
	/**
	* Scans the next token of the input as a {@link java.math.BigInteger
	* BigInteger}.
	*
	* <p> An invocation of this method of the form
	* <tt>nextBigInteger()</tt> behaves in exactly the same way as the
	* invocation <tt>nextBigInteger(radix)</tt>, where <code>radix</code>
	* is the default radix of this scanner.
	*
	* @return the <tt>BigInteger</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if the input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextBigInteger() : java.math.BigInteger;
	
	/**
	* Scans the next token of the input as a {@link java.math.BigInteger
	* BigInteger}.
	*
	* <p> If the next token matches the <a
	* href="#Integer-regex"><i>Integer</i></a> regular expression defined
	* above then the token is converted into a <tt>BigInteger</tt> value as if
	* by removing all group separators, mapping non-ASCII digits into ASCII
	* digits via the {@link Character#digit Character.digit}, and passing the
	* resulting string to the {@link
	* java.math.BigInteger#BigInteger(java.lang.String)
	* BigInteger(String, int)} constructor with the specified radix.
	*
	* @param radix the radix used to interpret the token
	* @return the <tt>BigInteger</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Integer</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if the input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextBigInteger(radix : Int) : java.math.BigInteger;
	
	/**
	* Returns true if the next token in this scanner's input can be
	* interpreted as a <code>BigDecimal</code> using the
	* {@link #nextBigDecimal} method. The scanner does not advance past any
	* input.
	*
	* @return true if and only if this scanner's next token is a valid
	*         <code>BigDecimal</code>
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function hasNextBigDecimal() : Bool;
	
	/**
	* Scans the next token of the input as a {@link java.math.BigDecimal
	* BigDecimal}.
	*
	* <p> If the next token matches the <a
	* href="#Decimal-regex"><i>Decimal</i></a> regular expression defined
	* above then the token is converted into a <tt>BigDecimal</tt> value as if
	* by removing all group separators, mapping non-ASCII digits into ASCII
	* digits via the {@link Character#digit Character.digit}, and passing the
	* resulting string to the {@link
	* java.math.BigDecimal#BigDecimal(java.lang.String) BigDecimal(String)}
	* constructor.
	*
	* @return the <tt>BigDecimal</tt> scanned from the input
	* @throws InputMismatchException
	*         if the next token does not match the <i>Decimal</i>
	*         regular expression, or is out of range
	* @throws NoSuchElementException if the input is exhausted
	* @throws IllegalStateException if this scanner is closed
	*/
	@:overload public function nextBigDecimal() : java.math.BigDecimal;
	
	/**
	* Resets this scanner.
	*
	* <p> Resetting a scanner discards all of its explicit state
	* information which may have been changed by invocations of {@link
	* #useDelimiter}, {@link #useLocale}, or {@link #useRadix}.
	*
	* <p> An invocation of this method of the form
	* <tt>scanner.reset()</tt> behaves in exactly the same way as the
	* invocation
	*
	* <blockquote><pre>
	*   scanner.useDelimiter("\\p{javaWhitespace}+")
	*          .useLocale(Locale.getDefault())
	*          .useRadix(10);
	* </pre></blockquote>
	*
	* @return this scanner
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function reset() : Scanner;
	
	
}
