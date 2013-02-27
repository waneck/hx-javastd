package com.sun.org.apache.xerces.internal.xni;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern interface NamespaceContext
{
	/**
	* Start a new Namespace context.
	* <p>
	* A new context should be pushed at the beginning
	* of each XML element: the new context will automatically inherit
	* the declarations of its parent context, but it will also keep
	* track of which declarations were made within this context.
	* <p>
	*
	* @see #popContext
	*/
	@:overload public function pushContext() : Void;
	
	/**
	* Revert to the previous Namespace context.
	* <p>
	* The context should be popped at the end of each
	* XML element.  After popping the context, all Namespace prefix
	* mappings that were previously in force are restored.
	* <p>
	* Users must not attempt to declare additional Namespace
	* prefixes after popping a context, unless you push another
	* context first.
	*
	* @see #pushContext
	*/
	@:overload public function popContext() : Void;
	
	/**
	* Declare a Namespace prefix.
	* <p>
	* This method declares a prefix in the current Namespace
	* context; the prefix will remain in force until this context
	* is popped, unless it is shadowed in a descendant context.
	* <p>
	* Note that to declare a default Namespace, use the empty string.
	* The prefixes "xml" and "xmlns" can't be rebound.
	* <p>
	* Note that you must <em>not</em> declare a prefix after
	* you've pushed and popped another Namespace.
	*
	* @param prefix The prefix to declare, or null for the empty
	*        string.
	* @param uri The Namespace URI to associate with the prefix.
	*
	* @return true if the prefix was legal, false otherwise
	*
	* @see #getURI
	* @see #getDeclaredPrefixAt
	*/
	@:overload public function declarePrefix(prefix : String, uri : String) : Bool;
	
	/**
	* Look up a prefix and get the currently-mapped Namespace URI.
	* <p>
	* This method looks up the prefix in the current context. If no mapping
	* is found, this methods will continue lookup in the parent context(s).
	* Use the empty string ("") for the default Namespace.
	*
	* @param prefix The prefix to look up.
	*
	* @return The associated Namespace URI, or null if the prefix
	*         is undeclared in this context.
	*/
	@:overload public function getURI(prefix : String) : String;
	
	/**
	* Look up a namespace URI and get one of the mapped prefix.
	* <p>
	* This method looks up the namespace URI in the current context.
	* If more than one prefix is currently mapped to the same URI,
	* this method will make an arbitrary selection
	* If no mapping is found, this methods will continue lookup in the
	* parent context(s).
	*
	* @param uri The namespace URI to look up.
	*
	* @return One of the associated prefixes, or null if the uri
	*         does not map to any prefix.
	*
	* @see #getPrefix
	*/
	@:overload public function getPrefix(uri : String) : String;
	
	/**
	* Return a count of locally declared prefixes, including
	* the default prefix if bound.
	*/
	@:overload public function getDeclaredPrefixCount() : Int;
	
	/**
	* Returns the prefix at the specified index in the current context.
	*/
	@:overload public function getDeclaredPrefixAt(index : Int) : String;
	
	/**
	* Return an enumeration of all prefixes whose declarations are active
	* in the current context. This includes declarations from parent contexts
	* that have not been overridden.
	* @return Enumeration
	*/
	@:overload public function getAllPrefixes() : java.util.Enumeration<Dynamic>;
	
	/**
	* Reset this Namespace support object for reuse.
	*
	* <p>It is necessary to invoke this method before reusing the
	* Namespace support object for a new session.</p>
	*
	* <p>Note that implementations of this method need to ensure that
	* the declaration of the prefixes "xmlns" and "xml" are available.</p>
	*/
	@:overload public function reset() : Void;
	
	
}
