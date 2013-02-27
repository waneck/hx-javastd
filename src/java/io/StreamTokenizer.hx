package java.io;
/*
* Copyright (c) 1995, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class StreamTokenizer
{
	/**
	* After a call to the <code>nextToken</code> method, this field
	* contains the type of the token just read. For a single character
	* token, its value is the single character, converted to an integer.
	* For a quoted string token, its value is the quote character.
	* Otherwise, its value is one of the following:
	* <ul>
	* <li><code>TT_WORD</code> indicates that the token is a word.
	* <li><code>TT_NUMBER</code> indicates that the token is a number.
	* <li><code>TT_EOL</code> indicates that the end of line has been read.
	*     The field can only have this value if the
	*     <code>eolIsSignificant</code> method has been called with the
	*     argument <code>true</code>.
	* <li><code>TT_EOF</code> indicates that the end of the input stream
	*     has been reached.
	* </ul>
	* <p>
	* The initial value of this field is -4.
	*
	* @see     java.io.StreamTokenizer#eolIsSignificant(boolean)
	* @see     java.io.StreamTokenizer#nextToken()
	* @see     java.io.StreamTokenizer#quoteChar(int)
	* @see     java.io.StreamTokenizer#TT_EOF
	* @see     java.io.StreamTokenizer#TT_EOL
	* @see     java.io.StreamTokenizer#TT_NUMBER
	* @see     java.io.StreamTokenizer#TT_WORD
	*/
	public var ttype : Int;
	
	/**
	* A constant indicating that the end of the stream has been read.
	*/
	public static var TT_EOF(default, null) : Int;
	
	/**
	* A constant indicating that the end of the line has been read.
	*/
	public static var TT_EOL(default, null) : Int;
	
	/**
	* A constant indicating that a number token has been read.
	*/
	public static var TT_NUMBER(default, null) : Int;
	
	/**
	* A constant indicating that a word token has been read.
	*/
	public static var TT_WORD(default, null) : Int;
	
	/**
	* If the current token is a word token, this field contains a
	* string giving the characters of the word token. When the current
	* token is a quoted string token, this field contains the body of
	* the string.
	* <p>
	* The current token is a word when the value of the
	* <code>ttype</code> field is <code>TT_WORD</code>. The current token is
	* a quoted string token when the value of the <code>ttype</code> field is
	* a quote character.
	* <p>
	* The initial value of this field is null.
	*
	* @see     java.io.StreamTokenizer#quoteChar(int)
	* @see     java.io.StreamTokenizer#TT_WORD
	* @see     java.io.StreamTokenizer#ttype
	*/
	public var sval : String;
	
	/**
	* If the current token is a number, this field contains the value
	* of that number. The current token is a number when the value of
	* the <code>ttype</code> field is <code>TT_NUMBER</code>.
	* <p>
	* The initial value of this field is 0.0.
	*
	* @see     java.io.StreamTokenizer#TT_NUMBER
	* @see     java.io.StreamTokenizer#ttype
	*/
	public var nval : Float;
	
	/**
	* Creates a stream tokenizer that parses the specified input
	* stream. The stream tokenizer is initialized to the following
	* default state:
	* <ul>
	* <li>All byte values <code>'A'</code> through <code>'Z'</code>,
	*     <code>'a'</code> through <code>'z'</code>, and
	*     <code>'&#92;u00A0'</code> through <code>'&#92;u00FF'</code> are
	*     considered to be alphabetic.
	* <li>All byte values <code>'&#92;u0000'</code> through
	*     <code>'&#92;u0020'</code> are considered to be white space.
	* <li><code>'/'</code> is a comment character.
	* <li>Single quote <code>'&#92;''</code> and double quote <code>'"'</code>
	*     are string quote characters.
	* <li>Numbers are parsed.
	* <li>Ends of lines are treated as white space, not as separate tokens.
	* <li>C-style and C++-style comments are not recognized.
	* </ul>
	*
	* @deprecated As of JDK version 1.1, the preferred way to tokenize an
	* input stream is to convert it into a character stream, for example:
	* <blockquote><pre>
	*   Reader r = new BufferedReader(new InputStreamReader(is));
	*   StreamTokenizer st = new StreamTokenizer(r);
	* </pre></blockquote>
	*
	* @param      is        an input stream.
	* @see        java.io.BufferedReader
	* @see        java.io.InputStreamReader
	* @see        java.io.StreamTokenizer#StreamTokenizer(java.io.Reader)
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Create a tokenizer that parses the given character stream.
	*
	* @param r  a Reader object providing the input stream.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function new(r : java.io.Reader) : Void;
	
	/**
	* Resets this tokenizer's syntax table so that all characters are
	* "ordinary." See the <code>ordinaryChar</code> method
	* for more information on a character being ordinary.
	*
	* @see     java.io.StreamTokenizer#ordinaryChar(int)
	*/
	@:overload public function resetSyntax() : Void;
	
	/**
	* Specifies that all characters <i>c</i> in the range
	* <code>low&nbsp;&lt;=&nbsp;<i>c</i>&nbsp;&lt;=&nbsp;high</code>
	* are word constituents. A word token consists of a word constituent
	* followed by zero or more word constituents or number constituents.
	*
	* @param   low   the low end of the range.
	* @param   hi    the high end of the range.
	*/
	@:overload public function wordChars(low : Int, hi : Int) : Void;
	
	/**
	* Specifies that all characters <i>c</i> in the range
	* <code>low&nbsp;&lt;=&nbsp;<i>c</i>&nbsp;&lt;=&nbsp;high</code>
	* are white space characters. White space characters serve only to
	* separate tokens in the input stream.
	*
	* <p>Any other attribute settings for the characters in the specified
	* range are cleared.
	*
	* @param   low   the low end of the range.
	* @param   hi    the high end of the range.
	*/
	@:overload public function whitespaceChars(low : Int, hi : Int) : Void;
	
	/**
	* Specifies that all characters <i>c</i> in the range
	* <code>low&nbsp;&lt;=&nbsp;<i>c</i>&nbsp;&lt;=&nbsp;high</code>
	* are "ordinary" in this tokenizer. See the
	* <code>ordinaryChar</code> method for more information on a
	* character being ordinary.
	*
	* @param   low   the low end of the range.
	* @param   hi    the high end of the range.
	* @see     java.io.StreamTokenizer#ordinaryChar(int)
	*/
	@:overload public function ordinaryChars(low : Int, hi : Int) : Void;
	
	/**
	* Specifies that the character argument is "ordinary"
	* in this tokenizer. It removes any special significance the
	* character has as a comment character, word component, string
	* delimiter, white space, or number character. When such a character
	* is encountered by the parser, the parser treats it as a
	* single-character token and sets <code>ttype</code> field to the
	* character value.
	*
	* <p>Making a line terminator character "ordinary" may interfere
	* with the ability of a <code>StreamTokenizer</code> to count
	* lines. The <code>lineno</code> method may no longer reflect
	* the presence of such terminator characters in its line count.
	*
	* @param   ch   the character.
	* @see     java.io.StreamTokenizer#ttype
	*/
	@:overload public function ordinaryChar(ch : Int) : Void;
	
	/**
	* Specified that the character argument starts a single-line
	* comment. All characters from the comment character to the end of
	* the line are ignored by this stream tokenizer.
	*
	* <p>Any other attribute settings for the specified character are cleared.
	*
	* @param   ch   the character.
	*/
	@:overload public function commentChar(ch : Int) : Void;
	
	/**
	* Specifies that matching pairs of this character delimit string
	* constants in this tokenizer.
	* <p>
	* When the <code>nextToken</code> method encounters a string
	* constant, the <code>ttype</code> field is set to the string
	* delimiter and the <code>sval</code> field is set to the body of
	* the string.
	* <p>
	* If a string quote character is encountered, then a string is
	* recognized, consisting of all characters after (but not including)
	* the string quote character, up to (but not including) the next
	* occurrence of that same string quote character, or a line
	* terminator, or end of file. The usual escape sequences such as
	* <code>"&#92;n"</code> and <code>"&#92;t"</code> are recognized and
	* converted to single characters as the string is parsed.
	*
	* <p>Any other attribute settings for the specified character are cleared.
	*
	* @param   ch   the character.
	* @see     java.io.StreamTokenizer#nextToken()
	* @see     java.io.StreamTokenizer#sval
	* @see     java.io.StreamTokenizer#ttype
	*/
	@:overload public function quoteChar(ch : Int) : Void;
	
	/**
	* Specifies that numbers should be parsed by this tokenizer. The
	* syntax table of this tokenizer is modified so that each of the twelve
	* characters:
	* <blockquote><pre>
	*      0 1 2 3 4 5 6 7 8 9 . -
	* </pre></blockquote>
	* <p>
	* has the "numeric" attribute.
	* <p>
	* When the parser encounters a word token that has the format of a
	* double precision floating-point number, it treats the token as a
	* number rather than a word, by setting the <code>ttype</code>
	* field to the value <code>TT_NUMBER</code> and putting the numeric
	* value of the token into the <code>nval</code> field.
	*
	* @see     java.io.StreamTokenizer#nval
	* @see     java.io.StreamTokenizer#TT_NUMBER
	* @see     java.io.StreamTokenizer#ttype
	*/
	@:overload public function parseNumbers() : Void;
	
	/**
	* Determines whether or not ends of line are treated as tokens.
	* If the flag argument is true, this tokenizer treats end of lines
	* as tokens; the <code>nextToken</code> method returns
	* <code>TT_EOL</code> and also sets the <code>ttype</code> field to
	* this value when an end of line is read.
	* <p>
	* A line is a sequence of characters ending with either a
	* carriage-return character (<code>'&#92;r'</code>) or a newline
	* character (<code>'&#92;n'</code>). In addition, a carriage-return
	* character followed immediately by a newline character is treated
	* as a single end-of-line token.
	* <p>
	* If the <code>flag</code> is false, end-of-line characters are
	* treated as white space and serve only to separate tokens.
	*
	* @param   flag   <code>true</code> indicates that end-of-line characters
	*                 are separate tokens; <code>false</code> indicates that
	*                 end-of-line characters are white space.
	* @see     java.io.StreamTokenizer#nextToken()
	* @see     java.io.StreamTokenizer#ttype
	* @see     java.io.StreamTokenizer#TT_EOL
	*/
	@:overload public function eolIsSignificant(flag : Bool) : Void;
	
	/**
	* Determines whether or not the tokenizer recognizes C-style comments.
	* If the flag argument is <code>true</code>, this stream tokenizer
	* recognizes C-style comments. All text between successive
	* occurrences of <code>/*</code> and <code>*&#47;</code> are discarded.
	* <p>
	* If the flag argument is <code>false</code>, then C-style comments
	* are not treated specially.
	*
	* @param   flag   <code>true</code> indicates to recognize and ignore
	*                 C-style comments.
	*/
	@:overload public function slashStarComments(flag : Bool) : Void;
	
	/**
	* Determines whether or not the tokenizer recognizes C++-style comments.
	* If the flag argument is <code>true</code>, this stream tokenizer
	* recognizes C++-style comments. Any occurrence of two consecutive
	* slash characters (<code>'/'</code>) is treated as the beginning of
	* a comment that extends to the end of the line.
	* <p>
	* If the flag argument is <code>false</code>, then C++-style
	* comments are not treated specially.
	*
	* @param   flag   <code>true</code> indicates to recognize and ignore
	*                 C++-style comments.
	*/
	@:overload public function slashSlashComments(flag : Bool) : Void;
	
	/**
	* Determines whether or not word token are automatically lowercased.
	* If the flag argument is <code>true</code>, then the value in the
	* <code>sval</code> field is lowercased whenever a word token is
	* returned (the <code>ttype</code> field has the
	* value <code>TT_WORD</code> by the <code>nextToken</code> method
	* of this tokenizer.
	* <p>
	* If the flag argument is <code>false</code>, then the
	* <code>sval</code> field is not modified.
	*
	* @param   fl   <code>true</code> indicates that all word tokens should
	*               be lowercased.
	* @see     java.io.StreamTokenizer#nextToken()
	* @see     java.io.StreamTokenizer#ttype
	* @see     java.io.StreamTokenizer#TT_WORD
	*/
	@:overload public function lowerCaseMode(fl : Bool) : Void;
	
	/**
	* Parses the next token from the input stream of this tokenizer.
	* The type of the next token is returned in the <code>ttype</code>
	* field. Additional information about the token may be in the
	* <code>nval</code> field or the <code>sval</code> field of this
	* tokenizer.
	* <p>
	* Typical clients of this
	* class first set up the syntax tables and then sit in a loop
	* calling nextToken to parse successive tokens until TT_EOF
	* is returned.
	*
	* @return     the value of the <code>ttype</code> field.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.StreamTokenizer#nval
	* @see        java.io.StreamTokenizer#sval
	* @see        java.io.StreamTokenizer#ttype
	*/
	@:overload public function nextToken() : Int;
	
	/**
	* Causes the next call to the <code>nextToken</code> method of this
	* tokenizer to return the current value in the <code>ttype</code>
	* field, and not to modify the value in the <code>nval</code> or
	* <code>sval</code> field.
	*
	* @see     java.io.StreamTokenizer#nextToken()
	* @see     java.io.StreamTokenizer#nval
	* @see     java.io.StreamTokenizer#sval
	* @see     java.io.StreamTokenizer#ttype
	*/
	@:overload public function pushBack() : Void;
	
	/**
	* Return the current line number.
	*
	* @return  the current line number of this stream tokenizer.
	*/
	@:overload public function lineno() : Int;
	
	/**
	* Returns the string representation of the current stream token and
	* the line number it occurs on.
	*
	* <p>The precise string returned is unspecified, although the following
	* example can be considered typical:
	*
	* <blockquote><pre>Token['a'], line 10</pre></blockquote>
	*
	* @return  a string representation of the token
	* @see     java.io.StreamTokenizer#nval
	* @see     java.io.StreamTokenizer#sval
	* @see     java.io.StreamTokenizer#ttype
	*/
	@:overload public function toString() : String;
	
	
}
