package com.sun.org.apache.xerces.internal.impl.xpath.regex;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
@:internal extern class RegexParser
{
	private static var S_NORMAL(default, null) : Int;
	
	private static var S_INBRACKETS(default, null) : Int;
	
	private static var S_INXBRACKETS(default, null) : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(locale : java.util.Locale) : Void;
	
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	@:overload @:final private function isSet(flag : Int) : Bool;
	
	/*
	public RegularExpression createRegex(String regex, int options) throws ParseException {
	Token tok = this.parse(regex, options);
	return new RegularExpression(regex, tok, this.parennumber, this.hasBackReferences, options);
	}
	*/
	@:overload @:final private function setContext(con : Int) : Void;
	
	@:overload private function processBacksolidus_pP(c : Int) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	/**
	* char-class ::= '[' ( '^'? range ','?)+ ']'
	* range ::= '\d' | '\w' | '\s' | category-block | range-char
	*           | range-char '-' range-char
	* range-char ::= '\[' | '\]' | '\\' | '\' [,-efnrtv] | bmp-code | character-2
	* bmp-code ::= '\' 'u' [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F]
	*/
	@:overload private function parseCharacterClass(useNrange : Bool) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	/**
	* '(?[' ... ']' (('-' | '+' | '&') '[' ... ']')? ')'
	*/
	@:overload private function parseSetOperations() : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	@:overload @:final private static function addCaseInsensitiveChar(tok : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken, c : Int) : Void;
	
	@:overload @:final private static function addCaseInsensitiveCharRange(tok : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken, start : Int, end : Int) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$RegexParser$ReferencePosition') @:internal extern class RegexParser_ReferencePosition
{
	
}
