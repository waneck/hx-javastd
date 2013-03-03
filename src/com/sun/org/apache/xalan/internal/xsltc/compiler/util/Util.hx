package com.sun.org.apache.xalan.internal.xsltc.compiler.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: Util.java,v 1.2.4.1 2005/09/12 11:47:15 pvedula Exp $
*/
extern class Util
{
	@:overload @:public @:static public static function noExtName(name : String) : String;
	
	/**
	* Search for both slashes in order to support URLs and
	* files.
	*/
	@:overload @:public @:static public static function baseName(name : String) : String;
	
	/**
	* Search for both slashes in order to support URLs and
	* files.
	*/
	@:overload @:public @:static public static function pathName(name : String) : String;
	
	/**
	* Replace all illegal Java chars by '_'.
	*/
	@:overload @:public @:static public static function toJavaName(name : String) : String;
	
	@:overload @:public @:static public static function getJCRefType(signature : String) : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload @:public @:static public static function internalName(cname : String) : String;
	
	@:overload @:public @:static public static function println(s : String) : Void;
	
	@:overload @:public @:static public static function println(ch : java.StdTypes.Char16) : Void;
	
	@:overload @:public @:static public static function TRACE1() : Void;
	
	@:overload @:public @:static public static function TRACE2() : Void;
	
	@:overload @:public @:static public static function TRACE3() : Void;
	
	/**
	* Replace a certain character in a string with a new substring.
	*/
	@:overload @:public @:static public static function replace(base : String, ch : java.StdTypes.Char16, str : String) : String;
	
	@:overload @:public @:static public static function replace(base : String, delim : String, str : java.NativeArray<String>) : String;
	
	/**
	* Replace occurances of '.', '-', '/' and ':'
	*/
	@:overload @:public @:static public static function escape(input : String) : String;
	
	@:overload @:public @:static public static function getLocalName(qname : String) : String;
	
	@:overload @:public @:static public static function getPrefix(qname : String) : String;
	
	/**
	* Checks if the string is a literal (i.e. not an AVT) or not.
	*/
	@:overload @:public @:static public static function isLiteral(str : String) : Bool;
	
	/**
	* Checks if the string is valid list of qnames
	*/
	@:overload @:public @:static public static function isValidQNames(str : String) : Bool;
	
	
}
