package com.sun.org.apache.xerces.internal.impl.xpath.regex;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
@:internal extern class ParserForXMLSchema extends com.sun.org.apache.xerces.internal.impl.xpath.regex.RegexParser
{
	/**
	* A regular expression parser for the XML Schema.
	*
	* @xerces.internal
	*
	* @author TAMURA Kent &lt;kent@trl.ibm.co.jp&gt;
	* @version $Id: ParserForXMLSchema.java,v 1.9 2010-11-12 18:09:45 joehw Exp $
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(locale : java.util.Locale) : Void;
	
	/**
	* Parses a character-class-expression, not a character-class-escape.
	*
	* c-c-expression   ::= '[' c-group ']'
	* c-group          ::= positive-c-group | negative-c-group | c-c-subtraction
	* positive-c-group ::= (c-range | c-c-escape)+
	* negative-c-group ::= '^' positive-c-group
	* c-c-subtraction  ::= (positive-c-group | negative-c-group) subtraction
	* subtraction      ::= '-' c-c-expression
	* c-range          ::= single-range | from-to-range
	* single-range     ::= multi-c-escape | category-c-escape | block-c-escape | &lt;any XML char&gt;
	* cc-normal-c      ::= &lt;any character except [, ], \&gt;
	* from-to-range    ::= cc-normal-c '-' cc-normal-c
	*
	* @param useNrage Ignored.
	* @return This returns no NrageToken.
	*/
	@:overload override private function parseCharacterClass(useNrange : Bool) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	@:overload override private function parseSetOperations() : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	@:overload @:synchronized private static function getRange(name : String, positive : Bool) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	
}
