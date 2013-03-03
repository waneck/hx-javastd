package com.sun.org.apache.xml.internal.utils;
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
* $Id: CharKey.java,v 1.3 2005/09/28 13:49:18 pvedula Exp $
*/
/**
* Simple class for fast lookup of char values, when used with
* hashtables.  You can set the char, then use it as a key.
* @xsl.usage internal
*/
extern class CharKey
{
	/**
	* Constructor CharKey
	*
	* @param key char value of this object.
	*/
	@:overload @:public public function new(key : java.StdTypes.Char16) : Void;
	
	/**
	* Default constructor for a CharKey.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Get the hash value of the character.
	*
	* @return hash value of the character.
	*/
	@:overload @:public @:final public function setChar(c : java.StdTypes.Char16) : Void;
	
	/**
	* Get the hash value of the character.
	*
	* @return hash value of the character.
	*/
	@:overload @:public @:final override public function hashCode() : Int;
	
	/**
	* Override of equals() for this object
	*
	* @param obj to compare to
	*
	* @return True if this object equals this string value
	*/
	@:overload @:public @:final override public function equals(obj : Dynamic) : Bool;
	
	
}
