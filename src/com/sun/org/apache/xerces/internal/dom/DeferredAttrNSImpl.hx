package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
/*
* WARNING: because java doesn't support multi-inheritance some code is
* duplicated. If you're changing this file you probably want to change
* DeferredAttrImpl.java at the same time.
*/
/**
* DeferredAttrNSImpl is to AttrNSImpl, what DeferredAttrImpl is to
* AttrImpl.
*
* @xerces.internal
*
* @author Andy Clark, IBM
* @author Arnaud  Le Hors, IBM
* @see DeferredAttrImpl
*/
extern class DeferredAttrNSImpl extends com.sun.org.apache.xerces.internal.dom.AttrNSImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload public function getNodeIndex() : Int;
	
	/** Synchronizes the data (name and value) for fast nodes. */
	@:overload private function synchronizeData() : Void;
	
	/**
	* Synchronizes the node's children with the internal structure.
	* Fluffing the children at once solves a lot of work to keep
	* the two structures in sync. The problem gets worse when
	* editing the tree -- this makes it a lot easier.
	*/
	@:overload private function synchronizeChildren() : Void;
	
	
}
