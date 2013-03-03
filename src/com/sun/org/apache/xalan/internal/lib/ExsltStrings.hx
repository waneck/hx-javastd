package com.sun.org.apache.xalan.internal.lib;
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
/*
* $Id: ExsltStrings.java,v 1.1.2.1 2005/08/01 02:08:48 jeffsuttor Exp $
*/
extern class ExsltStrings extends com.sun.org.apache.xalan.internal.lib.ExsltBase
{
	/**
	* The str:align function aligns a string within another string.
	* <p>
	* The first argument gives the target string to be aligned. The second argument gives
	* the padding string within which it is to be aligned.
	* <p>
	* If the target string is shorter than the padding string then a range of characters
	* in the padding string are repaced with those in the target string. Which characters
	* are replaced depends on the value of the third argument, which gives the type of
	* alignment. It can be one of 'left', 'right' or 'center'. If no third argument is
	* given or if it is not one of these values, then it defaults to left alignment.
	* <p>
	* With left alignment, the range of characters replaced by the target string begins
	* with the first character in the padding string. With right alignment, the range of
	* characters replaced by the target string ends with the last character in the padding
	* string. With center alignment, the range of characters replaced by the target string
	* is in the middle of the padding string, such that either the number of unreplaced
	* characters on either side of the range is the same or there is one less on the left
	* than there is on the right.
	* <p>
	* If the target string is longer than the padding string, then it is truncated to be
	* the same length as the padding string and returned.
	*
	* @param targetStr The target string
	* @param paddingStr The padding string
	* @param type The type of alignment
	*
	* @return The string after alignment
	*/
	@:overload @:public @:static public static function align(targetStr : String, paddingStr : String, type : String) : String;
	
	/**
	* See above
	*/
	@:overload @:public @:static public static function align(targetStr : String, paddingStr : String) : String;
	
	/**
	* The str:concat function takes a node set and returns the concatenation of the
	* string values of the nodes in that node set. If the node set is empty, it returns
	* an empty string.
	*
	* @param nl A node set
	* @return The concatenation of the string values of the nodes in that node set
	*/
	@:overload @:public @:static public static function concat(nl : org.w3c.dom.NodeList) : String;
	
	/**
	* The str:padding function creates a padding string of a certain length.
	* The first argument gives the length of the padding string to be created.
	* The second argument gives a string to be used to create the padding. This
	* string is repeated as many times as is necessary to create a string of the
	* length specified by the first argument; if the string is more than a character
	* long, it may have to be truncated to produce the required length. If no second
	* argument is specified, it defaults to a space (' '). If the second argument is
	* an empty string, str:padding returns an empty string.
	*
	* @param length The length of the padding string to be created
	* @param pattern The string to be used as pattern
	*
	* @return A padding string of the given length
	*/
	@:overload @:public @:static public static function padding(length : Float, pattern : String) : String;
	
	/**
	* See above
	*/
	@:overload @:public @:static public static function padding(length : Float) : String;
	
	/**
	* The str:split function splits up a string and returns a node set of token
	* elements, each containing one token from the string.
	* <p>
	* The first argument is the string to be split. The second argument is a pattern
	* string. The string given by the first argument is split at any occurrence of
	* this pattern. For example:
	* <pre>
	* str:split('a, simple, list', ', ') gives the node set consisting of:
	*
	* <token>a</token>
	* <token>simple</token>
	* <token>list</token>
	* </pre>
	* If the second argument is omitted, the default is the string '&#x20;' (i.e. a space).
	*
	* @param str The string to be split
	* @param pattern The pattern
	*
	* @return A node set of split tokens
	*/
	@:overload @:public @:static public static function split(str : String, pattern : String) : org.w3c.dom.NodeList;
	
	/**
	* See above
	*/
	@:overload @:public @:static public static function split(str : String) : org.w3c.dom.NodeList;
	
	/**
	* The str:tokenize function splits up a string and returns a node set of token
	* elements, each containing one token from the string.
	* <p>
	* The first argument is the string to be tokenized. The second argument is a
	* string consisting of a number of characters. Each character in this string is
	* taken as a delimiting character. The string given by the first argument is split
	* at any occurrence of any of these characters. For example:
	* <pre>
	* str:tokenize('2001-06-03T11:40:23', '-T:') gives the node set consisting of:
	*
	* <token>2001</token>
	* <token>06</token>
	* <token>03</token>
	* <token>11</token>
	* <token>40</token>
	* <token>23</token>
	* </pre>
	* If the second argument is omitted, the default is the string '&#x9;&#xA;&#xD;&#x20;'
	* (i.e. whitespace characters).
	* <p>
	* If the second argument is an empty string, the function returns a set of token
	* elements, each of which holds a single character.
	* <p>
	* Note: This one is different from the tokenize extension function in the Xalan
	* namespace. The one in Xalan returns a set of Text nodes, while this one wraps
	* the Text nodes inside the token Element nodes.
	*
	* @param toTokenize The string to be tokenized
	* @param delims The delimiter string
	*
	* @return A node set of split token elements
	*/
	@:overload @:public @:static public static function tokenize(toTokenize : String, delims : String) : org.w3c.dom.NodeList;
	
	/**
	* See above
	*/
	@:overload @:public @:static public static function tokenize(toTokenize : String) : org.w3c.dom.NodeList;
	
	
}
/**
* This class is not loaded until first referenced (see Java Language
* Specification by Gosling/Joy/Steele, section 12.4.1)
*
* The static members are created when this class is first referenced, as a
* lazy initialization not needing checking against null or any
* synchronization.
*
*/
@:native('com$sun$org$apache$xalan$internal$lib$ExsltStrings$DocumentHolder') @:internal extern class ExsltStrings_DocumentHolder
{
	
}
