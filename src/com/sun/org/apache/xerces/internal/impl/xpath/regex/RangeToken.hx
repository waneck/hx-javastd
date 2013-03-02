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
/**
* This class represents a character class such as [a-z] or a period.
*
* @xerces.internal
*
*/
@:internal extern class RangeToken extends com.sun.org.apache.xerces.internal.impl.xpath.regex.Token implements java.io.Serializable
{
	@:overload private function addRange(start : Int, end : Int) : Void;
	
	@:overload private function sortRanges() : Void;
	
	/**
	* this.ranges is sorted.
	*/
	@:overload private function compactRanges() : Void;
	
	@:overload private function mergeRanges(token : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	@:overload private function subtractRanges(token : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	/**
	* @param tok Ignore whether it is NRANGE or not.
	*/
	@:overload private function intersectRanges(token : com.sun.org.apache.xerces.internal.impl.xpath.regex.Token) : Void;
	
	@:overload public function toString(options : Int) : String;
	
	
}
