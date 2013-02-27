package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* A representation of a node (element) in an XML document.
* This interface extnends the standard DOM Node interface with methods for
* getting and setting the value of a node, for
* getting and setting the parent of a node, and for removing a node.
*/
extern interface Node extends org.w3c.dom.Node
{
	/**
	* Returns the value of this node if this is a <code>Text</code> node or the
	* value of the immediate child of this node otherwise.
	* If there is an immediate child of this <code>Node</code> that it is a
	* <code>Text</code> node then it's value will be returned. If there is
	* more than one <code>Text</code> node then the value of the first
	* <code>Text</code> Node will be returned.
	* Otherwise <code>null</code> is returned.
	*
	* @return a <code>String</code> with the text of this node if this is a
	*          <code>Text</code> node or the text contained by the first
	*          immediate child of this <code>Node</code> object that is a
	*          <code>Text</code> object if such a child exists;
	*          <code>null</code> otherwise.
	*/
	@:overload @:public @:public @:public @:public public function getValue() : String;
	
	/**
	* If this is a Text node then this method will set its value,
	* otherwise it sets the value of  the immediate (Text) child of this node.
	* The value of the immediate child of this node can be set only if, there is
	* one child node and that node is a <code>Text</code> node, or if
	* there are no children in which case a child <code>Text</code> node will be
	* created.
	*
	* @exception IllegalStateException if the node is not a <code>Text</code>
	*              node and either has more than one child node or has a child
	*              node that is not a <code>Text</code> node.
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public @:public @:public @:public public function setValue(value : String) : Void;
	
	/**
	* Sets the parent of this <code>Node</code> object to the given
	* <code>SOAPElement</code> object.
	*
	* @param parent the <code>SOAPElement</code> object to be set as
	*       the parent of this <code>Node</code> object
	*
	* @exception SOAPException if there is a problem in setting the
	*                          parent to the given element
	* @see #getParentElement
	*/
	@:overload @:public public function setParentElement(parent : javax.xml.soap.SOAPElement) : Void;
	
	/**
	* Returns the parent element of this <code>Node</code> object.
	* This method can throw an <code>UnsupportedOperationException</code>
	* if the tree is not kept in memory.
	*
	* @return the <code>SOAPElement</code> object that is the parent of
	*         this <code>Node</code> object or <code>null</code> if this
	*         <code>Node</code> object is root
	*
	* @exception UnsupportedOperationException if the whole tree is not
	*            kept in memory
	* @see #setParentElement
	*/
	@:overload @:public @:public @:public @:public public function getParentElement() : javax.xml.soap.SOAPElement;
	
	/**
	* Removes this <code>Node</code> object from the tree.
	*/
	@:overload @:public @:public @:public @:public public function detachNode() : Void;
	
	/**
	* Notifies the implementation that this <code>Node</code>
	* object is no longer being used by the application and that the
	* implementation is free to reuse this object for nodes that may
	* be created later.
	* <P>
	* Calling the method <code>recycleNode</code> implies that the method
	* <code>detachNode</code> has been called previously.
	*/
	@:overload @:public @:public @:public @:public public function recycleNode() : Void;
	
	
}
