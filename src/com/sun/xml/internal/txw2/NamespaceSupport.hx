package com.sun.xml.internal.txw2;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
//// NamespaceSupport.java - generic Namespace support for SAX.
//// http://www.saxproject.org
//// Written by David Megginson
//// This class is in the Public Domain.  NO WARRANTY!
@:internal extern class NamespaceSupport
{
	/**
	* The XML Namespace URI as a constant.
	* The value is <code>http://www.w3.org/XML/1998/namespace</code>
	* as defined in the "Namespaces in XML" * recommendation.
	*
	* <p>This is the Namespace URI that is automatically mapped
	* to the "xml" prefix.</p>
	*/
	public static var XMLNS(default, null) : String;
	
	/**
	* The namespace declaration URI as a constant.
	* The value is <code>http://www.w3.org/xmlns/2000/</code>, as defined
	* in a backwards-incompatible erratum to the "Namespaces in XML"
	* recommendation.  Because that erratum postdated SAX2, SAX2 defaults
	* to the original recommendation, and does not normally use this URI.
	*
	*
	* <p>This is the Namespace URI that is optionally applied to
	* <em>xmlns</em> and <em>xmlns:*</em> attributes, which are used to
	* declare namespaces.  </p>
	*
	* @since SAX 2.1alpha
	* @see #setNamespaceDeclUris
	* @see #isNamespaceDeclUris
	*/
	@:require(java1) public static var NSDECL(default, null) : String;
	
	/**
	* Create a new Namespace support object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Reset this Namespace support object for reuse.
	*
	* <p>It is necessary to invoke this method before reusing the
	* Namespace support object for a new session.  If namespace
	* declaration URIs are to be supported, that flag must also
	* be set to a non-default value.
	* </p>
	*
	* @see #setNamespaceDeclUris
	*/
	@:overload public function reset() : Void;
	
	/**
	* Start a new Namespace context.
	* The new context will automatically inherit
	* the declarations of its parent context, but it will also keep
	* track of which declarations were made within this context.
	*
	* <p>Event callback code should start a new context once per element.
	* This means being ready to call this in either of two places.
	* For elements that don't include namespace declarations, the
	* <em>ContentHandler.startElement()</em> callback is the right place.
	* For elements with such a declaration, it'd done in the first
	* <em>ContentHandler.startPrefixMapping()</em> callback.
	* A boolean flag can be used to
	* track whether a context has been started yet.  When either of
	* those methods is called, it checks the flag to see if a new context
	* needs to be started.  If so, it starts the context and sets the
	* flag.  After <em>ContentHandler.startElement()</em>
	* does that, it always clears the flag.
	*
	* <p>Normally, SAX drivers would push a new context at the beginning
	* of each XML element.  Then they perform a first pass over the
	* attributes to process all namespace declarations, making
	* <em>ContentHandler.startPrefixMapping()</em> callbacks.
	* Then a second pass is made, to determine the namespace-qualified
	* names for all attributes and for the element name.
	* Finally all the information for the
	* <em>ContentHandler.startElement()</em> callback is available,
	* so it can then be made.
	*
	* <p>The Namespace support object always starts with a base context
	* already in force: in this context, only the "xml" prefix is
	* declared.</p>
	*
	* @see org.xml.sax.ContentHandler
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
	* Declare a Namespace prefix.  All prefixes must be declared
	* before they are referenced.  For example, a SAX driver (parser)
	* would scan an element's attributes
	* in two passes:  first for namespace declarations,
	* then a second pass using {@link #processName processName()} to
	* interpret prefixes against (potentially redefined) prefixes.
	*
	* <p>This method declares a prefix in the current Namespace
	* context; the prefix will remain in force until this context
	* is popped, unless it is shadowed in a descendant context.</p>
	*
	* <p>To declare the default element Namespace, use the empty string as
	* the prefix.</p>
	*
	* <p>Note that there is an asymmetry in this library: {@link
	* #getPrefix getPrefix} will not return the "" prefix,
	* even if you have declared a default element namespace.
	* To check for a default namespace,
	* you have to look it up explicitly using {@link #getURI getURI}.
	* This asymmetry exists to make it easier to look up prefixes
	* for attribute names, where the default prefix is not allowed.</p>
	*
	* @param prefix The prefix to declare, or the empty string to
	*  indicate the default element namespace.  This may never have
	*  the value "xml" or "xmlns".
	* @param uri The Namespace URI to associate with the prefix.
	* @return true if the prefix was legal, false otherwise
	*
	* @see #processName
	* @see #getURI
	* @see #getPrefix
	*/
	@:overload public function declarePrefix(prefix : String, uri : String) : Bool;
	
	/**
	* Process a raw XML qualified name, after all declarations in the
	* current context have been handled by {@link #declarePrefix
	* declarePrefix()}.
	*
	* <p>This method processes a raw XML qualified name in the
	* current context by removing the prefix and looking it up among
	* the prefixes currently declared.  The return value will be the
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
	* element names: an unprefixed element name will receive the
	* default Namespace (if any), while an unprefixed attribute name
	* will not.</p>
	*
	* @param qName The XML qualified name to be processed.
	* @param parts An array supplied by the caller, capable of
	*        holding at least three members.
	* @param isAttribute A flag indicating whether this is an
	*        attribute name (true) or an element name (false).
	* @return The supplied array holding three internalized strings
	*        representing the Namespace URI (or empty string), the
	*        local name, and the XML qualified name; or null if there
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
	* Return an enumeration of all prefixes whose declarations are
	* active in the current context.
	* This includes declarations from parent contexts that have
	* not been overridden.
	*
	* <p><strong>Note:</strong> if there is a default prefix, it will not be
	* returned in this enumeration; check for the default prefix
	* using the {@link #getURI getURI} with an argument of "".</p>
	*
	* @return An enumeration of prefixes (never empty).
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
	* <p><strong>Note:</strong> this will never return the empty (default) prefix;
	* to check for a default prefix, use the {@link #getURI getURI}
	* method with an argument of "".</p>
	*
	* @param uri the namespace URI
	* @return one of the prefixes currently mapped to the URI supplied,
	*         or null if none is mapped or if the URI is assigned to
	*         the default namespace
	* @see #getPrefixes(java.lang.String)
	* @see #getURI
	*/
	@:overload public function getPrefix(uri : String) : String;
	
	/**
	* Return an enumeration of all prefixes for a given URI whose
	* declarations are active in the current context.
	* This includes declarations from parent contexts that have
	* not been overridden.
	*
	* <p>This method returns prefixes mapped to a specific Namespace
	* URI.  The xml: prefix will be included.  If you want only one
	* prefix that's mapped to the Namespace URI, and you don't care
	* which one you get, use the {@link #getPrefix getPrefix}
	*  method instead.</p>
	*
	* <p><strong>Note:</strong> the empty (default) prefix is <em>never</em> included
	* in this enumeration; to check for the presence of a default
	* Namespace, use the {@link #getURI getURI} method with an
	* argument of "".</p>
	*
	* @param uri The Namespace URI.
	* @return An enumeration of prefixes (never empty).
	* @see #getPrefix
	* @see #getDeclaredPrefixes
	* @see #getURI
	*/
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
	
	/**
	* Controls whether namespace declaration attributes are placed
	* into the {@link #NSDECL NSDECL} namespace
	* by {@link #processName processName()}.  This may only be
	* changed before any contexts have been pushed.
	*
	* @since SAX 2.1alpha
	*
	* @exception IllegalStateException when attempting to set this
	*  after any context has been pushed.
	*/
	@:require(java1) @:overload public function setNamespaceDeclUris(value : Bool) : Void;
	
	/**
	* Returns true if namespace declaration attributes are placed into
	* a namespace.  This behavior is not the default.
	*
	* @since SAX 2.1alpha
	*/
	@:require(java1) @:overload public function isNamespaceDeclUris() : Bool;
	
	
}
/**
* Internal class for a single Namespace context.
*
* <p>This module caches and reuses Namespace contexts,
* so the number allocated
* will be equal to the element depth of the document, not to the total
* number of elements (i.e. 5-10 rather than tens of thousands).
* Also, data structures used to represent contexts are shared when
* possible (child contexts without declarations) to further reduce
* the amount of memory that's consumed.
* </p>
*/
@:native('com$sun$xml$internal$txw2$NamespaceSupport$Context') @:internal extern class NamespaceSupport_Context
{
	
}
