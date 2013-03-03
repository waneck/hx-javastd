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
* $Id: UnionIterator.java,v 1.5 2005/09/28 13:48:38 pvedula Exp $
*/
extern class UnionIterator extends com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator
{
	@:overload @:public public function new(dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	@:overload @:public public function addIterator(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : com.sun.org.apache.xalan.internal.xsltc.dom.UnionIterator;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$UnionIterator$LookAheadIterator') @:internal extern class UnionIterator_LookAheadIterator extends com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode
{
	@:public public var iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function new(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload @:public override public function step() : Int;
	
	@:overload @:public override public function cloneHeapNode() : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	@:overload @:public override public function setMark() : Void;
	
	@:overload @:public override public function gotoMark() : Void;
	
	@:overload @:public override public function isLessThan(heapNode : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode) : Bool;
	
	@:overload @:public override public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	@:overload @:public override public function reset() : com.sun.org.apache.xalan.internal.xsltc.dom.MultiValuedNodeHeapIterator.MultiValuedNodeHeapIterator_HeapNode;
	
	
}
