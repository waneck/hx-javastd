package com.sun.org.apache.xerces.internal.util;
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
extern class EncodingMap
{
	/** fIANA2JavaMap */
	@:protected @:final @:static private static var fIANA2JavaMap(default, null) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** fJava2IANAMap */
	@:protected @:final @:static private static var fJava2IANAMap(default, null) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Adds an IANA to Java encoding name mapping.
	*
	* @param ianaEncoding The IANA encoding name.
	* @param javaEncoding The Java encoding name.
	*
	* @deprecated Use of this method is not recommended. Its
	* effect is JVM wide and may cause unforeseen behaviour
	* for other applications running in the system.
	*/
	@:overload @:public @:static public static function putIANA2JavaMapping(ianaEncoding : String, javaEncoding : String) : Void;
	
	/**
	* Returns the Java encoding name for the specified IANA encoding name.
	*
	* @param ianaEncoding The IANA encoding name.
	*/
	@:overload @:public @:static public static function getIANA2JavaMapping(ianaEncoding : String) : String;
	
	/**
	* Removes an IANA to Java encoding name mapping.
	*
	* @param ianaEncoding The IANA encoding name.
	*
	* @deprecated Use of this method is not recommended. Its
	* effect is JVM wide and may cause unforeseen behaviour
	* for other applications running in the system.
	*/
	@:overload @:public @:static public static function removeIANA2JavaMapping(ianaEncoding : String) : String;
	
	/**
	* Adds a Java to IANA encoding name mapping.
	*
	* @param javaEncoding The Java encoding name.
	* @param ianaEncoding The IANA encoding name.
	*
	* @deprecated Use of this method is not recommended. Its
	* effect is JVM wide and may cause unforeseen behaviour
	* for other applications running in the system.
	*/
	@:overload @:public @:static public static function putJava2IANAMapping(javaEncoding : String, ianaEncoding : String) : Void;
	
	/**
	* Returns the IANA encoding name for the specified Java encoding name.
	*
	* @param javaEncoding The Java encoding name.
	*/
	@:overload @:public @:static public static function getJava2IANAMapping(javaEncoding : String) : String;
	
	/**
	* Removes a Java to IANA encoding name mapping.
	*
	* @param javaEncoding The Java encoding name.
	*
	* @deprecated Use of this method is not recommended. Its
	* effect is JVM wide and may cause unforeseen behaviour
	* for other applications running in the system.
	*/
	@:overload @:public @:static public static function removeJava2IANAMapping(javaEncoding : String) : String;
	
	
}
