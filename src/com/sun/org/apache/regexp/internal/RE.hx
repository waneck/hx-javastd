package com.sun.org.apache.regexp.internal;
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
extern class RE implements java.io.Serializable
{
	/**
	* Specifies normal, case-sensitive matching behaviour.
	*/
	@:public @:static @:final public static var MATCH_NORMAL(default, null) : Int;
	
	/**
	* Flag to indicate that matching should be case-independent (folded)
	*/
	@:public @:static @:final public static var MATCH_CASEINDEPENDENT(default, null) : Int;
	
	/**
	* Newlines should match as BOL/EOL (^ and $)
	*/
	@:public @:static @:final public static var MATCH_MULTILINE(default, null) : Int;
	
	/**
	* Consider all input a single body of text - newlines are matched by .
	*/
	@:public @:static @:final public static var MATCH_SINGLELINE(default, null) : Int;
	
	/**
	* Constructs a regular expression matcher from a String by compiling it
	* using a new instance of RECompiler.  If you will be compiling many
	* expressions, you may prefer to use a single RECompiler object instead.
	*
	* @param pattern The regular expression pattern to compile.
	* @exception RESyntaxException Thrown if the regular expression has invalid syntax.
	* @see RECompiler
	* @see recompile
	*/
	@:overload @:public public function new(pattern : String) : Void;
	
	/**
	* Constructs a regular expression matcher from a String by compiling it
	* using a new instance of RECompiler.  If you will be compiling many
	* expressions, you may prefer to use a single RECompiler object instead.
	*
	* @param pattern The regular expression pattern to compile.
	* @param matchFlags The matching style
	* @exception RESyntaxException Thrown if the regular expression has invalid syntax.
	* @see RECompiler
	* @see recompile
	*/
	@:overload @:public public function new(pattern : String, matchFlags : Int) : Void;
	
	/**
	* Construct a matcher for a pre-compiled regular expression from program
	* (bytecode) data.  Permits special flags to be passed in to modify matching
	* behaviour.
	*
	* @param program Compiled regular expression program (see RECompiler and/or recompile)
	* @param matchFlags One or more of the RE match behaviour flags (RE.MATCH_*):
	*
	* <pre>
	*   MATCH_NORMAL              // Normal (case-sensitive) matching
	*   MATCH_CASEINDEPENDENT     // Case folded comparisons
	*   MATCH_MULTILINE           // Newline matches as BOL/EOL
	* </pre>
	*
	* @see RECompiler
	* @see REProgram
	* @see recompile
	*/
	@:overload @:public public function new(program : com.sun.org.apache.regexp.internal.REProgram, matchFlags : Int) : Void;
	
	/**
	* Construct a matcher for a pre-compiled regular expression from program
	* (bytecode) data.
	*
	* @param program Compiled regular expression program
	* @see RECompiler
	* @see recompile
	*/
	@:overload @:public public function new(program : com.sun.org.apache.regexp.internal.REProgram) : Void;
	
	/**
	* Constructs a regular expression matcher with no initial program.
	* This is likely to be an uncommon practice, but is still supported.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Converts a 'simplified' regular expression to a full regular expression
	*
	* @param pattern The pattern to convert
	* @return The full regular expression
	*/
	@:overload @:public @:static public static function simplePatternToFullRegularExpression(pattern : String) : String;
	
	/**
	* Sets match behaviour flags which alter the way RE does matching.
	* @param matchFlags One or more of the RE match behaviour flags (RE.MATCH_*):
	*
	* <pre>
	*   MATCH_NORMAL              // Normal (case-sensitive) matching
	*   MATCH_CASEINDEPENDENT     // Case folded comparisons
	*   MATCH_MULTILINE           // Newline matches as BOL/EOL
	* </pre>
	*/
	@:overload @:public public function setMatchFlags(matchFlags : Int) : Void;
	
	/**
	* Returns the current match behaviour flags.
	* @return Current match behaviour flags (RE.MATCH_*).
	*
	* <pre>
	*   MATCH_NORMAL              // Normal (case-sensitive) matching
	*   MATCH_CASEINDEPENDENT     // Case folded comparisons
	*   MATCH_MULTILINE           // Newline matches as BOL/EOL
	* </pre>
	*
	* @see #setMatchFlags
	*/
	@:overload @:public public function getMatchFlags() : Int;
	
	/**
	* Sets the current regular expression program used by this matcher object.
	*
	* @param program Regular expression program compiled by RECompiler.
	* @see RECompiler
	* @see REProgram
	* @see recompile
	*/
	@:overload @:public public function setProgram(program : com.sun.org.apache.regexp.internal.REProgram) : Void;
	
	/**
	* Returns the current regular expression program in use by this matcher object.
	*
	* @return Regular expression program
	* @see #setProgram
	*/
	@:overload @:public public function getProgram() : com.sun.org.apache.regexp.internal.REProgram;
	
	/**
	* Returns the number of parenthesized subexpressions available after a successful match.
	*
	* @return Number of available parenthesized subexpressions
	*/
	@:overload @:public public function getParenCount() : Int;
	
	/**
	* Gets the contents of a parenthesized subexpression after a successful match.
	*
	* @param which Nesting level of subexpression
	* @return String
	*/
	@:overload @:public public function getParen(which : Int) : String;
	
	/**
	* Returns the start index of a given paren level.
	*
	* @param which Nesting level of subexpression
	* @return String index
	*/
	@:overload @:public @:final public function getParenStart(which : Int) : Int;
	
	/**
	* Returns the end index of a given paren level.
	*
	* @param which Nesting level of subexpression
	* @return String index
	*/
	@:overload @:public @:final public function getParenEnd(which : Int) : Int;
	
	/**
	* Returns the length of a given paren level.
	*
	* @param which Nesting level of subexpression
	* @return Number of characters in the parenthesized subexpression
	*/
	@:overload @:public @:final public function getParenLength(which : Int) : Int;
	
	/**
	* Sets the start of a paren level
	*
	* @param which Which paren level
	* @param i Index in input array
	*/
	@:overload @:protected @:final private function setParenStart(which : Int, i : Int) : Void;
	
	/**
	* Sets the end of a paren level
	*
	* @param which Which paren level
	* @param i Index in input array
	*/
	@:overload @:protected @:final private function setParenEnd(which : Int, i : Int) : Void;
	
	/**
	* Throws an Error representing an internal error condition probably resulting
	* from a bug in the regular expression compiler (or possibly data corruption).
	* In practice, this should be very rare.
	*
	* @param s Error description
	*/
	@:overload @:protected private function internalError(s : String) : Void;
	
	/**
	* Try to match a string against a subset of nodes in the program
	*
	* @param firstNode Node to start at in program
	* @param lastNode  Last valid node (used for matching a subexpression without
	*                  matching the rest of the program as well).
	* @param idxStart  Starting position in character array
	* @return Final input array index if match succeeded.  -1 if not.
	*/
	@:overload @:protected private function matchNodes(firstNode : Int, lastNode : Int, idxStart : Int) : Int;
	
	/**
	* Match the current regular expression program against the current
	* input string, starting at index i of the input string.  This method
	* is only meant for internal use.
	*
	* @param i The input string index to start matching at
	* @return True if the input matched the expression
	*/
	@:overload @:protected private function matchAt(i : Int) : Bool;
	
	/**
	* Matches the current regular expression program against a character array,
	* starting at a given index.
	*
	* @param search String to match against
	* @param i Index to start searching at
	* @return True if string matched
	*/
	@:overload @:public public function match(search : String, i : Int) : Bool;
	
	/**
	* Matches the current regular expression program against a character array,
	* starting at a given index.
	*
	* @param search String to match against
	* @param i Index to start searching at
	* @return True if string matched
	*/
	@:overload @:public public function match(search : com.sun.org.apache.regexp.internal.CharacterIterator, i : Int) : Bool;
	
	/**
	* Matches the current regular expression program against a String.
	*
	* @param search String to match against
	* @return True if string matched
	*/
	@:overload @:public public function match(search : String) : Bool;
	
	/**
	* Splits a string into an array of strings on regular expression boundaries.
	* This function works the same way as the Perl function of the same name.
	* Given a regular expression of "[ab]+" and a string to split of
	* "xyzzyababbayyzabbbab123", the result would be the array of Strings
	* "[xyzzy, yyz, 123]".
	*
	* <p>Please note that the first string in the resulting array may be an empty
	* string. This happens when the very first character of input string is
	* matched by the pattern.
	*
	* @param s String to split on this regular exression
	* @return Array of strings
	*/
	@:overload @:public public function split(s : String) : java.NativeArray<String>;
	
	/**
	* Flag bit that indicates that subst should replace all occurrences of this
	* regular expression.
	*/
	@:public @:static @:final public static var REPLACE_ALL(default, null) : Int;
	
	/**
	* Flag bit that indicates that subst should only replace the first occurrence
	* of this regular expression.
	*/
	@:public @:static @:final public static var REPLACE_FIRSTONLY(default, null) : Int;
	
	/**
	* Flag bit that indicates that subst should replace backreferences
	*/
	@:public @:static @:final public static var REPLACE_BACKREFERENCES(default, null) : Int;
	
	/**
	* Substitutes a string for this regular expression in another string.
	* This method works like the Perl function of the same name.
	* Given a regular expression of "a*b", a String to substituteIn of
	* "aaaabfooaaabgarplyaaabwackyb" and the substitution String "-", the
	* resulting String returned by subst would be "-foo-garply-wacky-".
	*
	* @param substituteIn String to substitute within
	* @param substitution String to substitute for all matches of this regular expression.
	* @return The string substituteIn with zero or more occurrences of the current
	* regular expression replaced with the substitution String (if this regular
	* expression object doesn't match at any position, the original String is returned
	* unchanged).
	*/
	@:overload @:public public function subst(substituteIn : String, substitution : String) : String;
	
	/**
	* Substitutes a string for this regular expression in another string.
	* This method works like the Perl function of the same name.
	* Given a regular expression of "a*b", a String to substituteIn of
	* "aaaabfooaaabgarplyaaabwackyb" and the substitution String "-", the
	* resulting String returned by subst would be "-foo-garply-wacky-".
	* <p>
	* It is also possible to reference the contents of a parenthesized expression
	* with $0, $1, ... $9. A regular expression of "http://[\\.\\w\\-\\?/~_@&=%]+",
	* a String to substituteIn of "visit us: http://www.apache.org!" and the
	* substitution String "&lt;a href=\"$0\"&gt;$0&lt;/a&gt;", the resulting String
	* returned by subst would be
	* "visit us: &lt;a href=\"http://www.apache.org\"&gt;http://www.apache.org&lt;/a&gt;!".
	* <p>
	* <i>Note:</i> $0 represents the whole match.
	*
	* @param substituteIn String to substitute within
	* @param substitution String to substitute for matches of this regular expression
	* @param flags One or more bitwise flags from REPLACE_*.  If the REPLACE_FIRSTONLY
	* flag bit is set, only the first occurrence of this regular expression is replaced.
	* If the bit is not set (REPLACE_ALL), all occurrences of this pattern will be
	* replaced. If the flag REPLACE_BACKREFERENCES is set, all backreferences will
	* be processed.
	* @return The string substituteIn with zero or more occurrences of the current
	* regular expression replaced with the substitution String (if this regular
	* expression object doesn't match at any position, the original String is returned
	* unchanged).
	*/
	@:overload @:public public function subst(substituteIn : String, substitution : String, flags : Int) : String;
	
	/**
	* Returns an array of Strings, whose toString representation matches a regular
	* expression. This method works like the Perl function of the same name.  Given
	* a regular expression of "a*b" and an array of String objects of [foo, aab, zzz,
	* aaaab], the array of Strings returned by grep would be [aab, aaaab].
	*
	* @param search Array of Objects to search
	* @return Array of Strings whose toString() value matches this regular expression.
	*/
	@:overload @:public public function grep(search : java.NativeArray<Dynamic>) : java.NativeArray<String>;
	
	
}
