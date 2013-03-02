package java.util.regex;
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
extern class Pattern implements java.io.Serializable
{
	/**
	* Enables Unix lines mode.
	*
	* <p> In this mode, only the <tt>'\n'</tt> line terminator is recognized
	* in the behavior of <tt>.</tt>, <tt>^</tt>, and <tt>$</tt>.
	*
	* <p> Unix lines mode can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?d)</tt>.
	*/
	public static var UNIX_LINES(default, null) : Int;
	
	/**
	* Enables case-insensitive matching.
	*
	* <p> By default, case-insensitive matching assumes that only characters
	* in the US-ASCII charset are being matched.  Unicode-aware
	* case-insensitive matching can be enabled by specifying the {@link
	* #UNICODE_CASE} flag in conjunction with this flag.
	*
	* <p> Case-insensitive matching can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?i)</tt>.
	*
	* <p> Specifying this flag may impose a slight performance penalty.  </p>
	*/
	public static var CASE_INSENSITIVE(default, null) : Int;
	
	/**
	* Permits whitespace and comments in pattern.
	*
	* <p> In this mode, whitespace is ignored, and embedded comments starting
	* with <tt>#</tt> are ignored until the end of a line.
	*
	* <p> Comments mode can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?x)</tt>.
	*/
	public static var COMMENTS(default, null) : Int;
	
	/**
	* Enables multiline mode.
	*
	* <p> In multiline mode the expressions <tt>^</tt> and <tt>$</tt> match
	* just after or just before, respectively, a line terminator or the end of
	* the input sequence.  By default these expressions only match at the
	* beginning and the end of the entire input sequence.
	*
	* <p> Multiline mode can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?m)</tt>.  </p>
	*/
	public static var MULTILINE(default, null) : Int;
	
	/**
	* Enables literal parsing of the pattern.
	*
	* <p> When this flag is specified then the input string that specifies
	* the pattern is treated as a sequence of literal characters.
	* Metacharacters or escape sequences in the input sequence will be
	* given no special meaning.
	*
	* <p>The flags CASE_INSENSITIVE and UNICODE_CASE retain their impact on
	* matching when used in conjunction with this flag. The other flags
	* become superfluous.
	*
	* <p> There is no embedded flag character for enabling literal parsing.
	* @since 1.5
	*/
	@:require(java5) public static var LITERAL(default, null) : Int;
	
	/**
	* Enables dotall mode.
	*
	* <p> In dotall mode, the expression <tt>.</tt> matches any character,
	* including a line terminator.  By default this expression does not match
	* line terminators.
	*
	* <p> Dotall mode can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?s)</tt>.  (The <tt>s</tt> is a mnemonic for
	* "single-line" mode, which is what this is called in Perl.)  </p>
	*/
	public static var DOTALL(default, null) : Int;
	
	/**
	* Enables Unicode-aware case folding.
	*
	* <p> When this flag is specified then case-insensitive matching, when
	* enabled by the {@link #CASE_INSENSITIVE} flag, is done in a manner
	* consistent with the Unicode Standard.  By default, case-insensitive
	* matching assumes that only characters in the US-ASCII charset are being
	* matched.
	*
	* <p> Unicode-aware case folding can also be enabled via the embedded flag
	* expression&nbsp;<tt>(?u)</tt>.
	*
	* <p> Specifying this flag may impose a performance penalty.  </p>
	*/
	public static var UNICODE_CASE(default, null) : Int;
	
	/**
	* Enables canonical equivalence.
	*
	* <p> When this flag is specified then two characters will be considered
	* to match if, and only if, their full canonical decompositions match.
	* The expression <tt>"a&#92;u030A"</tt>, for example, will match the
	* string <tt>"&#92;u00E5"</tt> when this flag is specified.  By default,
	* matching does not take canonical equivalence into account.
	*
	* <p> There is no embedded flag character for enabling canonical
	* equivalence.
	*
	* <p> Specifying this flag may impose a performance penalty.  </p>
	*/
	public static var CANON_EQ(default, null) : Int;
	
	/**
	* Enables the Unicode version of <i>Predefined character classes</i> and
	* <i>POSIX character classes</i>.
	*
	* <p> When this flag is specified then the (US-ASCII only)
	* <i>Predefined character classes</i> and <i>POSIX character classes</i>
	* are in conformance with
	* <a href="http://www.unicode.org/reports/tr18/"><i>Unicode Technical
	* Standard #18: Unicode Regular Expression</i></a>
	* <i>Annex C: Compatibility Properties</i>.
	* <p>
	* The UNICODE_CHARACTER_CLASS mode can also be enabled via the embedded
	* flag expression&nbsp;<tt>(?U)</tt>.
	* <p>
	* The flag implies UNICODE_CASE, that is, it enables Unicode-aware case
	* folding.
	* <p>
	* Specifying this flag may impose a performance penalty.  </p>
	* @since 1.7
	*/
	@:require(java7) public static var UNICODE_CHARACTER_CLASS(default, null) : Int;
	
	/**
	* Compiles the given regular expression into a pattern.  </p>
	*
	* @param  regex
	*         The expression to be compiled
	*
	* @throws  PatternSyntaxException
	*          If the expression's syntax is invalid
	*/
	@:native('compile') @:overload public static function _compile(regex : String) : java.util.regex.Pattern;
	
	/**
	* Compiles the given regular expression into a pattern with the given
	* flags.  </p>
	*
	* @param  regex
	*         The expression to be compiled
	*
	* @param  flags
	*         Match flags, a bit mask that may include
	*         {@link #CASE_INSENSITIVE}, {@link #MULTILINE}, {@link #DOTALL},
	*         {@link #UNICODE_CASE}, {@link #CANON_EQ}, {@link #UNIX_LINES},
	*         {@link #LITERAL}, {@link #UNICODE_CHARACTER_CLASS}
	*         and {@link #COMMENTS}
	*
	* @throws  IllegalArgumentException
	*          If bit values other than those corresponding to the defined
	*          match flags are set in <tt>flags</tt>
	*
	* @throws  PatternSyntaxException
	*          If the expression's syntax is invalid
	*/
	@:native('compile') @:overload public static function _compile(regex : String, flags : Int) : java.util.regex.Pattern;
	
	/**
	* Returns the regular expression from which this pattern was compiled.
	* </p>
	*
	* @return  The source of this pattern
	*/
	@:overload public function pattern() : String;
	
	/**
	* <p>Returns the string representation of this pattern. This
	* is the regular expression from which this pattern was
	* compiled.</p>
	*
	* @return  The string representation of this pattern
	* @since 1.5
	*/
	@:require(java5) @:overload public function toString() : String;
	
	/**
	* Creates a matcher that will match the given input against this pattern.
	* </p>
	*
	* @param  input
	*         The character sequence to be matched
	*
	* @return  A new matcher for this pattern
	*/
	@:overload public function matcher(input : java.lang.CharSequence) : java.util.regex.Matcher;
	
	/**
	* Returns this pattern's match flags.  </p>
	*
	* @return  The match flags specified when this pattern was compiled
	*/
	@:overload public function flags() : Int;
	
	/**
	* Compiles the given regular expression and attempts to match the given
	* input against it.
	*
	* <p> An invocation of this convenience method of the form
	*
	* <blockquote><pre>
	* Pattern.matches(regex, input);</pre></blockquote>
	*
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* Pattern.compile(regex).matcher(input).matches()</pre></blockquote>
	*
	* <p> If a pattern is to be used multiple times, compiling it once and reusing
	* it will be more efficient than invoking this method each time.  </p>
	*
	* @param  regex
	*         The expression to be compiled
	*
	* @param  input
	*         The character sequence to be matched
	*
	* @throws  PatternSyntaxException
	*          If the expression's syntax is invalid
	*/
	@:overload public static function matches(regex : String, input : java.lang.CharSequence) : Bool;
	
	/**
	* Splits the given input sequence around matches of this pattern.
	*
	* <p> The array returned by this method contains each substring of the
	* input sequence that is terminated by another subsequence that matches
	* this pattern or is terminated by the end of the input sequence.  The
	* substrings in the array are in the order in which they occur in the
	* input.  If this pattern does not match any subsequence of the input then
	* the resulting array has just one element, namely the input sequence in
	* string form.
	*
	* <p> The <tt>limit</tt> parameter controls the number of times the
	* pattern is applied and therefore affects the length of the resulting
	* array.  If the limit <i>n</i> is greater than zero then the pattern
	* will be applied at most <i>n</i>&nbsp;-&nbsp;1 times, the array's
	* length will be no greater than <i>n</i>, and the array's last entry
	* will contain all input beyond the last matched delimiter.  If <i>n</i>
	* is non-positive then the pattern will be applied as many times as
	* possible and the array can have any length.  If <i>n</i> is zero then
	* the pattern will be applied as many times as possible, the array can
	* have any length, and trailing empty strings will be discarded.
	*
	* <p> The input <tt>"boo:and:foo"</tt>, for example, yields the following
	* results with these parameters:
	*
	* <blockquote><table cellpadding=1 cellspacing=0
	*              summary="Split examples showing regex, limit, and result">
	* <tr><th><P align="left"><i>Regex&nbsp;&nbsp;&nbsp;&nbsp;</i></th>
	*     <th><P align="left"><i>Limit&nbsp;&nbsp;&nbsp;&nbsp;</i></th>
	*     <th><P align="left"><i>Result&nbsp;&nbsp;&nbsp;&nbsp;</i></th></tr>
	* <tr><td align=center>:</td>
	*     <td align=center>2</td>
	*     <td><tt>{ "boo", "and:foo" }</tt></td></tr>
	* <tr><td align=center>:</td>
	*     <td align=center>5</td>
	*     <td><tt>{ "boo", "and", "foo" }</tt></td></tr>
	* <tr><td align=center>:</td>
	*     <td align=center>-2</td>
	*     <td><tt>{ "boo", "and", "foo" }</tt></td></tr>
	* <tr><td align=center>o</td>
	*     <td align=center>5</td>
	*     <td><tt>{ "b", "", ":and:f", "", "" }</tt></td></tr>
	* <tr><td align=center>o</td>
	*     <td align=center>-2</td>
	*     <td><tt>{ "b", "", ":and:f", "", "" }</tt></td></tr>
	* <tr><td align=center>o</td>
	*     <td align=center>0</td>
	*     <td><tt>{ "b", "", ":and:f" }</tt></td></tr>
	* </table></blockquote>
	*
	*
	* @param  input
	*         The character sequence to be split
	*
	* @param  limit
	*         The result threshold, as described above
	*
	* @return  The array of strings computed by splitting the input
	*          around matches of this pattern
	*/
	@:overload public function split(input : java.lang.CharSequence, limit : Int) : java.NativeArray<String>;
	
	/**
	* Splits the given input sequence around matches of this pattern.
	*
	* <p> This method works as if by invoking the two-argument {@link
	* #split(java.lang.CharSequence, int) split} method with the given input
	* sequence and a limit argument of zero.  Trailing empty strings are
	* therefore not included in the resulting array. </p>
	*
	* <p> The input <tt>"boo:and:foo"</tt>, for example, yields the following
	* results with these expressions:
	*
	* <blockquote><table cellpadding=1 cellspacing=0
	*              summary="Split examples showing regex and result">
	* <tr><th><P align="left"><i>Regex&nbsp;&nbsp;&nbsp;&nbsp;</i></th>
	*     <th><P align="left"><i>Result</i></th></tr>
	* <tr><td align=center>:</td>
	*     <td><tt>{ "boo", "and", "foo" }</tt></td></tr>
	* <tr><td align=center>o</td>
	*     <td><tt>{ "b", "", ":and:f" }</tt></td></tr>
	* </table></blockquote>
	*
	*
	* @param  input
	*         The character sequence to be split
	*
	* @return  The array of strings computed by splitting the input
	*          around matches of this pattern
	*/
	@:overload public function split(input : java.lang.CharSequence) : java.NativeArray<String>;
	
	/**
	* Returns a literal pattern <code>String</code> for the specified
	* <code>String</code>.
	*
	* <p>This method produces a <code>String</code> that can be used to
	* create a <code>Pattern</code> that would match the string
	* <code>s</code> as if it were a literal pattern.</p> Metacharacters
	* or escape sequences in the input sequence will be given no special
	* meaning.
	*
	* @param  s The string to be literalized
	* @return  A literal string replacement
	* @since 1.5
	*/
	@:require(java5) @:overload public static function quote(s : String) : String;
	
	
}
/**
* Used to accumulate information about a subtree of the object graph
* so that optimizations can be applied to the subtree.
*/
@:native('java$util$regex$Pattern$TreeInfo') @:internal extern class Pattern_TreeInfo
{
	
}
/**
*  Creates a bit vector for matching Latin-1 values. A normal BitClass
*  never matches values above Latin-1, and a complemented BitClass always
*  matches values above Latin-1.
*/
@:native('java$util$regex$Pattern$BitClass') @:internal extern class Pattern_BitClass extends java.util.regex.Pattern.Pattern_BmpCharProperty
{
	
}
/**
* Base class for all node classes. Subclasses should override the match()
* method as appropriate. This class is an accepting node, so its match()
* always returns true.
*/
@:native('java$util$regex$Pattern$Node') @:internal extern class Pattern_Node
{
	
}
@:native('java$util$regex$Pattern$LastNode') @:internal extern class Pattern_LastNode extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Used for REs that can start anywhere within the input string.
* This basically tries to match repeatedly at each spot in the
* input string, moving forward after each try. An anchored search
* or a BnM will bypass this node completely.
*/
@:native('java$util$regex$Pattern$Start') @:internal extern class Pattern_Start extends java.util.regex.Pattern.Pattern_Node
{
	
}
/*
* StartS supports supplementary characters, including unpaired surrogates.
*/
@:native('java$util$regex$Pattern$StartS') @:internal extern class Pattern_StartS extends java.util.regex.Pattern.Pattern_Start
{
	
}
/**
* Node to anchor at the beginning of input. This object implements the
* match for a \A sequence, and the caret anchor will use this if not in
* multiline mode.
*/
@:native('java$util$regex$Pattern$Begin') @:internal extern class Pattern_Begin extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to anchor at the end of input. This is the absolute end, so this
* should not match at the last newline before the end as $ will.
*/
@:native('java$util$regex$Pattern$End') @:internal extern class Pattern_End extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to anchor at the beginning of a line. This is essentially the
* object to match for the multiline ^.
*/
@:native('java$util$regex$Pattern$Caret') @:internal extern class Pattern_Caret extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to anchor at the beginning of a line when in unixdot mode.
*/
@:native('java$util$regex$Pattern$UnixCaret') @:internal extern class Pattern_UnixCaret extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to match the location where the last match ended.
* This is used for the \G construct.
*/
@:native('java$util$regex$Pattern$LastMatch') @:internal extern class Pattern_LastMatch extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to anchor at the end of a line or the end of input based on the
* multiline mode.
*
* When not in multiline mode, the $ can only match at the very end
* of the input, unless the input ends in a line terminator in which
* it matches right before the last line terminator.
*
* Note that \r\n is considered an atomic line terminator.
*
* Like ^ the $ operator matches at a position, it does not match the
* line terminators themselves.
*/
@:native('java$util$regex$Pattern$Dollar') @:internal extern class Pattern_Dollar extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node to anchor at the end of a line or the end of input based on the
* multiline mode when in unix lines mode.
*/
@:native('java$util$regex$Pattern$UnixDollar') @:internal extern class Pattern_UnixDollar extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Abstract node class to match one character satisfying some
* boolean property.
*/
@:native('java$util$regex$Pattern$CharProperty') @:internal extern class Pattern_CharProperty extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Optimized version of CharProperty that works only for
* properties never satisfied by Supplementary characters.
*/
@:native('java$util$regex$Pattern$BmpCharProperty') @:internal extern class Pattern_BmpCharProperty extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a Supplementary Unicode character
*/
@:native('java$util$regex$Pattern$SingleS') @:internal extern class Pattern_SingleS extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Optimization -- matches a given BMP character
*/
@:native('java$util$regex$Pattern$Single') @:internal extern class Pattern_Single extends java.util.regex.Pattern.Pattern_BmpCharProperty
{
	
}
/**
* Case insensitive matches a given BMP character
*/
@:native('java$util$regex$Pattern$SingleI') @:internal extern class Pattern_SingleI extends java.util.regex.Pattern.Pattern_BmpCharProperty
{
	
}
/**
* Unicode case insensitive matches a given Unicode character
*/
@:native('java$util$regex$Pattern$SingleU') @:internal extern class Pattern_SingleU extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a Unicode block.
*/
@:native('java$util$regex$Pattern$Block') @:internal extern class Pattern_Block extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a Unicode script
*/
@:native('java$util$regex$Pattern$Script') @:internal extern class Pattern_Script extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a Unicode category.
*/
@:native('java$util$regex$Pattern$Category') @:internal extern class Pattern_Category extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a Unicode "type"
*/
@:native('java$util$regex$Pattern$Utype') @:internal extern class Pattern_Utype extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class that matches a POSIX type.
*/
@:native('java$util$regex$Pattern$Ctype') @:internal extern class Pattern_Ctype extends java.util.regex.Pattern.Pattern_BmpCharProperty
{
	
}
/**
* Base class for all Slice nodes
*/
@:native('java$util$regex$Pattern$SliceNode') @:internal extern class Pattern_SliceNode extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Node class for a case sensitive/BMP-only sequence of literal
* characters.
*/
@:native('java$util$regex$Pattern$Slice') @:internal extern class Pattern_Slice extends java.util.regex.Pattern.Pattern_SliceNode
{
	
}
/**
* Node class for a case_insensitive/BMP-only sequence of literal
* characters.
*/
@:native('java$util$regex$Pattern$SliceI') @:internal extern class Pattern_SliceI extends java.util.regex.Pattern.Pattern_SliceNode
{
	
}
/**
* Node class for a unicode_case_insensitive/BMP-only sequence of
* literal characters. Uses unicode case folding.
*/
@:native('java$util$regex$Pattern$SliceU') @:internal extern class Pattern_SliceU extends java.util.regex.Pattern.Pattern_SliceNode
{
	
}
/**
* Node class for a case sensitive sequence of literal characters
* including supplementary characters.
*/
@:native('java$util$regex$Pattern$SliceS') @:internal extern class Pattern_SliceS extends java.util.regex.Pattern.Pattern_SliceNode
{
	
}
/**
* Node class for a case insensitive sequence of literal characters
* including supplementary characters.
*/
@:native('java$util$regex$Pattern$SliceIS') @:internal extern class Pattern_SliceIS extends java.util.regex.Pattern.Pattern_SliceNode
{
	
}
/**
* Node class for a case insensitive sequence of literal characters.
* Uses unicode case folding.
*/
@:native('java$util$regex$Pattern$SliceUS') @:internal extern class Pattern_SliceUS extends java.util.regex.Pattern.Pattern_SliceIS
{
	
}
/**
* Implements the Unicode category ALL and the dot metacharacter when
* in dotall mode.
*/
@:native('java$util$regex$Pattern$All') @:internal extern class Pattern_All extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class for the dot metacharacter when dotall is not enabled.
*/
@:native('java$util$regex$Pattern$Dot') @:internal extern class Pattern_Dot extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* Node class for the dot metacharacter when dotall is not enabled
* but UNIX_LINES is enabled.
*/
@:native('java$util$regex$Pattern$UnixDot') @:internal extern class Pattern_UnixDot extends java.util.regex.Pattern.Pattern_CharProperty
{
	
}
/**
* The 0 or 1 quantifier. This one class implements all three types.
*/
@:native('java$util$regex$Pattern$Ques') @:internal extern class Pattern_Ques extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Handles the curly-brace style repetition with a specified minimum and
* maximum occurrences. The * quantifier is handled as a special case.
* This class handles the three types.
*/
@:native('java$util$regex$Pattern$Curly') @:internal extern class Pattern_Curly extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Handles the curly-brace style repetition with a specified minimum and
* maximum occurrences in deterministic cases. This is an iterative
* optimization over the Prolog and Loop system which would handle this
* in a recursive way. The * quantifier is handled as a special case.
* If capture is true then this class saves group settings and ensures
* that groups are unset when backing off of a group match.
*/
@:native('java$util$regex$Pattern$GroupCurly') @:internal extern class Pattern_GroupCurly extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* A Guard node at the end of each atom node in a Branch. It
* serves the purpose of chaining the "match" operation to
* "next" but not the "study", so we can collect the TreeInfo
* of each atom node without including the TreeInfo of the
* "next".
*/
@:native('java$util$regex$Pattern$BranchConn') @:internal extern class Pattern_BranchConn extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Handles the branching of alternations. Note this is also used for
* the ? quantifier to branch between the case where it matches once
* and where it does not occur.
*/
@:native('java$util$regex$Pattern$Branch') @:internal extern class Pattern_Branch extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* The GroupHead saves the location where the group begins in the locals
* and restores them when the match is done.
*
* The matchRef is used when a reference to this group is accessed later
* in the expression. The locals will have a negative value in them to
* indicate that we do not want to unset the group if the reference
* doesn't match.
*/
@:native('java$util$regex$Pattern$GroupHead') @:internal extern class Pattern_GroupHead extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Recursive reference to a group in the regular expression. It calls
* matchRef because if the reference fails to match we would not unset
* the group.
*/
@:native('java$util$regex$Pattern$GroupRef') @:internal extern class Pattern_GroupRef extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* The GroupTail handles the setting of group beginning and ending
* locations when groups are successfully matched. It must also be able to
* unset groups that have to be backed off of.
*
* The GroupTail node is also used when a previous group is referenced,
* and in that case no group information needs to be set.
*/
@:native('java$util$regex$Pattern$GroupTail') @:internal extern class Pattern_GroupTail extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* This sets up a loop to handle a recursive quantifier structure.
*/
@:native('java$util$regex$Pattern$Prolog') @:internal extern class Pattern_Prolog extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Handles the repetition count for a greedy Curly. The matchInit
* is called from the Prolog to save the index of where the group
* beginning is stored. A zero length group check occurs in the
* normal match but is skipped in the matchInit.
*/
@:native('java$util$regex$Pattern$Loop') @:internal extern class Pattern_Loop extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Handles the repetition count for a reluctant Curly. The matchInit
* is called from the Prolog to save the index of where the group
* beginning is stored. A zero length group check occurs in the
* normal match but is skipped in the matchInit.
*/
@:native('java$util$regex$Pattern$LazyLoop') @:internal extern class Pattern_LazyLoop extends java.util.regex.Pattern.Pattern_Loop
{
	
}
/**
* Refers to a group in the regular expression. Attempts to match
* whatever the group referred to last matched.
*/
@:native('java$util$regex$Pattern$BackRef') @:internal extern class Pattern_BackRef extends java.util.regex.Pattern.Pattern_Node
{
	
}
@:native('java$util$regex$Pattern$CIBackRef') @:internal extern class Pattern_CIBackRef extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Searches until the next instance of its atom. This is useful for
* finding the atom efficiently without passing an instance of it
* (greedy problem) and without a lot of wasted search time (reluctant
* problem).
*/
@:native('java$util$regex$Pattern$First') @:internal extern class Pattern_First extends java.util.regex.Pattern.Pattern_Node
{
	
}
@:native('java$util$regex$Pattern$Conditional') @:internal extern class Pattern_Conditional extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Zero width positive lookahead.
*/
@:native('java$util$regex$Pattern$Pos') @:internal extern class Pattern_Pos extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Zero width negative lookahead.
*/
@:native('java$util$regex$Pattern$Neg') @:internal extern class Pattern_Neg extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Zero width positive lookbehind.
*/
@:native('java$util$regex$Pattern$Behind') @:internal extern class Pattern_Behind extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Zero width positive lookbehind, including supplementary
* characters or unpaired surrogates.
*/
@:native('java$util$regex$Pattern$BehindS') @:internal extern class Pattern_BehindS extends java.util.regex.Pattern.Pattern_Behind
{
	
}
/**
* Zero width negative lookbehind.
*/
@:native('java$util$regex$Pattern$NotBehind') @:internal extern class Pattern_NotBehind extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Zero width negative lookbehind, including supplementary
* characters or unpaired surrogates.
*/
@:native('java$util$regex$Pattern$NotBehindS') @:internal extern class Pattern_NotBehindS extends java.util.regex.Pattern.Pattern_NotBehind
{
	
}
/**
* Handles word boundaries. Includes a field to allow this one class to
* deal with the different types of word boundaries we can match. The word
* characters include underscores, letters, and digits. Non spacing marks
* can are also part of a word if they have a base character, otherwise
* they are ignored for purposes of finding word boundaries.
*/
@:native('java$util$regex$Pattern$Bound') @:internal extern class Pattern_Bound extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Attempts to match a slice in the input using the Boyer-Moore string
* matching algorithm. The algorithm is based on the idea that the
* pattern can be shifted farther ahead in the search text if it is
* matched right to left.
* <p>
* The pattern is compared to the input one character at a time, from
* the rightmost character in the pattern to the left. If the characters
* all match the pattern has been found. If a character does not match,
* the pattern is shifted right a distance that is the maximum of two
* functions, the bad character shift and the good suffix shift. This
* shift moves the attempted match position through the input more
* quickly than a naive one position at a time check.
* <p>
* The bad character shift is based on the character from the text that
* did not match. If the character does not appear in the pattern, the
* pattern can be shifted completely beyond the bad character. If the
* character does occur in the pattern, the pattern can be shifted to
* line the pattern up with the next occurrence of that character.
* <p>
* The good suffix shift is based on the idea that some subset on the right
* side of the pattern has matched. When a bad character is found, the
* pattern can be shifted right by the pattern length if the subset does
* not occur again in pattern, or by the amount of distance to the
* next occurrence of the subset in the pattern.
*
* Boyer-Moore search methods adapted from code by Amy Yu.
*/
@:native('java$util$regex$Pattern$BnM') @:internal extern class Pattern_BnM extends java.util.regex.Pattern.Pattern_Node
{
	
}
/**
* Supplementary support version of BnM(). Unpaired surrogates are
* also handled by this class.
*/
@:native('java$util$regex$Pattern$BnMS') @:internal extern class Pattern_BnMS extends java.util.regex.Pattern.Pattern_BnM
{
	
}
@:native('java$util$regex$Pattern$CharPropertyNames') @:internal extern class Pattern_CharPropertyNames
{
	
}
@:native('java$util$regex$Pattern$CharPropertyNames$CharPropertyFactory') @:internal extern class Pattern_CharPropertyNames_CharPropertyFactory
{
	
}
@:native('java$util$regex$Pattern$CharPropertyNames$CloneableProperty') @:internal extern class Pattern_CharPropertyNames_CloneableProperty extends java.util.regex.Pattern.Pattern_CharProperty implements java.lang.Cloneable
{
	@:overload override public function clone() : java.util.regex.Pattern.Pattern_CharPropertyNames_CloneableProperty;
	
	
}
