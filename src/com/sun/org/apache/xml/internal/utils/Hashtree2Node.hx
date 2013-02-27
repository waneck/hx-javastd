package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* $Id: Hashtree2Node.java,v 1.2.4.1 2005/09/15 08:15:45 suresh_emailid Exp $
*/
extern class Hashtree2Node
{
	/**
	* Convert a Hashtable into a Node tree.
	*
	* <p>The hash may have either Hashtables as values (in which
	* case we recurse) or other values, in which case we print them
	* as &lt;item> elements, with a 'key' attribute with the value
	* of the key, and the element contents as the value.</p>
	*
	* <p>If args are null we simply return without doing anything.
	* If we encounter an error, we will attempt to add an 'ERROR'
	* Element with exception info; if that doesn't work we simply
	* return without doing anything else byt printStackTrace().</p>
	*
	* @param hash to get info from (may have sub-hashtables)
	* @param name to use as parent element for appended node
	* futurework could have namespace and prefix as well
	* @param container Node to append our report to
	* @param factory Document providing createElement, etc. services
	*/
	@:overload public static function appendHashToNode(hash : java.util.Hashtable<Dynamic, Dynamic>, name : String, container : org.w3c.dom.Node, factory : org.w3c.dom.Document) : Void;
	
	
}
