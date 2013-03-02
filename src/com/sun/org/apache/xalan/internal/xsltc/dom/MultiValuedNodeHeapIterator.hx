package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2006 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: UnionIterator.java 337874 2004-02-16 23:06:53Z minchau $
*/
extern class MultiValuedNodeHeapIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload private function addHeapNode(node : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode) : Void;
	
	@:overload override public function next() : Int;
	
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload private function init() : Void;
	
	@:overload override public function setMark() : Void;
	
	@:overload override public function gotoMark() : Void;
	
	@:overload public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
/**
* An abstract representation of a set of nodes that will be retrieved in
* document order.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$MultiValuedNodeHeapIterator$HeapNode') extern class MultiValuedNodeHeapIterator_HeapNode implements java.lang.Cloneable
{
	private var _node : Int;
	
	private var _isStartSet : Bool;
	
	/**
	* Advance to the next node represented by this {@link HeapNode}
	*
	* @return the next DTM node.
	*/
	@:overload @:abstract public function step() : Int;
	
	/**
	* Creates a deep copy of this {@link HeapNode}.  The clone is not
	* reset from the current position of the original.
	*
	* @return the cloned heap node
	*/
	@:overload public function cloneHeapNode() : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	/**
	* Remembers the current node for the next call to {@link #gotoMark()}.
	*/
	@:overload public function setMark() : Void;
	
	/**
	* Restores the current node remembered by {@link #setMark()}.
	*/
	@:overload public function gotoMark() : Void;
	
	/**
	* Performs a comparison of the two heap nodes
	*
	* @param heapNode the heap node against which to compare
	* @return <code>true</code> if and only if the current node for this
	*         heap node is before the current node of the argument heap
	*         node in document order.
	*/
	@:overload @:abstract public function isLessThan(heapNode : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode) : Bool;
	
	/**
	* Sets context with respect to which this heap node is evaluated.
	*
	* @param node The new context node
	* @return a {@link HeapNode} which may or may not be the same as
	*         this <code>HeapNode</code>.
	*/
	@:overload @:abstract public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	/**
	* Reset the heap node back to its beginning.
	*
	* @return a {@link HeapNode} which may or may not be the same as
	*         this <code>HeapNode</code>.
	*/
	@:overload @:abstract public function reset() : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	
}
