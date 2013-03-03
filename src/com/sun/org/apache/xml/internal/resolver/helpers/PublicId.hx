package com.sun.org.apache.xml.internal.resolver.helpers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// PublicId.java - Information about public identifiers
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
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
* Static methods for dealing with public identifiers.
*
* <p>This class defines a set of static methods that can be called
* to handle public identifiers.</p>
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class PublicId
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Normalize a public identifier.
	*
	* <p>Public identifiers must be normalized according to the following
	* rules before comparisons between them can be made:</p>
	*
	* <ul>
	* <li>Whitespace characters are normalized to spaces (e.g., line feeds,
	* tabs, etc. become spaces).</li>
	* <li>Leading and trailing whitespace is removed.</li>
	* <li>Multiple internal whitespaces are normalized to a single
	* space.</li>
	* </ul>
	*
	* <p>This method is declared static so that other classes
	* can use it directly.</p>
	*
	* @param publicId The unnormalized public identifier.
	*
	* @return The normalized identifier.
	*/
	@:overload @:public @:static public static function normalize(publicId : String) : String;
	
	/**
	* Encode a public identifier as a "publicid" URN.
	*
	* <p>This method is declared static so that other classes
	* can use it directly.</p>
	*
	* @param publicId The unnormalized public identifier.
	*
	* @return The normalized identifier.
	*/
	@:overload @:public @:static public static function encodeURN(publicId : String) : String;
	
	/**
	* Decode a "publicid" URN into a public identifier.
	*
	* <p>This method is declared static so that other classes
	* can use it directly.</p>
	*
	* @param urn The urn:publicid: URN
	*
	* @return The normalized identifier.
	*/
	@:overload @:public @:static public static function decodeURN(urn : String) : String;
	
	
}
