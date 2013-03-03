package com.sun.org.apache.xerces.internal.dom;
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
extern class RangeImpl implements org.w3c.dom.ranges.Range
{
	/** The constructor. Clients must use DocumentRange.createRange(),
	*  because it registers the Range with the document, so it can
	*  be fixed-up.
	*/
	@:overload @:public public function new(document : com.sun.org.apache.xerces.internal.dom.DocumentImpl) : Void;
	
	@:overload @:public public function getStartContainer() : org.w3c.dom.Node;
	
	@:overload @:public public function getStartOffset() : Int;
	
	@:overload @:public public function getEndContainer() : org.w3c.dom.Node;
	
	@:overload @:public public function getEndOffset() : Int;
	
	@:overload @:public public function getCollapsed() : Bool;
	
	@:overload @:public public function getCommonAncestorContainer() : org.w3c.dom.Node;
	
	@:overload @:public public function setStart(refNode : org.w3c.dom.Node, offset : Int) : Void;
	
	@:overload @:public public function setEnd(refNode : org.w3c.dom.Node, offset : Int) : Void;
	
	@:overload @:public public function setStartBefore(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function setStartAfter(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function setEndBefore(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function setEndAfter(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function collapse(toStart : Bool) : Void;
	
	@:overload @:public public function selectNode(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function selectNodeContents(refNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function compareBoundaryPoints(how : java.StdTypes.Int16, sourceRange : org.w3c.dom.ranges.Range) : java.StdTypes.Int16;
	
	@:overload @:public public function deleteContents() : Void;
	
	@:overload @:public public function extractContents() : org.w3c.dom.DocumentFragment;
	
	@:overload @:public public function cloneContents() : org.w3c.dom.DocumentFragment;
	
	@:overload @:public public function insertNode(newNode : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function surroundContents(newParent : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function cloneRange() : org.w3c.dom.ranges.Range;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function detach() : Void;
	
	/** This function is called from the DOM.
	*  This node has already been inserted into the DOM.
	*  Fix-up any offsets.
	*/
	@:overload @:public public function insertedNodeFromDOM(node : org.w3c.dom.Node) : Void;
	
	
}
