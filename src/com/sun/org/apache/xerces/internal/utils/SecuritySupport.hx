package com.sun.org.apache.xerces.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004 The Apache Software Foundation.
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
extern class SecuritySupport
{
	/**
	* Return an instance of this class.
	*/
	@:overload @:public @:static public static function getInstance() : com.sun.org.apache.xerces.internal.utils.SecuritySupport;
	
	@:overload @:public @:static public static function getSystemProperty(propName : String) : String;
	
	/**
	* Return resource using the same classloader for the ObjectFactory by default
	* or bootclassloader when Security Manager is in place
	*/
	@:overload @:public @:static public static function getResourceAsStream(name : String) : java.io.InputStream;
	
	@:overload @:public @:static public static function getResourceAsStream(cl : java.lang.ClassLoader, name : String) : java.io.InputStream;
	
	
}
