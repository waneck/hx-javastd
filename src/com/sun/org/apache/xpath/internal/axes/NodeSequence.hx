package com.sun.org.apache.xpath.internal.axes;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* $Id: NodeSequence.java,v 1.6 2007/01/12 19:26:42 spericas Exp $
*/
extern class NodeSequence extends com.sun.org.apache.xpath.internal.objects.XObject implements com.sun.org.apache.xml.internal.dtm.DTMIterator implements java.lang.Cloneable implements com.sun.org.apache.xpath.internal.axes.PathComponent
{
	/** The index of the last node in the iteration. */
	@:protected private var m_last : Int;
	
	/**
	* The index of the next node to be fetched.  Useful if this
	* is a cached iterator, and is being used as random access
	* NodeList.
	*/
	@:protected private var m_next : Int;
	
	/**
	* If this iterator needs to cache nodes that are fetched, they
	* are stored in the Vector in the generic object.
	*/
	@:overload @:protected private function getVector() : com.sun.org.apache.xml.internal.utils.NodeVector;
	
	/**
	* Set the vector where nodes will be cached.
	*/
	@:overload @:protected private function SetVector(v : com.sun.org.apache.xml.internal.utils.NodeVector) : Void;
	
	/**
	* If the iterator needs to cache nodes as they are fetched,
	* then this method returns true.
	*/
	@:overload @:public public function hasCache() : Bool;
	
	/**
	* The functional iterator that fetches nodes.
	*/
	@:protected private var m_iter : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Set the functional iterator that fetches nodes.
	* @param iter The iterator that is to be contained.
	*/
	@:overload @:public @:final public function setIter(iter : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Get the functional iterator that fetches nodes.
	* @return The contained iterator.
	*/
	@:overload @:public @:final public function getContainedIter() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* The DTMManager to use if we're using a NodeVector only.
	* We may well want to do away with this, and store it in the NodeVector.
	*/
	@:protected private var m_dtmMgr : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Create a new NodeSequence from a (already cloned) iterator.
	*
	* @param nodeVector
	*/
	@:overload @:public public function new(nodeVector : Dynamic) : Void;
	
	/**
	* Create a new NodeSequence in an invalid (null) state.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @see DTMIterator#getDTM(int)
	*/
	@:overload @:public public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* @see DTMIterator#getDTMManager()
	*/
	@:overload @:public public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* @see DTMIterator#getRoot()
	*/
	@:overload @:public public function getRoot() : Int;
	
	/**
	* @see DTMIterator#setRoot(int, Object)
	*/
	@:overload @:public public function setRoot(nodeHandle : Int, environment : Dynamic) : Void;
	
	/**
	* @see DTMIterator#reset()
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* @see DTMIterator#getWhatToShow()
	*/
	@:overload @:public public function getWhatToShow() : Int;
	
	/**
	* @see DTMIterator#getExpandEntityReferences()
	*/
	@:overload @:public public function getExpandEntityReferences() : Bool;
	
	/**
	* @see DTMIterator#nextNode()
	*/
	@:overload @:public public function nextNode() : Int;
	
	/**
	* @see DTMIterator#previousNode()
	*/
	@:overload @:public public function previousNode() : Int;
	
	/**
	* @see DTMIterator#detach()
	*/
	@:overload @:public override public function detach() : Void;
	
	/**
	* Calling this with a value of false will cause the nodeset
	* to be cached.
	* @see DTMIterator#allowDetachToRelease(boolean)
	*/
	@:overload @:public override public function allowDetachToRelease(allowRelease : Bool) : Void;
	
	/**
	* @see DTMIterator#getCurrentNode()
	*/
	@:overload @:public public function getCurrentNode() : Int;
	
	/**
	* @see DTMIterator#isFresh()
	*/
	@:overload @:public public function isFresh() : Bool;
	
	/**
	* @see DTMIterator#setShouldCacheNodes(boolean)
	*/
	@:overload @:public public function setShouldCacheNodes(b : Bool) : Void;
	
	/**
	* @see DTMIterator#isMutable()
	*/
	@:overload @:public public function isMutable() : Bool;
	
	/**
	* @see DTMIterator#getCurrentPos()
	*/
	@:overload @:public public function getCurrentPos() : Int;
	
	/**
	* @see DTMIterator#runTo(int)
	*/
	@:overload @:public public function runTo(index : Int) : Void;
	
	/**
	* @see DTMIterator#setCurrentPos(int)
	*/
	@:overload @:public public function setCurrentPos(i : Int) : Void;
	
	/**
	* @see DTMIterator#item(int)
	*/
	@:overload @:public public function item(index : Int) : Int;
	
	/**
	* @see DTMIterator#setItem(int, int)
	*/
	@:overload @:public public function setItem(node : Int, index : Int) : Void;
	
	/**
	* @see DTMIterator#getLength()
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Note: Not a deep clone.
	* @see DTMIterator#cloneWithReset()
	*/
	@:overload @:public public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Get a clone of this iterator, but don't reset the iteration in the
	* process, so that it may be used from the current position.
	* Note: Not a deep clone.
	*
	* @return A clone of this object.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* @see DTMIterator#isDocOrdered()
	*/
	@:overload @:public public function isDocOrdered() : Bool;
	
	/**
	* @see DTMIterator#getAxis()
	*/
	@:overload @:public public function getAxis() : Int;
	
	/**
	* @see PathComponent#getAnalysisBits()
	*/
	@:overload @:public public function getAnalysisBits() : Int;
	
	/**
	* @see org.apache.xpath.Expression#fixupVariables(Vector, int)
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Add the node into a vector of nodes where it should occur in
	* document order.
	* @param node The node to be added.
	* @return insertIndex.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:protected private function addNodeInDocOrder(node : Int) : Int;
	
	/**
	* It used to be that many locations in the code simply
	* did an assignment to this.m_obj directly, rather than
	* calling the setObject(Object) method. The problem is
	* that our super-class would be updated on what the
	* cache associated with this NodeSequence, but
	* we wouldn't know ourselves.
	* <p>
	* All setting of m_obj is done through setObject() now,
	* and this method over-rides the super-class method.
	* So now we are in the loop have an opportunity
	* to update some caching information.
	*
	*/
	@:overload @:protected override private function setObject(obj : Dynamic) : Void;
	
	/**
	* Get the cached list of nodes appended with
	* values obtained from the iterator as
	* a NodeSequence is walked when its
	* nextNode() method is called.
	*/
	@:overload @:protected private function getIteratorCache() : com.sun.org.apache.xpath.internal.axes.NodeSequence.NodeSequence_IteratorCache;
	
	
}
/**
* Each NodeSequence object has an iterator which is "walked".
* As an iterator is walked one obtains nodes from it.
* As those nodes are obtained they may be cached, making
* the next walking of a copy or clone of the iterator faster.
* This field (m_cache) is a reference to such a cache,
* which is populated as the iterator is walked.
* <p>
* Note that multiple NodeSequence objects may hold a
* reference to the same cache, and also
* (and this is important) the same iterator.
* The iterator and its cache may be shared among
* many NodeSequence objects.
* <p>
* If one of the NodeSequence objects walks ahead
* of the others it fills in the cache.
* As the others NodeSequence objects catch up they
* get their values from
* the cache rather than the iterator itself, so
* the iterator is only ever walked once and everyone
* benefits from the cache.
* <p>
* At some point the cache may be
* complete due to walking to the end of one of
* the copies of the iterator, and the cache is
* then marked as "complete".
* and the cache will have no more nodes added to it.
* <p>
* Its use-count is the number of NodeSequence objects that use it.
*/
@:native('com$sun$org$apache$xpath$internal$axes$NodeSequence$IteratorCache') @:internal extern class NodeSequence_IteratorCache
{
	
}
