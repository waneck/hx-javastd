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
extern interface LSParser
{
	/**
	*  The <code>DOMConfiguration</code> object used when parsing an input
	* source. This <code>DOMConfiguration</code> is specific to the parse
	* operation. No parameter values from this <code>DOMConfiguration</code>
	*  object are passed automatically to the <code>DOMConfiguration</code>
	* object on the <code>Document</code> that is created, or used, by the
	* parse operation. The DOM application is responsible for passing any
	* needed parameter values from this <code>DOMConfiguration</code>
	* object to the <code>DOMConfiguration</code> object referenced by the
	* <code>Document</code> object.
	* <br> In addition to the parameters recognized in on the <a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#DOMConfiguration'>
	* DOMConfiguration</a> interface defined in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , the <code>DOMConfiguration</code> objects for <code>LSParser</code>
	* add or modify the following parameters:
	* <dl>
	* <dt>
	* <code>"charset-overrides-xml-encoding"</code></dt>
	* <dd>
	* <dl>
	* <dt><code>true</code></dt>
	* <dd>[<em>optional</em>] (<em>default</em>) If a higher level protocol such as HTTP [<a href='http://www.ietf.org/rfc/rfc2616.txt'>IETF RFC 2616</a>] provides an
	* indication of the character encoding of the input stream being
	* processed, that will override any encoding specified in the XML
	* declaration or the Text declaration (see also section 4.3.3,
	* "Character Encoding in Entities", in [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>]).
	* Explicitly setting an encoding in the <code>LSInput</code> overrides
	* any encoding from the protocol. </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>required</em>] The parser ignores any character set encoding information from
	* higher-level protocols. </dd>
	* </dl></dd>
	* <dt><code>"disallow-doctype"</code></dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>optional</em>] Throw a fatal <b>"doctype-not-allowed"</b> error if a doctype node is found while parsing the document. This is
	* useful when dealing with things like SOAP envelopes where doctype
	* nodes are not allowed. </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Allow doctype nodes in the document. </dd>
	* </dl></dd>
	* <dt>
	* <code>"ignore-unknown-character-denormalizations"</code></dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) If, while verifying full normalization when [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>] is
	* supported, a processor encounters characters for which it cannot
	* determine the normalization properties, then the processor will
	* ignore any possible denormalizations caused by these characters.
	* This parameter is ignored for [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>]. </dd>
	* <dt>
	* <code>false</code></dt>
	* <dd>[<em>optional</em>] Report an fatal <b>"unknown-character-denormalization"</b> error if a character is encountered for which the processor cannot
	* determine the normalization properties. </dd>
	* </dl></dd>
	* <dt><code>"infoset"</code></dt>
	* <dd> See
	* the definition of <code>DOMConfiguration</code> for a description of
	* this parameter. Unlike in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , this parameter will default to <code>true</code> for
	* <code>LSParser</code>. </dd>
	* <dt><code>"namespaces"</code></dt>
	* <dd>
	* <dl>
	* <dt><code>true</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Perform the namespace processing as defined in [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	*  and [<a href='http://www.w3.org/TR/2004/REC-xml-names11-20040204/'>XML Namespaces 1.1</a>]
	* . </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>optional</em>] Do not perform the namespace processing. </dd>
	* </dl></dd>
	* <dt>
	* <code>"resource-resolver"</code></dt>
	* <dd>[<em>required</em>] A reference to a <code>LSResourceResolver</code> object, or null. If
	* the value of this parameter is not null when an external resource
	* (such as an external XML entity or an XML schema location) is
	* encountered, the implementation will request that the
	* <code>LSResourceResolver</code> referenced in this parameter resolves
	* the resource. </dd>
	* <dt><code>"supported-media-types-only"</code></dt>
	* <dd>
	* <dl>
	* <dt>
	* <code>true</code></dt>
	* <dd>[<em>optional</em>] Check that the media type of the parsed resource is a supported media
	* type. If an unsupported media type is encountered, a fatal error of
	* type <b>"unsupported-media-type"</b> will be raised. The media types defined in [<a href='http://www.ietf.org/rfc/rfc3023.txt'>IETF RFC 3023</a>] must always
	* be accepted. </dd>
	* <dt><code>false</code></dt>
	* <dd>[<em>required</em>] (<em>default</em>) Accept any media type. </dd>
	* </dl></dd>
	* <dt><code>"validate"</code></dt>
	* <dd> See the definition of
	* <code>DOMConfiguration</code> for a description of this parameter.
	* Unlike in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , the processing of the internal subset is always accomplished, even
	* if this parameter is set to <code>false</code>. </dd>
	* <dt>
	* <code>"validate-if-schema"</code></dt>
	* <dd> See the definition of
	* <code>DOMConfiguration</code> for a description of this parameter.
	* Unlike in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , the processing of the internal subset is always accomplished, even
	* if this parameter is set to <code>false</code>. </dd>
	* <dt>
	* <code>"well-formed"</code></dt>
	* <dd> See the definition of
	* <code>DOMConfiguration</code> for a description of this parameter.
	* Unlike in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	* , this parameter cannot be set to <code>false</code>. </dd>
	* </dl>
	*/
	@:overload @:public public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	*  When a filter is provided, the implementation will call out to the
	* filter as it is constructing the DOM tree structure. The filter can
	* choose to remove elements from the document being constructed, or to
	* terminate the parsing early.
	* <br> The filter is invoked after the operations requested by the
	* <code>DOMConfiguration</code> parameters have been applied. For
	* example, if "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-validate'>
	* validate</a>" is set to <code>true</code>, the validation is done before invoking the
	* filter.
	*/
	@:overload @:public public function getFilter() : org.w3c.dom.ls.LSParserFilter;
	
	/**
	*  When a filter is provided, the implementation will call out to the
	* filter as it is constructing the DOM tree structure. The filter can
	* choose to remove elements from the document being constructed, or to
	* terminate the parsing early.
	* <br> The filter is invoked after the operations requested by the
	* <code>DOMConfiguration</code> parameters have been applied. For
	* example, if "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-validate'>
	* validate</a>" is set to <code>true</code>, the validation is done before invoking the
	* filter.
	*/
	@:overload @:public public function setFilter(filter : org.w3c.dom.ls.LSParserFilter) : Void;
	
	/**
	*  <code>true</code> if the <code>LSParser</code> is asynchronous,
	* <code>false</code> if it is synchronous.
	*/
	@:overload @:public public function getAsync() : Bool;
	
	/**
	*  <code>true</code> if the <code>LSParser</code> is currently busy
	* loading a document, otherwise <code>false</code>.
	*/
	@:overload @:public public function getBusy() : Bool;
	
	/**
	* Parse an XML document from a resource identified by a
	* <code>LSInput</code>.
	* @param input  The <code>LSInput</code> from which the source of the
	*   document is to be read.
	* @return  If the <code>LSParser</code> is a synchronous
	*   <code>LSParser</code>, the newly created and populated
	*   <code>Document</code> is returned. If the <code>LSParser</code> is
	*   asynchronous, <code>null</code> is returned since the document
	*   object may not yet be constructed when this method returns.
	* @exception DOMException
	*    INVALID_STATE_ERR: Raised if the <code>LSParser</code>'s
	*   <code>LSParser.busy</code> attribute is <code>true</code>.
	* @exception LSException
	*    PARSE_ERR: Raised if the <code>LSParser</code> was unable to load
	*   the XML document. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function parse(input : org.w3c.dom.ls.LSInput) : org.w3c.dom.Document;
	
	/**
	*  Parse an XML document from a location identified by a URI reference [<a href='http://www.ietf.org/rfc/rfc2396.txt'>IETF RFC 2396</a>]. If the URI
	* contains a fragment identifier (see section 4.1 in [<a href='http://www.ietf.org/rfc/rfc2396.txt'>IETF RFC 2396</a>]), the
	* behavior is not defined by this specification, future versions of
	* this specification may define the behavior.
	* @param uri The location of the XML document to be read.
	* @return  If the <code>LSParser</code> is a synchronous
	*   <code>LSParser</code>, the newly created and populated
	*   <code>Document</code> is returned, or <code>null</code> if an error
	*   occured. If the <code>LSParser</code> is asynchronous,
	*   <code>null</code> is returned since the document object may not yet
	*   be constructed when this method returns.
	* @exception DOMException
	*    INVALID_STATE_ERR: Raised if the <code>LSParser.busy</code>
	*   attribute is <code>true</code>.
	* @exception LSException
	*    PARSE_ERR: Raised if the <code>LSParser</code> was unable to load
	*   the XML document. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function parseURI(uri : String) : org.w3c.dom.Document;
	
	/**
	*  Parse an XML fragment from a resource identified by a
	* <code>LSInput</code> and insert the content into an existing document
	* at the position specified with the <code>context</code> and
	* <code>action</code> arguments. When parsing the input stream, the
	* context node (or its parent, depending on where the result will be
	* inserted) is used for resolving unbound namespace prefixes. The
	* context node's <code>ownerDocument</code> node (or the node itself if
	* the node of type <code>DOCUMENT_NODE</code>) is used to resolve
	* default attributes and entity references.
	* <br> As the new data is inserted into the document, at least one
	* mutation event is fired per new immediate child or sibling of the
	* context node.
	* <br> If the context node is a <code>Document</code> node and the action
	* is <code>ACTION_REPLACE_CHILDREN</code>, then the document that is
	* passed as the context node will be changed such that its
	* <code>xmlEncoding</code>, <code>documentURI</code>,
	* <code>xmlVersion</code>, <code>inputEncoding</code>,
	* <code>xmlStandalone</code>, and all other such attributes are set to
	* what they would be set to if the input source was parsed using
	* <code>LSParser.parse()</code>.
	* <br> This method is always synchronous, even if the
	* <code>LSParser</code> is asynchronous (<code>LSParser.async</code> is
	* <code>true</code>).
	* <br> If an error occurs while parsing, the caller is notified through
	* the <code>ErrorHandler</code> instance associated with the "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	* error-handler</a>" parameter of the <code>DOMConfiguration</code>.
	* <br> When calling <code>parseWithContext</code>, the values of the
	* following configuration parameters will be ignored and their default
	* values will always be used instead: "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-validate'>
	* validate</a>", "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-validate-if-schema'>
	* validate-if-schema</a>", and "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-element-content-whitespace'>
	* element-content-whitespace</a>". Other parameters will be treated normally, and the parser is expected
	* to call the <code>LSParserFilter</code> just as if a whole document
	* was parsed.
	* @param input  The <code>LSInput</code> from which the source document
	*   is to be read. The source document must be an XML fragment, i.e.
	*   anything except a complete XML document (except in the case where
	*   the context node of type <code>DOCUMENT_NODE</code>, and the action
	*   is <code>ACTION_REPLACE_CHILDREN</code>), a DOCTYPE (internal
	*   subset), entity declaration(s), notation declaration(s), or XML or
	*   text declaration(s).
	* @param contextArg  The node that is used as the context for the data
	*   that is being parsed. This node must be a <code>Document</code>
	*   node, a <code>DocumentFragment</code> node, or a node of a type
	*   that is allowed as a child of an <code>Element</code> node, e.g. it
	*   cannot be an <code>Attribute</code> node.
	* @param action  This parameter describes which action should be taken
	*   between the new set of nodes being inserted and the existing
	*   children of the context node. The set of possible actions is
	*   defined in <code>ACTION_TYPES</code> above.
	* @return  Return the node that is the result of the parse operation. If
	*   the result is more than one top-level node, the first one is
	*   returned.
	* @exception DOMException
	*   HIERARCHY_REQUEST_ERR: Raised if the content cannot replace, be
	*   inserted before, after, or as a child of the context node (see also
	*   <code>Node.insertBefore</code> or <code>Node.replaceChild</code> in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>DOM Level 3 Core</a>]
	*   ).
	*   <br> NOT_SUPPORTED_ERR: Raised if the <code>LSParser</code> doesn't
	*   support this method, or if the context node is of type
	*   <code>Document</code> and the DOM implementation doesn't support
	*   the replacement of the <code>DocumentType</code> child or
	*   <code>Element</code> child.
	*   <br> NO_MODIFICATION_ALLOWED_ERR: Raised if the context node is a
	*   read only node and the content is being appended to its child list,
	*   or if the parent node of the context node is read only node and the
	*   content is being inserted in its child list.
	*   <br> INVALID_STATE_ERR: Raised if the <code>LSParser.busy</code>
	*   attribute is <code>true</code>.
	* @exception LSException
	*    PARSE_ERR: Raised if the <code>LSParser</code> was unable to load
	*   the XML fragment. DOM applications should attach a
	*   <code>DOMErrorHandler</code> using the parameter "<a href='http://www.w3.org/TR/DOM-Level-3-Core/core.html#parameter-error-handler'>
	*   error-handler</a>" if they wish to get details on the error.
	*/
	@:overload @:public public function parseWithContext(input : org.w3c.dom.ls.LSInput, contextArg : org.w3c.dom.Node, action : java.StdTypes.Int16) : org.w3c.dom.Node;
	
	/**
	*  Abort the loading of the document that is currently being loaded by
	* the <code>LSParser</code>. If the <code>LSParser</code> is currently
	* not busy, a call to this method does nothing.
	*/
	@:overload @:public public function abort() : Void;
	
	
}
