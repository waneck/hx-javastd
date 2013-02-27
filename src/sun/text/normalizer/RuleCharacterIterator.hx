package sun.text.normalizer;
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
/*
**********************************************************************
* Author: Alan Liu
* Created: September 23 2003
* Since: ICU 2.8
**********************************************************************
*/
extern class RuleCharacterIterator
{
	/**
	* Value returned when there are no more characters to iterate.
	*/
	public static var DONE(default, null) : Int;
	
	/**
	* Bitmask option to enable parsing of variable names.  If (options &
	* PARSE_VARIABLES) != 0, then an embedded variable will be expanded to
	* its value.  Variables are parsed using the SymbolTable API.
	*/
	public static var PARSE_VARIABLES(default, null) : Int;
	
	/**
	* Bitmask option to enable parsing of escape sequences.  If (options &
	* PARSE_ESCAPES) != 0, then an embedded escape sequence will be expanded
	* to its value.  Escapes are parsed using Utility.unescapeAt().
	*/
	public static var PARSE_ESCAPES(default, null) : Int;
	
	/**
	* Bitmask option to enable skipping of whitespace.  If (options &
	* SKIP_WHITESPACE) != 0, then whitespace characters will be silently
	* skipped, as if they were not present in the input.  Whitespace
	* characters are defined by UCharacterProperty.isRuleWhiteSpace().
	*/
	public static var SKIP_WHITESPACE(default, null) : Int;
	
	/**
	* Constructs an iterator over the given text, starting at the given
	* position.
	* @param text the text to be iterated
	* @param sym the symbol table, or null if there is none.  If sym is null,
	* then variables will not be deferenced, even if the PARSE_VARIABLES
	* option is set.
	* @param pos upon input, the index of the next character to return.  If a
	* variable has been dereferenced, then pos will <em>not</em> increment as
	* characters of the variable value are iterated.
	*/
	@:overload public function new(text : String, sym : sun.text.normalizer.SymbolTable, pos : java.text.ParsePosition) : Void;
	
	/**
	* Returns true if this iterator has no more characters to return.
	*/
	@:overload public function atEnd() : Bool;
	
	/**
	* Returns the next character using the given options, or DONE if there
	* are no more characters, and advance the position to the next
	* character.
	* @param options one or more of the following options, bitwise-OR-ed
	* together: PARSE_VARIABLES, PARSE_ESCAPES, SKIP_WHITESPACE.
	* @return the current 32-bit code point, or DONE
	*/
	@:overload public function next(options : Int) : Int;
	
	/**
	* Returns true if the last character returned by next() was
	* escaped.  This will only be the case if the option passed in to
	* next() included PARSE_ESCAPED and the next character was an
	* escape sequence.
	*/
	@:overload public function isEscaped() : Bool;
	
	/**
	* Returns true if this iterator is currently within a variable expansion.
	*/
	@:overload public function inVariable() : Bool;
	
	/**
	* Returns an object which, when later passed to setPos(), will
	* restore this iterator's position.  Usage idiom:
	*
	* RuleCharacterIterator iterator = ...;
	* Object pos = iterator.getPos(null); // allocate position object
	* for (;;) {
	*   pos = iterator.getPos(pos); // reuse position object
	*   int c = iterator.next(...);
	*   ...
	* }
	* iterator.setPos(pos);
	*
	* @param p a position object previously returned by getPos(),
	* or null.  If not null, it will be updated and returned.  If
	* null, a new position object will be allocated and returned.
	* @return a position object which may be passed to setPos(),
	* either `p,' or if `p' == null, a newly-allocated object
	*/
	@:overload public function getPos(p : Dynamic) : Dynamic;
	
	/**
	* Restores this iterator to the position it had when getPos()
	* returned the given object.
	* @param p a position object previously returned by getPos()
	*/
	@:overload public function setPos(p : Dynamic) : Void;
	
	/**
	* Skips ahead past any ignored characters, as indicated by the given
	* options.  This is useful in conjunction with the lookahead() method.
	*
	* Currently, this only has an effect for SKIP_WHITESPACE.
	* @param options one or more of the following options, bitwise-OR-ed
	* together: PARSE_VARIABLES, PARSE_ESCAPES, SKIP_WHITESPACE.
	*/
	@:overload public function skipIgnored(options : Int) : Void;
	
	/**
	* Returns a string containing the remainder of the characters to be
	* returned by this iterator, without any option processing.  If the
	* iterator is currently within a variable expansion, this will only
	* extend to the end of the variable expansion.  This method is provided
	* so that iterators may interoperate with string-based APIs.  The typical
	* sequence of calls is to call skipIgnored(), then call lookahead(), then
	* parse the string returned by lookahead(), then call jumpahead() to
	* resynchronize the iterator.
	* @return a string containing the characters to be returned by future
	* calls to next()
	*/
	@:overload public function lookahead() : String;
	
	/**
	* Advances the position by the given number of 16-bit code units.
	* This is useful in conjunction with the lookahead() method.
	* @param count the number of 16-bit code units to jump over
	*/
	@:overload public function jumpahead(count : Int) : Void;
	
	
}
