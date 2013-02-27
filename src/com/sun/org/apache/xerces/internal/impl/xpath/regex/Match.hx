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
extern class Match implements java.lang.Cloneable
{
	/**
	* Creates an instance.
	*/
	@:overload public function new() : Void;
	
	/**
	*
	*/
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	*
	*/
	@:overload private function setNumberOfGroups(n : Int) : Void;
	
	/**
	*
	*/
	@:overload private function setSource(ci : java.text.CharacterIterator) : Void;
	
	/**
	*
	*/
	@:overload private function setSource(str : String) : Void;
	
	/**
	*
	*/
	@:overload private function setSource(chars : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	*
	*/
	@:overload private function setBeginning(index : Int, v : Int) : Void;
	
	/**
	*
	*/
	@:overload private function setEnd(index : Int, v : Int) : Void;
	
	/**
	* Return the number of regular expression groups.
	* This method returns 1 when the regular expression has no capturing-parenthesis.
	*/
	@:overload public function getNumberOfGroups() : Int;
	
	/**
	* Return a start position in the target text matched to specified regular expression group.
	*
	* @param index Less than <code>getNumberOfGroups()</code>.
	*/
	@:overload public function getBeginning(index : Int) : Int;
	
	/**
	* Return an end position in the target text matched to specified regular expression group.
	*
	* @param index Less than <code>getNumberOfGroups()</code>.
	*/
	@:overload public function getEnd(index : Int) : Int;
	
	/**
	* Return an substring of the target text matched to specified regular expression group.
	*
	* @param index Less than <code>getNumberOfGroups()</code>.
	*/
	@:overload public function getCapturedText(index : Int) : String;
	
	
}
