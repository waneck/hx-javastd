package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
extern class DOMSerializerImpl implements org.w3c.dom.ls.LSSerializer implements org.w3c.dom.DOMConfiguration
{
	/** REVISIT: Currently we handle 3 different configurations, would be nice just have one configuration
	* that has different recognized parameters depending if it is used in Core/LS.
	*/
	private var features : java.StdTypes.Int16;
	
	private static var NAMESPACES(default, null) : java.StdTypes.Int16;
	
	private static var WELLFORMED(default, null) : java.StdTypes.Int16;
	
	private static var ENTITIES(default, null) : java.StdTypes.Int16;
	
	private static var CDATA(default, null) : java.StdTypes.Int16;
	
	private static var SPLITCDATA(default, null) : java.StdTypes.Int16;
	
	private static var COMMENTS(default, null) : java.StdTypes.Int16;
	
	private static var DISCARDDEFAULT(default, null) : java.StdTypes.Int16;
	
	private static var INFOSET(default, null) : java.StdTypes.Int16;
	
	private static var XMLDECL(default, null) : java.StdTypes.Int16;
	
	private static var NSDECL(default, null) : java.StdTypes.Int16;
	
	private static var DOM_ELEMENT_CONTENT_WHITESPACE(default, null) : java.StdTypes.Int16;
	
	private static var FORMAT_PRETTY_PRINT(default, null) : java.StdTypes.Int16;
	
	/**
	* Constructs a new LSSerializer.
	* The constructor turns on the namespace support in <code>XMLSerializer</code> and
	* initializes the following fields: fNSBinder, fLocalNSBinder, fSymbolTable,
	* fEmptySymbol, fXmlSymbol, fXmlnsSymbol, fNamespaceCounter, fFeatures.
	*/
	@:overload public function new() : Void;
	
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/** DOM L3-EXPERIMENTAL:
	* Setter for boolean and object parameters
	*/
	@:overload public function setParameter(name : String, value : Dynamic) : Void;
	
	/** DOM L3-EXPERIMENTAL:
	* Check if parameter can be set
	*/
	@:overload public function canSetParameter(name : String, state : Dynamic) : Bool;
	
	/**
	*  DOM Level 3 Core CR - Experimental.
	*
	*  The list of the parameters supported by this
	* <code>DOMConfiguration</code> object and for which at least one value
	* can be set by the application. Note that this list can also contain
	* parameter names defined outside this specification.
	*/
	@:overload public function getParameterNames() : org.w3c.dom.DOMStringList;
	
	/** DOM L3-EXPERIMENTAL:
	* Getter for boolean and object parameters
	*/
	@:overload public function getParameter(name : String) : Dynamic;
	
	/**
	* DOM L3 EXPERIMENTAL:
	*  Serialize the specified node as described above in the description of
	* <code>LSSerializer</code>. The result of serializing the node is
	* returned as a string. Writing a Document or Entity node produces a
	* serialized form that is well formed XML. Writing other node types
	* produces a fragment of text in a form that is not fully defined by
	* this document, but that should be useful to a human for debugging or
	* diagnostic purposes.
	* @param wnode  The node to be written.
	* @return  Returns the serialized data
	* @exception DOMException
	*    DOMSTRING_SIZE_ERR: The resulting string is too long to fit in a
	*   <code>DOMString</code>.
	* @exception LSException
	*    SERIALIZE_ERR: Unable to serialize the node.  DOM applications should
	*    attach a <code>DOMErrorHandler</code> using the parameter
	*    &quot;<i>error-handler</i>&quot; to get details on error.
	*/
	@:overload public function writeToString(wnode : org.w3c.dom.Node) : String;
	
	/**
	* DOM L3 EXPERIMENTAL:
	* The end-of-line sequence of characters to be used in the XML being
	* written out. The only permitted values are these:
	* <dl>
	* <dt><code>null</code></dt>
	* <dd>
	* Use a default end-of-line sequence. DOM implementations should choose
	* the default to match the usual convention for text files in the
	* environment being used. Implementations must choose a default
	* sequence that matches one of those allowed by  2.11 "End-of-Line
	* Handling". </dd>
	* <dt>CR</dt>
	* <dd>The carriage-return character (#xD).</dd>
	* <dt>CR-LF</dt>
	* <dd> The
	* carriage-return and line-feed characters (#xD #xA). </dd>
	* <dt>LF</dt>
	* <dd> The line-feed
	* character (#xA). </dd>
	* </dl>
	* <br>The default value for this attribute is <code>null</code>.
	*/
	@:overload public function setNewLine(newLine : String) : Void;
	
	/**
	* DOM L3 EXPERIMENTAL:
	* The end-of-line sequence of characters to be used in the XML being
	* written out. The only permitted values are these:
	* <dl>
	* <dt><code>null</code></dt>
	* <dd>
	* Use a default end-of-line sequence. DOM implementations should choose
	* the default to match the usual convention for text files in the
	* environment being used. Implementations must choose a default
	* sequence that matches one of those allowed by  2.11 "End-of-Line
	* Handling". </dd>
	* <dt>CR</dt>
	* <dd>The carriage-return character (#xD).</dd>
	* <dt>CR-LF</dt>
	* <dd> The
	* carriage-return and line-feed characters (#xD #xA). </dd>
	* <dt>LF</dt>
	* <dd> The line-feed
	* character (#xA). </dd>
	* </dl>
	* <br>The default value for this attribute is <code>null</code>.
	*/
	@:overload public function getNewLine() : String;
	
	/**
	*  When the application provides a filter, the serializer will call out
	* to the filter before serializing each Node. Attribute nodes are never
	* passed to the filter. The filter implementation can choose to remove
	* the node from the stream or to terminate the serialization early.
	*/
	@:overload public function getFilter() : org.w3c.dom.ls.LSSerializerFilter;
	
	/**
	*  When the application provides a filter, the serializer will call out
	* to the filter before serializing each Node. Attribute nodes are never
	* passed to the filter. The filter implementation can choose to remove
	* the node from the stream or to terminate the serialization early.
	*/
	@:overload public function setFilter(filter : org.w3c.dom.ls.LSSerializerFilter) : Void;
	
	/**
	*  Serialize the specified node as described above in the general
	* description of the <code>LSSerializer</code> interface. The output
	* is written to the supplied <code>LSOutput</code>.
	* <br> When writing to a <code>LSOutput</code>, the encoding is found by
	* looking at the encoding information that is reachable through the
	* <code>LSOutput</code> and the item to be written (or its owner
	* document) in this order:
	* <ol>
	* <li> <code>LSOutput.encoding</code>,
	* </li>
	* <li>
	* <code>Document.actualEncoding</code>,
	* </li>
	* <li>
	* <code>Document.xmlEncoding</code>.
	* </li>
	* </ol>
	* <br> If no encoding is reachable through the above properties, a
	* default encoding of "UTF-8" will be used.
	* <br> If the specified encoding is not supported an
	* "unsupported-encoding" error is raised.
	* <br> If no output is specified in the <code>LSOutput</code>, a
	* "no-output-specified" error is raised.
	* @param node  The node to serialize.
	* @param destination The destination for the serialized DOM.
	* @return  Returns <code>true</code> if <code>node</code> was
	*   successfully serialized and <code>false</code> in case the node
	*   couldn't be serialized.
	*/
	@:overload public function write(node : org.w3c.dom.Node, destination : org.w3c.dom.ls.LSOutput) : Bool;
	
	/**
	*  Serialize the specified node as described above in the general
	* description of the <code>LSSerializer</code> interface. The output
	* is written to the supplied URI.
	* <br> When writing to a URI, the encoding is found by looking at the
	* encoding information that is reachable through the item to be written
	* (or its owner document) in this order:
	* <ol>
	* <li>
	* <code>Document.inputEncoding</code>,
	* </li>
	* <li>
	* <code>Document.xmlEncoding</code>.
	* </li>
	* </ol>
	* <br> If no encoding is reachable through the above properties, a
	* default encoding of "UTF-8" will be used.
	* <br> If the specified encoding is not supported an
	* "unsupported-encoding" error is raised.
	* @param node  The node to serialize.
	* @param URI The URI to write to.
	* @return  Returns <code>true</code> if <code>node</code> was
	*   successfully serialized and <code>false</code> in case the node
	*   couldn't be serialized.
	*/
	@:overload public function writeToURI(node : org.w3c.dom.Node, URI : String) : Bool;
	
	
}
