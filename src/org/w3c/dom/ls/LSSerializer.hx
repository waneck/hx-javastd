package org.w3c.dom.ls;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2004 World Wide Web Consortium,
*
* (Massachusetts Institute of Technology, European Research Consortium for
* Informatics and Mathematics, Keio University). All Rights Reserved. This
* work is distributed under the W3C(r) Software License [1] in the hope that
* it will be useful, but WITHOUT ANY WARRANTY; without even the implied
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
extern interface LSSerializer
{
	/**
	*  The <code>DOMConfiguration</code> object used by the
	* <code>LSSerializer</code> when serializing a DOM node.
	* <br> In addition to the parameters recognized by the <a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration'>
	* DOMConfiguration</a> interface defined in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , the <code>DOMConfiguration</code> objects for
	* <code>LSSerializer</code> adds, or modifies, the following
	* parameters:
	* <dl>
	* <dt><code>"canonical-form"</code></dt>
	* <dd>
	* <dl>
	* <dt><code>true</code></dt>
	* <dd>[<em>optional</em>] Writes the document according to the rules specified in [<a href='http://www.w3.org/TR/2001/REC-xml-c14n-20010315'>Canonical XML</a>].
	* In addition to the behavior described in "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-canonical-form'>
	* canonical-form</a>" [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , setting this parameter to <code>true</code> will set the parameters
	* "format-pretty-print", "discard-default-content", and "xml-declaration
	* ", to <code>false</code>. Setting one of those parameters to
	* <code>true</code> will set this parameter to <code>false</code>.
	* Serializing an XML 1.1 document when "canonical-form" is
	* <code>true</code> will generate a fatal error. </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Do not canonicalize the output. </dd>
	* </dl></dd>
	* <dt><code>"discard-default-content"</code></dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Use the <code>Attr.specified</code> attribute to decide what attributes
	* should be discarded. Note that some implementations might use
	* whatever information available to the implementation (i.e. XML
	* schema, DTD, the <code>Attr.specified</code> attribute, and so on) to
	* determine what attributes and content to discard if this parameter is
	* set to <code>true</code>. </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>required</em>]Keep all attributes and all content.</dd>
	* </dl></dd>
	* <dt><code>"format-pretty-print"</code></dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>optional</em>] Formatting the output by adding whitespace to produce a pretty-printed,
	* indented, human-readable form. The exact form of the transformations
	* is not specified by this specification. Pretty-printing changes the
	* content of the document and may affect the validity of the document,
	* validating implementations should preserve validity. </dd>
	* <dt>
	* <code>false</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Don't pretty-print the result. </dd>
	* </dl></dd>
	* <dt>
	* <code>"ignore-unknown-character-denormalizations"</code> </dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) If, while verifying full normalization when [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>] is
	* supported, a character is encountered for which the normalization
	* properties cannot be determined, then raise a
	* <code>"unknown-character-denormalization"</code> warning (instead of
	* raising an error, if this parameter is not set) and ignore any
	* possible denormalizations caused by these characters. </dd>
	* <dt>
	* <code>false</code></dt>
	* <dd>[<em>optional</em>] Report a fatal error if a character is encountered for which the
	* processor cannot determine the normalization properties. </dd>
	* </dl></dd>
	* <dt>
	* <code>"normalize-characters"</code></dt>
	* <dd> This parameter is equivalent to
	* the one defined by <code>DOMConfiguration</code> in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* . Unlike in the Core, the default value for this parameter is
	* <code>true</code>. While DOM implementations are not required to
	* support <a href='http://www.w3.org/TR/2004/REC-xml11-20040204/#dt-fullnorm'>fully
	* normalizing</a> the characters in the document according to appendix E of [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>], this
	* parameter must be activated by default if supported. </dd>
	* <dt>
	* <code>"xml-declaration"</code></dt>
	* <dd>
	* <dl>
	* <dt><code>true</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) If a <code>Document</code>, <code>Element</code>, or <code>Entity</code>
	*  node is serialized, the XML declaration, or text declaration, should
	* be included. The version (<code>Document.xmlVersion</code> if the
	* document is a Level 3 document and the version is non-null, otherwise
	* use the value "1.0"), and the output encoding (see
	* <code>LSSerializer.write</code> for details on how to find the output
	* encoding) are specified in the serialized XML declaration. </dd>
	* <dt>
	* <code>false</code></dt>
	* <dd>[<em>required</em>] Do not serialize the XML and text declarations. Report a
	* <code>"xml-declaration-needed"</code> warning if this will cause
	* problems (i.e. the serialized data is of an XML version other than [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>], or an
	* encoding would be needed to be able to re-parse the serialized data). </dd>
	* </dl></dd>
	* </dl>
	*/
	@:overload @:public public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	*  The end-of-line sequence of characters to be used in the XML being
	* written out. Any string is supported, but XML treats only a certain
	* set of characters sequence as end-of-line (See section 2.11,
	* "End-of-Line Handling" in [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>], if the
	* serialized content is XML 1.0 or section 2.11, "End-of-Line Handling"
	* in [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>], if the
	* serialized content is XML 1.1). Using other character sequences than
	* the recommended ones can result in a document that is either not
	* serializable or not well-formed).
	* <br> On retrieval, the default value of this attribute is the
	* implementation specific default end-of-line sequence. DOM
	* implementations should choose the default to match the usual
	* convention for text files in the environment being used.
	* Implementations must choose a default sequence that matches one of
	* those allowed by XML 1.0 or XML 1.1, depending on the serialized
	* content. Setting this attribute to <code>null</code> will reset its
	* value to the default value.
	* <br>
	*/
	@:overload @:public public function getNewLine() : String;
	
	/**
	*  The end-of-line sequence of characters to be used in the XML being
	* written out. Any string is supported, but XML treats only a certain
	* set of characters sequence as end-of-line (See section 2.11,
	* "End-of-Line Handling" in [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>], if the
	* serialized content is XML 1.0 or section 2.11, "End-of-Line Handling"
	* in [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>], if the
	* serialized content is XML 1.1). Using other character sequences than
	* the recommended ones can result in a document that is either not
	* serializable or not well-formed).
	* <br> On retrieval, the default value of this attribute is the
	* implementation specific default end-of-line sequence. DOM
	* implementations should choose the default to match the usual
	* convention for text files in the environment being used.
	* Implementations must choose a default sequence that matches one of
	* those allowed by XML 1.0 or XML 1.1, depending on the serialized
	* content. Setting this attribute to <code>null</code> will reset its
	* value to the default value.
	* <br>
	*/
	@:overload @:public public function setNewLine(newLine : String) : Void;
	
	/**
	*  When the application provides a filter, the serializer will call out
	* to the filter before serializing each Node. The filter implementation
	* can choose to remove the node from the stream or to terminate the
	* serialization early.
	* <br> The filter is invoked after the operations requested by the
	* <code>DOMConfiguration</code> parameters have been applied. For
	* example, CDATA sections won't be passed to the filter if "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-cdata-sections'>
	* cdata-sections</a>" is set to <code>false</code>.
	*/
	@:overload @:public public function getFilter() : org.w3c.dom.ls.LSSerializerFilter;
	
	/**
	*  When the application provides a filter, the serializer will call out
	* to the filter before serializing each Node. The filter implementation
	* can choose to remove the node from the stream or to terminate the
	* serialization early.
	* <br> The filter is invoked after the operations requested by the
	* <code>DOMConfiguration</code> parameters have been applied. For
	* example, CDATA sections won't be passed to the filter if "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-cdata-sections'>
	* cdata-sections</a>" is set to <code>false</code>.
	*/
	@:overload @:public public function setFilter(filter : org.w3c.dom.ls.LSSerializerFilter) : Void;
	
	/**
	*  Serialize the specified node as described above in the general
	* description of the <code>LSSerializer</code> interface. The output is
	* written to the supplied <code>LSOutput</code>.
	* <br> When writing to a <code>LSOutput</code>, the encoding is found by
	* looking at the encoding information that is reachable through the
	* <code>LSOutput</code> and the item to be written (or its owner
	* document) in this order:
	* <ol>
	* <li> <code>LSOutput.encoding</code>,
	* </li>
	* <li>
	* <code>Document.inputEncoding</code>,
	* </li>
	* <li>
	* <code>Document.xmlEncoding</code>.
	* </li>
	* </ol>
	* <br> If no encoding is reachable through the above properties, a
	* default encoding of "UTF-8" will be used. If the specified encoding
	* is not supported an "unsupported-encoding" fatal error is raised.
	* <br> If no output is specified in the <code>LSOutput</code>, a
	* "no-output-specified" fatal error is raised.
	* <br> The implementation is responsible of associating the appropriate
	* media type with the serialized data.
	* <br> When writing to a HTTP URI, a HTTP PUT is performed. When writing
	* to other types of URIs, the mechanism for writing the data to the URI
	* is implementation dependent.
	* @param nodeArg  The node to serialize.
	* @param destination The destination for the serialized DOM.
	* @return  Returns <code>true</code> if <code>node</code> was
	*   successfully serialized. Return <code>false</code> in case the
	*   normal processing stopped but the implementation kept serializing
	*   the document; the result of the serialization being implementation
	*   dependent then.
	* @exception LSException
	*    SERIALIZE_ERR: Raised if the <code>LSSerializer</code> was unable to
	*   serialize the node. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function write(nodeArg : org.w3c.dom.Node, destination : org.w3c.dom.ls.LSOutput) : Bool;
	
	/**
	*  A convenience method that acts as if <code>LSSerializer.write</code>
	* was called with a <code>LSOutput</code> with no encoding specified
	* and <code>LSOutput.systemId</code> set to the <code>uri</code>
	* argument.
	* @param nodeArg  The node to serialize.
	* @param uri The URI to write to.
	* @return  Returns <code>true</code> if <code>node</code> was
	*   successfully serialized. Return <code>false</code> in case the
	*   normal processing stopped but the implementation kept serializing
	*   the document; the result of the serialization being implementation
	*   dependent then.
	* @exception LSException
	*    SERIALIZE_ERR: Raised if the <code>LSSerializer</code> was unable to
	*   serialize the node. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function writeToURI(nodeArg : org.w3c.dom.Node, uri : String) : Bool;
	
	/**
	*  Serialize the specified node as described above in the general
	* description of the <code>LSSerializer</code> interface. The output is
	* written to a <code>DOMString</code> that is returned to the caller.
	* The encoding used is the encoding of the <code>DOMString</code> type,
	* i.e. UTF-16. Note that no Byte Order Mark is generated in a
	* <code>DOMString</code> object.
	* @param nodeArg  The node to serialize.
	* @return  Returns the serialized data.
	* @exception DOMException
	*    DOMSTRING_SIZE_ERR: Raised if the resulting string is too long to
	*   fit in a <code>DOMString</code>.
	* @exception LSException
	*    SERIALIZE_ERR: Raised if the <code>LSSerializer</code> was unable to
	*   serialize the node. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function writeToString(nodeArg : org.w3c.dom.Node) : String;
	
	
}
