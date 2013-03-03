package com.sun.tools.javac.parser;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** The lexical analyzer maps an input stream consisting of
*  ASCII characters and Unicode escapes into a token sequence.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Scanner implements com.sun.tools.javac.parser.Lexer
{
	/** Create a scanner from the input buffer.  buffer must implement
	*  array() and compact(), and remaining() must be less than limit().
	*/
	@:overload @:protected private function new(fac : com.sun.tools.javac.parser.ScannerFactory, buffer : java.nio.CharBuffer) : Void;
	
	/**
	* Create a scanner from the input array.  This method might
	* modify the array.  To avoid copying the input array, ensure
	* that {@code inputLength < input.length} or
	* {@code input[input.length -1]} is a white space character.
	*
	* @param fac the factory which created this Scanner
	* @param input the input, might be modified
	* @param inputLength the size of the input.
	* Must be positive and less than or equal to input.length.
	*/
	@:overload @:protected private function new(fac : com.sun.tools.javac.parser.ScannerFactory, input : java.NativeArray<java.StdTypes.Char16>, inputLength : Int) : Void;
	
	/** The value of a literal token, recorded as a string.
	*  For integers, leading 0x and 'l' suffixes are suppressed.
	*/
	@:overload @:public public function stringVal() : String;
	
	/** Read token.
	*/
	@:overload @:public public function nextToken() : Void;
	
	/** Return the current token, set by nextToken().
	*/
	@:overload @:public public function token() : com.sun.tools.javac.parser.Token;
	
	/** Sets the current token.
	* This method is primarily used to update the token stream when the
	* parser is handling the end of nested type arguments such as
	* {@code List<List<String>>} and needs to disambiguate between
	* repeated use of ">" and relation operators such as ">>" and ">>>". Noting
	* that this does not handle arbitrary tokens containing Unicode escape
	* sequences.
	*/
	@:overload @:public public function token(token : com.sun.tools.javac.parser.Token) : Void;
	
	/** Return the current token's position: a 0-based
	*  offset from beginning of the raw input stream
	*  (before unicode translation)
	*/
	@:overload @:public public function pos() : Int;
	
	/** Return the last character position of the current token.
	*/
	@:overload @:public public function endPos() : Int;
	
	/** Return the last character position of the previous token.
	*/
	@:overload @:public public function prevEndPos() : Int;
	
	/** Return the position where a lexical error occurred;
	*/
	@:overload @:public public function errPos() : Int;
	
	/** Set the position where a lexical error occurred;
	*/
	@:overload @:public public function errPos(pos : Int) : Void;
	
	/** Return the name of an identifier or token for the current token.
	*/
	@:overload @:public public function name() : com.sun.tools.javac.util.Name;
	
	/** Return the radix of a numeric literal token.
	*/
	@:overload @:public public function radix() : Int;
	
	/** Has a @deprecated been encountered in last doc comment?
	*  This needs to be reset by client with resetDeprecatedFlag.
	*/
	@:overload @:public public function deprecatedFlag() : Bool;
	
	@:overload @:public public function resetDeprecatedFlag() : Void;
	
	/**
	* Returns the documentation string of the current token.
	*/
	@:overload @:public public function docComment() : String;
	
	/**
	* Returns a copy of the input buffer, up to its inputLength.
	* Unicode escape sequences are not translated.
	*/
	@:overload @:public public function getRawCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns a copy of a character array subset of the input buffer.
	* The returned array begins at the <code>beginIndex</code> and
	* extends to the character at index <code>endIndex - 1</code>.
	* Thus the length of the substring is <code>endIndex-beginIndex</code>.
	* This behavior is like
	* <code>String.substring(beginIndex, endIndex)</code>.
	* Unicode escape sequences are not translated.
	*
	* @param beginIndex the beginning index, inclusive.
	* @param endIndex the ending index, exclusive.
	* @throws IndexOutOfBounds if either offset is outside of the
	*         array bounds
	*/
	@:overload @:public public function getRawCharacters(beginIndex : Int, endIndex : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Called when a complete comment has been scanned. pos and endPos
	* will mark the comment boundary.
	*/
	@:overload @:protected private function processComment(style : com.sun.tools.javac.parser.Scanner.Scanner_CommentStyle) : Void;
	
	/**
	* Called when a complete whitespace run has been scanned. pos and endPos
	* will mark the whitespace boundary.
	*/
	@:overload @:protected private function processWhiteSpace() : Void;
	
	/**
	* Called when a line terminator has been processed.
	*/
	@:overload @:protected private function processLineTerminator() : Void;
	
	/** Build a map for translating between line numbers and
	* positions in the input.
	*
	* @return a LineMap */
	@:overload @:public public function getLineMap() : com.sun.tools.javac.util.Position.Position_LineMap;
	
	
}
@:native('com$sun$tools$javac$parser$Scanner$CommentStyle') extern enum Scanner_CommentStyle
{
	LINE;
	BLOCK;
	JAVADOC;
	
}

