package javax.xml.crypto.dsig.dom;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* $Id: DOMSignContext.java,v 1.9 2005/05/10 16:31:14 mullan Exp $
*/
extern class DOMSignContext extends javax.xml.crypto.dom.DOMCryptoContext implements javax.xml.crypto.dsig.XMLSignContext
{
	/**
	* Creates a <code>DOMSignContext</code> with the specified signing key
	* and parent node. The signing key is stored in a
	* {@link KeySelector#singletonKeySelector singleton KeySelector} that is
	* returned by the {@link #getKeySelector getKeySelector} method.
	* The marshalled <code>XMLSignature</code> will be added as the last
	* child element of the specified parent node unless a next sibling node is
	* specified by invoking the {@link #setNextSibling setNextSibling} method.
	*
	* @param signingKey the signing key
	* @param parent the parent node
	* @throws NullPointerException if <code>signingKey</code> or
	*    <code>parent</code> is <code>null</code>
	*/
	@:overload public function new(signingKey : java.security.Key, parent : org.w3c.dom.Node) : Void;
	
	/**
	* Creates a <code>DOMSignContext</code> with the specified signing key,
	* parent and next sibling nodes. The signing key is stored in a
	* {@link KeySelector#singletonKeySelector singleton KeySelector} that is
	* returned by the {@link #getKeySelector getKeySelector} method.
	* The marshalled <code>XMLSignature</code> will be inserted as a child
	* element of the specified parent node and immediately before the
	* specified next sibling node.
	*
	* @param signingKey the signing key
	* @param parent the parent node
	* @param nextSibling the next sibling node
	* @throws NullPointerException if <code>signingKey</code>,
	*    <code>parent</code> or <code>nextSibling</code> is <code>null</code>
	*/
	@:overload public function new(signingKey : java.security.Key, parent : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* Creates a <code>DOMSignContext</code> with the specified key selector
	* and parent node. The marshalled <code>XMLSignature</code> will be added
	* as the last child element of the specified parent node unless a next
	* sibling node is specified by invoking the
	* {@link #setNextSibling setNextSibling} method.
	*
	* @param ks the key selector
	* @param parent the parent node
	* @throws NullPointerException if <code>ks</code> or <code>parent</code>
	*    is <code>null</code>
	*/
	@:overload public function new(ks : javax.xml.crypto.KeySelector, parent : org.w3c.dom.Node) : Void;
	
	/**
	* Creates a <code>DOMSignContext</code> with the specified key selector,
	* parent and next sibling nodes. The marshalled <code>XMLSignature</code>
	* will be inserted as a child element of the specified parent node and
	* immediately before the specified next sibling node.
	*
	* @param ks the key selector
	* @param parent the parent node
	* @param nextSibling the next sibling node
	* @throws NullPointerException if <code>ks</code>, <code>parent</code> or
	*    <code>nextSibling</code> is <code>null</code>
	*/
	@:overload public function new(ks : javax.xml.crypto.KeySelector, parent : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* Sets the parent node.
	*
	* @param parent the parent node. The marshalled <code>XMLSignature</code>
	*    will be added as a child element of this node.
	* @throws NullPointerException if <code>parent</code> is <code>null</code>
	* @see #getParent
	*/
	@:overload public function setParent(parent : org.w3c.dom.Node) : Void;
	
	/**
	* Sets the next sibling node.
	*
	* @param nextSibling the next sibling node. The marshalled
	*    <code>XMLSignature</code> will be inserted immediately before this
	*    node. Specify <code>null</code> to remove the current setting.
	* @see #getNextSibling
	*/
	@:overload public function setNextSibling(nextSibling : org.w3c.dom.Node) : Void;
	
	/**
	* Returns the parent node.
	*
	* @return the parent node (never <code>null</code>)
	* @see #setParent(Node)
	*/
	@:overload public function getParent() : org.w3c.dom.Node;
	
	/**
	* Returns the nextSibling node.
	*
	* @return the nextSibling node, or <code>null</code> if not specified.
	* @see #setNextSibling(Node)
	*/
	@:overload public function getNextSibling() : org.w3c.dom.Node;
	
	
}
