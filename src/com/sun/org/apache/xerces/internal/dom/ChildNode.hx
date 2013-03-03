package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class ChildNode extends com.sun.org.apache.xerces.internal.dom.NodeImpl
{
	/** Next sibling. */
	@:protected private var nextSibling : com.sun.org.apache.xerces.internal.dom.ChildNode;
	
	/**
	* No public constructor; only subclasses of Node should be
	* instantiated, and those normally via a Document's factory methods
	* <p>
	* Every Node knows what Document it belongs to.
	*/
	@:overload @:protected private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl) : Void;
	
	/** Constructor for serialization. */
	@:overload @:public public function new() : Void;
	
	/**
	* Returns a duplicate of a given node. You can consider this a
	* generic "copy constructor" for nodes. The newly returned object should
	* be completely independent of the source object's subtree, so changes
	* in one after the clone has been made will not affect the other.
	* <P>
	* Note: since we never have any children deep is meaningless here,
	* ParentNode overrides this behavior.
	* @see ParentNode
	*
	* <p>
	* Example: Cloning a Text node will copy both the node and the text it
	* contains.
	* <p>
	* Example: Cloning something that has children -- Element or Attr, for
	* example -- will _not_ clone those children unless a "deep clone"
	* has been requested. A shallow clone of an Attr node will yield an
	* empty Attr of the same name.
	* <p>
	* NOTE: Clones will always be read/write, even if the node being cloned
	* is read-only, to permit applications using only the DOM API to obtain
	* editable copies of locked portions of the tree.
	*/
	@:overload @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Returns the parent node of this node
	*/
	@:overload @:public override public function getParentNode() : org.w3c.dom.Node;
	
	/** The next child of this node's parent, or null if none */
	@:overload @:public override public function getNextSibling() : org.w3c.dom.Node;
	
	/** The previous child of this node's parent, or null if none */
	@:overload @:public override public function getPreviousSibling() : org.w3c.dom.Node;
	
	
}
