package com.sun.org.apache.xml.internal.serializer;
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
* $Id: CharInfo.java,v 1.2.4.1 2005/09/15 08:15:14 suresh_emailid Exp $
*/
@:internal extern class CharInfo
{
	/**
	* The name of the HTML entities file.
	* If specified, the file will be resource loaded with the default class loader.
	*/
	public static var HTML_ENTITIES_RESOURCE(default, null) : String;
	
	/**
	* The name of the XML entities file.
	* If specified, the file will be resource loaded with the default class loader.
	*/
	public static var XML_ENTITIES_RESOURCE(default, null) : String;
	
	/** The horizontal tab character, which the parser should always normalize. */
	public static var S_HORIZONAL_TAB(default, null) : java.StdTypes.Char16;
	
	/** The linefeed character, which the parser should always normalize. */
	public static var S_LINEFEED(default, null) : java.StdTypes.Char16;
	
	/** The carriage return character, which the parser should always normalize. */
	public static var S_CARRIAGERETURN(default, null) : java.StdTypes.Char16;
	
	
}
/**
* Simple class for fast lookup of char values, when used with
* hashtables.  You can set the char, then use it as a key.
*
* This class is a copy of the one in com.sun.org.apache.xml.internal.utils.
* It exists to cut the serializers dependancy on that package.
*
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$serializer$CharInfo$CharKey') @:internal extern class CharInfo_CharKey
{
	/**
	* Constructor CharKey
	*
	* @param key char value of this object.
	*/
	@:overload public function new(key : java.StdTypes.Char16) : Void;
	
	/**
	* Default constructor for a CharKey.
	*
	* @param key char value of this object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Get the hash value of the character.
	*
	* @return hash value of the character.
	*/
	@:overload @:final public function setChar(c : java.StdTypes.Char16) : Void;
	
	/**
	* Get the hash value of the character.
	*
	* @return hash value of the character.
	*/
	@:overload @:final override public function hashCode() : Int;
	
	/**
	* Override of equals() for this object
	*
	* @param obj to compare to
	*
	* @return True if this object equals this string value
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	
}
