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
extern interface LSParserFilter
{
	/**
	*  The parser will call this method after each <code>Element</code> start
	* tag has been scanned, but before the remainder of the
	* <code>Element</code> is processed. The intent is to allow the
	* element, including any children, to be efficiently skipped. Note that
	* only element nodes are passed to the <code>startElement</code>
	* function.
	* <br>The element node passed to <code>startElement</code> for filtering
	* will include all of the Element's attributes, but none of the
	* children nodes. The Element may not yet be in place in the document
	* being constructed (it may not have a parent node.)
	* <br>A <code>startElement</code> filter function may access or change
	* the attributes for the Element. Changing Namespace declarations will
	* have no effect on namespace resolution by the parser.
	* <br>For efficiency, the Element node passed to the filter may not be
	* the same one as is actually placed in the tree if the node is
	* accepted. And the actual node (node object identity) may be reused
	* during the process of reading in and filtering a document.
	* @param elementArg The newly encountered element. At the time this
	*   method is called, the element is incomplete - it will have its
	*   attributes, but no children.
	* @return
	* <ul>
	* <li> <code>FILTER_ACCEPT</code> if the <code>Element</code> should
	*   be included in the DOM document being built.
	* </li>
	* <li>
	*   <code>FILTER_REJECT</code> if the <code>Element</code> and all of
	*   its children should be rejected.
	* </li>
	* <li> <code>FILTER_SKIP</code> if the
	*   <code>Element</code> should be skipped. All of its children are
	*   inserted in place of the skipped <code>Element</code> node.
	* </li>
	* <li>
	*   <code>FILTER_INTERRUPT</code> if the filter wants to stop the
	*   processing of the document. Interrupting the processing of the
	*   document does no longer guarantee that the resulting DOM tree is
	*   XML well-formed. The <code>Element</code> is rejected.
	* </li>
	* </ul> Returning
	*   any other values will result in unspecified behavior.
	*/
	@:overload public function startElement(elementArg : org.w3c.dom.Element) : java.StdTypes.Int16;
	
	/**
	* This method will be called by the parser at the completion of the
	* parsing of each node. The node and all of its descendants will exist
	* and be complete. The parent node will also exist, although it may be
	* incomplete, i.e. it may have additional children that have not yet
	* been parsed. Attribute nodes are never passed to this function.
	* <br>From within this method, the new node may be freely modified -
	* children may be added or removed, text nodes modified, etc. The state
	* of the rest of the document outside this node is not defined, and the
	* affect of any attempt to navigate to, or to modify any other part of
	* the document is undefined.
	* <br>For validating parsers, the checks are made on the original
	* document, before any modification by the filter. No validity checks
	* are made on any document modifications made by the filter.
	* <br>If this new node is rejected, the parser might reuse the new node
	* and any of its descendants.
	* @param nodeArg The newly constructed element. At the time this method
	*   is called, the element is complete - it has all of its children
	*   (and their children, recursively) and attributes, and is attached
	*   as a child to its parent.
	* @return
	* <ul>
	* <li> <code>FILTER_ACCEPT</code> if this <code>Node</code> should
	*   be included in the DOM document being built.
	* </li>
	* <li>
	*   <code>FILTER_REJECT</code> if the <code>Node</code> and all of its
	*   children should be rejected.
	* </li>
	* <li> <code>FILTER_SKIP</code> if the
	*   <code>Node</code> should be skipped and the <code>Node</code>
	*   should be replaced by all the children of the <code>Node</code>.
	* </li>
	* <li>
	*   <code>FILTER_INTERRUPT</code> if the filter wants to stop the
	*   processing of the document. Interrupting the processing of the
	*   document does no longer guarantee that the resulting DOM tree is
	*   XML well-formed. The <code>Node</code> is accepted and will be the
	*   last completely parsed node.
	* </li>
	* </ul>
	*/
	@:overload public function acceptNode(nodeArg : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	*  Tells the <code>LSParser</code> what types of nodes to show to the
	* method <code>LSParserFilter.acceptNode</code>. If a node is not shown
	* to the filter using this attribute, it is automatically included in
	* the DOM document being built. See <code>NodeFilter</code> for
	* definition of the constants. The constants <code>SHOW_ATTRIBUTE</code>
	* , <code>SHOW_DOCUMENT</code>, <code>SHOW_DOCUMENT_TYPE</code>,
	* <code>SHOW_NOTATION</code>, <code>SHOW_ENTITY</code>, and
	* <code>SHOW_DOCUMENT_FRAGMENT</code> are meaningless here. Those nodes
	* will never be passed to <code>LSParserFilter.acceptNode</code>.
	* <br> The constants used here are defined in [<a href='http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113'>DOM Level 2 Traversal and      Range</a>]
	* .
	*/
	@:overload public function getWhatToShow() : Int;
	
	
}
