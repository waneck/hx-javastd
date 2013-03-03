package com.sun.org.apache.xerces.internal.impl.xpath.regex;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class RegularExpression implements java.io.Serializable
{
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @return true if the target is matched to this regular expression.
	*/
	@:overload @:public public function matches(target : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern
	* in specified range or not.
	*
	* @param start Start offset of the range.
	* @param end  End offset +1 of the range.
	* @return true if the target is matched to this regular expression.
	*/
	@:overload @:public public function matches(target : java.NativeArray<java.StdTypes.Char16>, start : Int, end : Int) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @param match A Match instance for storing matching result.
	* @return Offset of the start position in <VAR>target</VAR>; or -1 if not match.
	*/
	@:overload @:public public function matches(target : java.NativeArray<java.StdTypes.Char16>, match : com.sun.org.apache.xerces.internal.impl.xpath.regex.Match) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern
	* in specified range or not.
	*
	* @param start Start offset of the range.
	* @param end  End offset +1 of the range.
	* @param match A Match instance for storing matching result.
	* @return Offset of the start position in <VAR>target</VAR>; or -1 if not match.
	*/
	@:overload @:public public function matches(target : java.NativeArray<java.StdTypes.Char16>, start : Int, end : Int, match : com.sun.org.apache.xerces.internal.impl.xpath.regex.Match) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @return true if the target is matched to this regular expression.
	*/
	@:overload @:public public function matches(target : String) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern
	* in specified range or not.
	*
	* @param start Start offset of the range.
	* @param end  End offset +1 of the range.
	* @return true if the target is matched to this regular expression.
	*/
	@:overload @:public public function matches(target : String, start : Int, end : Int) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @param match A Match instance for storing matching result.
	* @return Offset of the start position in <VAR>target</VAR>; or -1 if not match.
	*/
	@:overload @:public public function matches(target : String, match : com.sun.org.apache.xerces.internal.impl.xpath.regex.Match) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern
	* in specified range or not.
	*
	* @param start Start offset of the range.
	* @param end  End offset +1 of the range.
	* @param match A Match instance for storing matching result.
	* @return Offset of the start position in <VAR>target</VAR>; or -1 if not match.
	*/
	@:overload @:public public function matches(target : String, start : Int, end : Int, match : com.sun.org.apache.xerces.internal.impl.xpath.regex.Match) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @return true if the target is matched to this regular expression.
	*/
	@:overload @:public public function matches(target : java.text.CharacterIterator) : Bool;
	
	/**
	* Checks whether the <var>target</var> text <strong>contains</strong> this pattern or not.
	*
	* @param match A Match instance for storing matching result.
	* @return Offset of the start position in <VAR>target</VAR>; or -1 if not match.
	*/
	@:overload @:public public function matches(target : java.text.CharacterIterator, match : com.sun.org.apache.xerces.internal.impl.xpath.regex.Match) : Bool;
	
	/**
	* Creates a new RegularExpression instance.
	*
	* @param regex A regular expression
	* @exception org.apache.xerces.utils.regex.ParseException <VAR>regex</VAR> is not conforming to the syntax.
	*/
	@:overload @:public public function new(regex : String) : Void;
	
	/**
	* Creates a new RegularExpression instance with options.
	*
	* @param regex A regular expression
	* @param options A String consisted of "i" "m" "s" "u" "w" "," "X"
	* @exception org.apache.xerces.utils.regex.ParseException <VAR>regex</VAR> is not conforming to the syntax.
	*/
	@:overload @:public public function new(regex : String, options : String) : Void;
	
	/**
	* Creates a new RegularExpression instance with options.
	*
	* @param regex A regular expression
	* @param options A String consisted of "i" "m" "s" "u" "w" "," "X"
	* @exception org.apache.xerces.utils.regex.ParseException <VAR>regex</VAR> is not conforming to the syntax.
	*/
	@:overload @:public public function new(regex : String, options : String, locale : java.util.Locale) : Void;
	
	/**
	*
	*/
	@:overload @:public public function setPattern(newPattern : String) : Void;
	
	@:overload @:public public function setPattern(newPattern : String, locale : java.util.Locale) : Void;
	
	/**
	*
	*/
	@:overload @:public public function setPattern(newPattern : String, options : String) : Void;
	
	@:overload @:public public function setPattern(newPattern : String, options : String, locale : java.util.Locale) : Void;
	
	/**
	*
	*/
	@:overload @:public public function getPattern() : String;
	
	/**
	* Represents this instence in String.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a option string.
	* The order of letters in it may be different from a string specified
	* in a constructor or <code>setPattern()</code>.
	*
	* @see #RegularExpression(java.lang.String,java.lang.String)
	* @see #setPattern(java.lang.String,java.lang.String)
	*/
	@:overload @:public public function getOptions() : String;
	
	/**
	*  Return true if patterns are the same and the options are equivalent.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	*
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return the number of regular expression groups.
	* This method returns 1 when the regular expression has no capturing-parenthesis.
	*
	*/
	@:overload @:public public function getNumberOfGroups() : Int;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$ExpressionTarget') @:internal extern class RegularExpression_ExpressionTarget
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$StringTarget') @:internal extern class RegularExpression_StringTarget extends com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.RegularExpression_ExpressionTarget
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$CharArrayTarget') @:internal extern class RegularExpression_CharArrayTarget extends com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.RegularExpression_ExpressionTarget
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$CharacterIteratorTarget') @:internal extern class RegularExpression_CharacterIteratorTarget extends com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.RegularExpression_ExpressionTarget
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$ClosureContext') @:internal extern class RegularExpression_ClosureContext
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegularExpression$Context') @:internal extern class RegularExpression_Context
{
	
}
