package com.sun.tools.javac.parser;
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
extern interface Lexer
{
	/**
	* Has a @deprecated been encountered in last doc comment?
	* This needs to be reset by client with resetDeprecatedFlag.
	*/
	@:overload public function deprecatedFlag() : Bool;
	
	@:overload public function resetDeprecatedFlag() : Void;
	
	/**
	* Returns the documentation string of the current token.
	*/
	@:overload public function docComment() : String;
	
	/**
	* Return the last character position of the current token.
	*/
	@:overload public function endPos() : Int;
	
	/**
	* Return the position where a lexical error occurred;
	*/
	@:overload public function errPos() : Int;
	
	/**
	* Set the position where a lexical error occurred;
	*/
	@:overload public function errPos(pos : Int) : Void;
	
	/**
	* Build a map for translating between line numbers and
	* positions in the input.
	*
	* @return a LineMap
	*/
	@:overload public function getLineMap() : com.sun.tools.javac.util.Position.Position_LineMap;
	
	/**
	* Returns a copy of the input buffer, up to its inputLength.
	* Unicode escape sequences are not translated.
	*/
	@:overload public function getRawCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
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
	@:overload public function getRawCharacters(beginIndex : Int, endIndex : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Return the name of an identifier or token for the current token.
	*/
	@:overload public function name() : com.sun.tools.javac.util.Name;
	
	/**
	* Read token.
	*/
	@:overload public function nextToken() : Void;
	
	/**
	* Return the current token's position: a 0-based
	*  offset from beginning of the raw input stream
	*  (before unicode translation)
	*/
	@:overload public function pos() : Int;
	
	/**
	* Return the last character position of the previous token.
	*/
	@:overload public function prevEndPos() : Int;
	
	/**
	* Return the radix of a numeric literal token.
	*/
	@:overload public function radix() : Int;
	
	/**
	* The value of a literal token, recorded as a string.
	*  For integers, leading 0x and 'l' suffixes are suppressed.
	*/
	@:overload public function stringVal() : String;
	
	/**
	* Return the current token, set by nextToken().
	*/
	@:overload public function token() : com.sun.tools.javac.parser.Token;
	
	/**
	* Sets the current token.
	*/
	@:overload public function token(token : com.sun.tools.javac.parser.Token) : Void;
	
	
}
