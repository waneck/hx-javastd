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
@:internal extern class Token implements java.io.Serializable
{
	@:overload private function new(type : Int) : Void;
	
	@:overload private function addRange(start : Int, end : Int) : Void;
	
	@:overload private function sortRanges() : Void;
	
	@:overload private function compactRanges() : Void;
	
	@:overload private function mergeRanges(tok : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	@:overload private function subtractRanges(tok : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	@:overload private function intersectRanges(tok : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function toString(options : Int) : String;
	
	@:overload private static function getRange(name : String, positive : Bool) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	@:overload private static function getRange(name : String, positive : Bool, xs : Bool) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RangeToken;
	
	/**
	* This method is called by only getRange().
	* So this method need not MT-safe.
	*/
	@:overload private static function registerNonXS(name : String) : Void;
	
	@:overload private static function isRegisterNonXS(name : String) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$FixedStringContainer') @:internal extern class Token_FixedStringContainer
{
	
}
/**
* This class represents a node in parse tree.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$StringToken') @:internal extern class Token_StringToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* This class represents a node in parse tree.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$ConcatToken') @:internal extern class Token_ConcatToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* This class represents a node in parse tree.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$CharToken') @:internal extern class Token_CharToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* This class represents a node in parse tree.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$ClosureToken') @:internal extern class Token_ClosureToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* This class represents a node in parse tree.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$ParenToken') @:internal extern class Token_ParenToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* (?(condition)yes-pattern|no-pattern)
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$ConditionToken') @:internal extern class Token_ConditionToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* (ims-ims: .... )
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$ModifierToken') @:internal extern class Token_ModifierToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
/**
* This class represents a node in parse tree.
* for UNION or CONCAT.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Token$UnionToken') @:internal extern class Token_UnionToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload override public function toString(options : Int) : String;
	
	
}
