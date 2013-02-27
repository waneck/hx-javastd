package com.sun.org.apache.xpath.internal.compiler;
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
* $Id: PsuedoNames.java,v 1.1.2.1 2005/08/01 01:30:33 jeffsuttor Exp $
*/
/**
* This is used to represent names of nodes that may not be named, like a
* comment node.
*/
extern class PsuedoNames
{
	/**
	* Psuedo name for a wild card pattern ('*').
	*/
	public static var PSEUDONAME_ANY(default, null) : String;
	
	/**
	* Psuedo name for the root node.
	*/
	public static var PSEUDONAME_ROOT(default, null) : String;
	
	/**
	* Psuedo name for a text node.
	*/
	public static var PSEUDONAME_TEXT(default, null) : String;
	
	/**
	* Psuedo name for a comment node.
	*/
	public static var PSEUDONAME_COMMENT(default, null) : String;
	
	/**
	* Psuedo name for a processing instruction node.
	*/
	public static var PSEUDONAME_PI(default, null) : String;
	
	/**
	* Psuedo name for an unknown type value.
	*/
	public static var PSEUDONAME_OTHER(default, null) : String;
	
	
}
