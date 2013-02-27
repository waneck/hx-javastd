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
* $Id: DOMValidateContext.java,v 1.8 2005/05/10 16:31:14 mullan Exp $
*/
extern class DOMValidateContext extends javax.xml.crypto.dom.DOMCryptoContext implements javax.xml.crypto.dsig.XMLValidateContext
{
	/**
	* Creates a <code>DOMValidateContext</code> containing the specified key
	* selector and node.
	*
	* @param ks a key selector for finding a validation key
	* @param node the node
	* @throws NullPointerException if <code>ks</code> or <code>node</code> is
	*    <code>null</code>
	*/
	@:overload public function new(ks : javax.xml.crypto.KeySelector, node : org.w3c.dom.Node) : Void;
	
	/**
	* Creates a <code>DOMValidateContext</code> containing the specified key
	* and node. The validating key will be stored in a
	* {@link KeySelector#singletonKeySelector singleton KeySelector} that
	* is returned when the {@link #getKeySelector getKeySelector}
	* method is called.
	*
	* @param validatingKey the validating key
	* @param node the node
	* @throws NullPointerException if <code>validatingKey</code> or
	*    <code>node</code> is <code>null</code>
	*/
	@:overload public function new(validatingKey : java.security.Key, node : org.w3c.dom.Node) : Void;
	
	/**
	* Sets the node.
	*
	* @param node the node
	* @throws NullPointerException if <code>node</code> is <code>null</code>
	* @see #getNode
	*/
	@:overload public function setNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* Returns the node.
	*
	* @return the node (never <code>null</code>)
	* @see #setNode(Node)
	*/
	@:overload public function getNode() : org.w3c.dom.Node;
	
	
}
