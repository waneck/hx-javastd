package javax.xml.transform.dom;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class DOMResult implements javax.xml.transform.Result
{
	/** <p>If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns <code>true</code> when passed this value as an argument,
	* the <code>Transformer</code> supports <code>Result</code> output of this type.</p>
	*/
	public static var FEATURE(default, null) : String;
	
	/**
	* <p>Zero-argument default constructor.</p>
	*
	* <p><code>node</code>,
	* <code>siblingNode</code> and
	* <code>systemId</code>
	* will be set to <code>null</code>.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>Use a DOM node to create a new output target.</p>
	*
	* <p>In practice, the node should be
	* a {@link org.w3c.dom.Document} node,
	* a {@link org.w3c.dom.DocumentFragment} node, or
	* a {@link org.w3c.dom.Element} node.
	* In other words, a node that accepts children.</p>
	*
	* <p><code>siblingNode</code> and
	* <code>systemId</code>
	* will be set to <code>null</code>.</p>
	*
	* @param node The DOM node that will contain the result tree.
	*/
	@:overload public function new(node : org.w3c.dom.Node) : Void;
	
	/**
	* <p>Use a DOM node to create a new output target with the specified System ID.<p>
	*
	* <p>In practice, the node should be
	* a {@link org.w3c.dom.Document} node,
	* a {@link org.w3c.dom.DocumentFragment} node, or
	* a {@link org.w3c.dom.Element} node.
	* In other words, a node that accepts children.</p>
	*
	* <p><code>siblingNode</code> will be set to <code>null</code>.</p>
	*
	* @param node The DOM node that will contain the result tree.
	* @param systemId The system identifier which may be used in association with this node.
	*/
	@:overload public function new(node : org.w3c.dom.Node, systemId : String) : Void;
	
	/**
	* <p>Use a DOM node to create a new output target specifying the child node where the result nodes should be inserted before.</p>
	*
	* <p>In practice, <code>node</code> and <code>nextSibling</code> should be
	* a {@link org.w3c.dom.Document} node,
	* a {@link org.w3c.dom.DocumentFragment} node, or
	* a {@link org.w3c.dom.Element} node.
	* In other words, a node that accepts children.</p>
	*
	* <p>Use <code>nextSibling</code> to specify the child node
	* where the result nodes should be inserted before.
	* If <code>nextSibling</code> is not a sibling of <code>node</code>,
	* then an <code>IllegalArgumentException</code> is thrown.
	* If <code>node</code> is <code>null</code> and <code>nextSibling</code> is not <code>null</code>,
	* then an <code>IllegalArgumentException</code> is thrown.
	* If <code>nextSibling</code> is <code>null</code>,
	* then the behavior is the same as calling {@link #DOMResult(Node node)},
	* i.e. append the result nodes as the last child of the specified <code>node</code>.</p>
	*
	* <p><code>systemId</code> will be set to <code>null</code>.</p>
	*
	* @param node The DOM node that will contain the result tree.
	* @param nextSibling The child node where the result nodes should be inserted before.
	*
	* @throws IllegalArgumentException If <code>nextSibling</code> is not a sibling of <code>node</code> or
	*   <code>node</code> is <code>null</code> and <code>nextSibling</code>
	*   is not <code>null</code>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(node : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* <p>Use a DOM node to create a new output target specifying the child node where the result nodes should be inserted before and
	* the specified System ID.</p>
	*
	* <p>In practice, <code>node</code> and <code>nextSibling</code> should be
	* a {@link org.w3c.dom.Document} node,
	* a {@link org.w3c.dom.DocumentFragment} node, or a
	* {@link org.w3c.dom.Element} node.
	* In other words, a node that accepts children.</p>
	*
	* <p>Use <code>nextSibling</code> to specify the child node
	* where the result nodes should be inserted before.
	* If <code>nextSibling</code> is not a sibling of <code>node</code>,
	* then an <code>IllegalArgumentException</code> is thrown.
	* If <code>node</code> is <code>null</code> and <code>nextSibling</code> is not <code>null</code>,
	* then an <code>IllegalArgumentException</code> is thrown.
	* If <code>nextSibling</code> is <code>null</code>,
	* then the behavior is the same as calling {@link #DOMResult(Node node, String systemId)},
	* i.e. append the result nodes as the last child of the specified node and use the specified System ID.</p>
	*
	* @param node The DOM node that will contain the result tree.
	* @param nextSibling The child node where the result nodes should be inserted before.
	* @param systemId The system identifier which may be used in association with this node.
	*
	* @throws IllegalArgumentException If <code>nextSibling</code> is not a
	*   sibling of <code>node</code> or
	*   <code>node</code> is <code>null</code> and <code>nextSibling</code>
	*   is not <code>null</code>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(node : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node, systemId : String) : Void;
	
	/**
	* <p>Set the node that will contain the result DOM tree.<p>
	*
	* <p>In practice, the node should be
	* a {@link org.w3c.dom.Document} node,
	* a {@link org.w3c.dom.DocumentFragment} node, or
	* a {@link org.w3c.dom.Element} node.
	* In other words, a node that accepts children.</p>
	*
	* <p>An <code>IllegalStateException</code> is thrown if
	* <code>nextSibling</code> is not <code>null</code> and
	* <code>node</code> is not a parent of <code>nextSibling</code>.
	* An <code>IllegalStateException</code> is thrown if <code>node</code> is <code>null</code> and
	* <code>nextSibling</code> is not <code>null</code>.</p>
	*
	* @param node The node to which the transformation will be appended.
	*
	* @throws IllegalStateException If <code>nextSibling</code> is not
	*   <code>null</code> and
	*   <code>nextSibling</code> is not a child of <code>node</code> or
	*   <code>node</code> is <code>null</code> and
	*   <code>nextSibling</code> is not <code>null</code>.
	*/
	@:overload public function setNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* <p>Get the node that will contain the result DOM tree.</p>
	*
	* <p>If no node was set via
	* {@link #DOMResult(Node node)},
	* {@link #DOMResult(Node node, String systeId)},
	* {@link #DOMResult(Node node, Node nextSibling)},
	* {@link #DOMResult(Node node, Node nextSibling, String systemId)} or
	* {@link #setNode(Node node)},
	* then the node will be set by the transformation, and may be obtained from this method once the transformation is complete.
	* Calling this method before the transformation will return <code>null</code>.</p>
	*
	* @return The node to which the transformation will be appended.
	*/
	@:overload public function getNode() : org.w3c.dom.Node;
	
	/**
	* <p>Set the child node before which the result nodes will be inserted.</p>
	*
	* <p>Use <code>nextSibling</code> to specify the child node
	* before which the result nodes should be inserted.
	* If <code>nextSibling</code> is not a descendant of <code>node</code>,
	* then an <code>IllegalArgumentException</code> is thrown.
	* If <code>node</code> is <code>null</code> and <code>nextSibling</code> is not <code>null</code>,
	* then an <code>IllegalStateException</code> is thrown.
	* If <code>nextSibling</code> is <code>null</code>,
	* then the behavior is the same as calling {@link #DOMResult(Node node)},
	* i.e. append the result nodes as the last child of the specified <code>node</code>.</p>
	*
	* @param nextSibling The child node before which the result nodes will be inserted.
	*
	* @throws IllegalArgumentException If <code>nextSibling</code> is not a
	*   descendant of <code>node</code>.
	* @throws IllegalStateException If <code>node</code> is <code>null</code>
	*   and <code>nextSibling</code> is not <code>null</code>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setNextSibling(nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* <p>Get the child node before which the result nodes will be inserted.</p>
	*
	* <p>If no node was set via
	* {@link #DOMResult(Node node, Node nextSibling)},
	* {@link #DOMResult(Node node, Node nextSibling, String systemId)} or
	* {@link #setNextSibling(Node nextSibling)},
	* then <code>null</code> will be returned.</p>
	*
	* @return The child node before which the result nodes will be inserted.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* <p>Set the systemId that may be used in association with the node.</p>
	*
	* @param systemId The system identifier as a URI string.
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* <p>Get the System Identifier.</p>
	*
	* <p>If no System ID was set via
	* {@link #DOMResult(Node node, String systemId)},
	* {@link #DOMResult(Node node, Node nextSibling, String systemId)} or
	* {@link #setSystemId(String systemId)},
	* then <code>null</code> will be returned.</p>
	*
	* @return The system identifier.
	*/
	@:overload public function getSystemId() : String;
	
	
}
