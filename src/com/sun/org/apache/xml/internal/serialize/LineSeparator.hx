package com.sun.org.apache.xml.internal.serialize;
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
/**
* @author <a href="mailto:arkin@intalio..com">Assaf Arkin</a>
* @see OutputFormat
*/
extern class LineSeparator
{
	/**
	* Line separator for Unix systems (<tt>\n</tt>).
	*/
	public static var Unix(default, null) : String;
	
	/**
	* Line separator for Windows systems (<tt>\r\n</tt>).
	*/
	public static var Windows(default, null) : String;
	
	/**
	* Line separator for Macintosh systems (<tt>\r</tt>).
	*/
	public static var Macintosh(default, null) : String;
	
	/**
	* Line separator for the Web (<tt>\n</tt>).
	*/
	public static var Web(default, null) : String;
	
	
}
