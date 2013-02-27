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
* $Id: Trie.java,v 1.2.4.1 2005/09/15 08:15:59 suresh_emailid Exp $
*/
/**
* A digital search trie for 7-bit ASCII text
* The API is a subset of java.util.Hashtable
* The key must be a 7-bit ASCII string
* The value may be any Java Object
* @xsl.usage internal
*/
extern class Trie
{
	/** Size of the m_nextChar array.  */
	public static var ALPHA_SIZE(default, null) : Int;
	
	/**
	* Construct the trie.
	*/
	@:overload public function new() : Void;
	
	/**
	* Put an object into the trie for lookup.
	*
	* @param key must be a 7-bit ASCII string
	* @param value any java object.
	*
	* @return The old object that matched key, or null.
	*/
	@:overload public function put(key : String, value : Dynamic) : Dynamic;
	
	/**
	* Get an object that matches the key.
	*
	* @param key must be a 7-bit ASCII string
	*
	* @return The object that matches the key, or null.
	*/
	@:overload public function get(key : String) : Dynamic;
	
	
}
/**
* The node representation for the trie.
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$utils$Trie$Node') @:internal extern class Trie_Node
{
	
}
