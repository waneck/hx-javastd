package com.sun.org.apache.xerces.internal.impl.xpath.regex;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class REUtil
{
	/**
	* Sample entry.
	* <div>Usage: <KBD>com.sun.org.apache.xerces.internal.utils.regex.REUtil &lt;regex&gt; &lt;string&gt;</KBD></div>
	*/
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	/**
	* Creates a RegularExpression instance.
	* This method caches created instances.
	*
	* @see RegularExpression#RegularExpression(java.lang.String, java.lang.String)
	*/
	@:overload @:public @:static public static function createRegex(pattern : String, options : String) : com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression;
	
	/**
	*
	* @see RegularExpression#matches(java.lang.String)
	*/
	@:overload @:public @:static public static function matches(regex : String, target : String) : Bool;
	
	/**
	*
	* @see RegularExpression#matches(java.lang.String)
	*/
	@:overload @:public @:static public static function matches(regex : String, options : String, target : String) : Bool;
	
	/**
	*
	*/
	@:overload @:public @:static public static function quoteMeta(literal : String) : String;
	
	
}
