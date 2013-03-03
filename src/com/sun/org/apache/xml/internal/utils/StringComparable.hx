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
* $Id: StringComparable.java,v 1.2.4.1 2005/09/15 08:15:55 suresh_emailid Exp $
*/
extern class StringComparable implements java.lang.Comparable<Dynamic>
{
	/**
* International friendly string comparison with case-order
	* @author Igor Hersht, igorh@ca.ibm.com
*/
	@:public @:final @:static public static var UNKNOWN_CASE(default, null) : Int;
	
	@:public @:final @:static public static var UPPER_CASE(default, null) : Int;
	
	@:public @:final @:static public static var LOWER_CASE(default, null) : Int;
	
	@:overload @:public public function new(text : String, locale : java.util.Locale, collator : java.text.Collator, caseOrder : String) : Void;
	
	@:overload @:public @:final @:static public static function getComparator(text : String, locale : java.util.Locale, collator : java.text.Collator, caseOrder : String) : java.lang.Comparable<Dynamic>;
	
	@:overload @:public @:final public function toString() : String;
	
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	
}
