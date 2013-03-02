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
* $Id: NamespaceSupport2.java,v 1.3 2005/09/28 13:49:20 pvedula Exp $
*/
extern class NamespaceSupport2 extends org.xml.sax.helpers.NamespaceSupport
{
	/**
	* The XML Namespace as a constant.
	*
	* <p>This is the Namespace URI that is automatically mapped
	* to the "xml" prefix.</p>
	*/
	public static var XMLNS(default, null) : String;
	
	/**
	* Create a new Namespace support object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Reset this Namespace support object for reuse.
	*
	* <p>It is necessary to invoke this method before reusing the
	* Namespace support object for a new session.</p>
	*/
	@:overload public function reset() : Void;
	
	/**
	* Start a new Namespace context.
	*
	* <p>Normally, you should push a new context at the beginning
	* of each XML element: the new context will automatically inherit
	* the declarations of its parent context, but it will also keep
	* track of which declarations were made within this context.</p>
	*
	* <p>The Namespace support object always starts with a base context
	* already in force: in this context, only the "xml" prefix is
	* declared.</p>
	*
	* @see #popContext
	*/
	@:overload public function pushContext() : Void;
	
	/**
	* Revert to the previous Namespace context.
	*
	* <p>Normally, you should pop the context at the end of each
	* XML element.  After popping the context, all Namespace prefix
	* mappings that were previously in force are restored.</p>
	*
	* <p>You must not attempt to declare additional Namespace
	* prefixes after popping a context, unless you push another
	* context first.</p>
	*
	* @see #pushContext
	*/
	@:overload public function popContext() : Void;
	
	/**
	* Declare a Namespace prefix.
	*
	* <p>This method declares a prefix in the current Namespace
	* context; the prefix will remain in force until this context
	* is popped, unless it is shadowed in a descendant context.</p>
	*
	* <p>To declare a default Namespace, use the empty string.  The
	* prefix must not be "xml" or "xmlns".</p>
	*
	* <p>Note that you must <em>not</em> declare a prefix after
	* you've pushed and popped another Namespace.</p>
	*
	* <p>Note that there is an asymmetry in this library: while {@link
	* #getPrefix getPrefix} will not return the default "" prefix,
	* even if you have declared one; to check for a default prefix,
	* you have to look it up explicitly using {@link #getURI getURI}.
	* This asymmetry exists to make it easier to look up prefixes
	* for attribute names, where the default prefix is not allowed.</p>
	*
	* @param prefix The prefix to declare, or null for the empty
	*        string.
	* @param uri The Namespace URI to associate with the prefix.
	* @return true if the prefix was legal, false otherwise
	* @see #processName
	* @see #getURI
	* @see #getPrefix
	*/
	@:overload public function declarePrefix(prefix : String, uri : String) : Bool;
	
	/**
	* Process a raw XML 1.0 name.
	*
	* <p>This method processes a raw XML 1.0 name in the current
	* context by removing the prefix and looking it up among the
	* prefixes currently declared.  The return value will be the
	* array supplied by the caller, filled in as follows:</p>
	*
	* <dl>
	* <dt>parts[0]</dt>
	* <dd>The Namespace URI, or an empty string if none is
	*  in use.</dd>
	* <dt>parts[1]</dt>
	* <dd>The local name (without prefix).</dd>
	* <dt>parts[2]</dt>
	* <dd>The original raw name.</dd>
	* </dl>
	*
	* <p>All of the strings in the array will be internalized.  If
	* the raw name has a prefix that has not been declared, then
	* the return value will be null.</p>
	*
	* <p>Note that attribute names are processed differently than
	* element names: an unprefixed element name will received the
	* default Namespace (if any), while an unprefixed element name
	* will not.</p>
	*
	* @param qName The raw XML 1.0 name to be processed.
	* @param parts A string array supplied by the caller, capable of
	*        holding at least three members.
	* @param isAttribute A flag indicating whether this is an
	*        attribute name (true) or an element name (false).
	* @return The supplied array holding three internalized strings
	*        representing the Namespace URI (or empty string), the
	*        local name, and the raw XML 1.0 name; or null if there
	*        is an undeclared prefix.
	* @see #declarePrefix
	* @see java.lang.String#intern */
	@:overload public function processName(qName : String, parts : java.NativeArray<String>, isAttribute : Bool) : java.NativeArray<String>;
	
	/**
	* Look up a prefix and get the currently-mapped Namespace URI.
	*
	* <p>This method looks up the prefix in the current context.
	* Use the empty string ("") for the default Namespace.</p>
	*
	* @param prefix The prefix to look up.
	* @return The associated Namespace URI, or null if the prefix
	*         is undeclared in this context.
	* @see #getPrefix
	* @see #getPrefixes
	*/
	@:overload public function getURI(prefix : String) : String;
	
	/**
	* Return an enumeration of all prefixes currently declared.
	*
	* <p><strong>Note:</strong> if there is a default prefix, it will not be
	* returned in this enumeration; check for the default prefix
	* using the {@link #getURI getURI} with an argument of "".</p>
	*
	* @return An enumeration of all prefixes declared in the
	*         current context except for the empty (default)
	*         prefix.
	* @see #getDeclaredPrefixes
	* @see #getURI
	*/
	@:overload public function getPrefixes() : java.util.Enumeration<Dynamic>;
	
	/**
	* Return one of the prefixes mapped to a Namespace URI.
	*
	* <p>If more than one prefix is currently mapped to the same
	* URI, this method will make an arbitrary selection; if you
	* want all of the prefixes, use the {@link #getPrefixes}
	* method instead.</p>
	*
	* <p><strong>Note:</strong> this will never return the empty
	* (default) prefix; to check for a default prefix, use the {@link
	* #getURI getURI} method with an argument of "".</p>
	*
	* @param uri The Namespace URI.
	* @return One of the prefixes currently mapped to the URI supplied,
	*         or null if none is mapped or if the URI is assigned to
	*         the default Namespace.
	* @see #getPrefixes(java.lang.String)
	* @see #getURI */
	@:overload public function getPrefix(uri : String) : String;
	
	/**
	* Return an enumeration of all prefixes currently declared for a URI.
	*
	* <p>This method returns prefixes mapped to a specific Namespace
	* URI.  The xml: prefix will be included.  If you want only one
	* prefix that's mapped to the Namespace URI, and you don't care
	* which one you get, use the {@link #getPrefix getPrefix}
	*  method instead.</p>
	*
	* <p><strong>Note:</strong> the empty (default) prefix is
	* <em>never</em> included in this enumeration; to check for the
	* presence of a default Namespace, use the {@link #getURI getURI}
	* method with an argument of "".</p>
	*
	* @param uri The Namespace URI.
	* @return An enumeration of all prefixes declared in the
	*         current context.
	* @see #getPrefix
	* @see #getDeclaredPrefixes
	* @see #getURI */
	@:overload public function getPrefixes(uri : String) : java.util.Enumeration<Dynamic>;
	
	/**
	* Return an enumeration of all prefixes declared in this context.
	*
	* <p>The empty (default) prefix will be included in this
	* enumeration; note that this behaviour differs from that of
	* {@link #getPrefix} and {@link #getPrefixes}.</p>
	*
	* @return An enumeration of all prefixes declared in this
	*         context.
	* @see #getPrefixes
	* @see #getURI
	*/
	@:overload public function getDeclaredPrefixes() : java.util.Enumeration<Dynamic>;
	
	
}
@:internal extern class PrefixForUriEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
@:internal extern class Context2
{
	
}
