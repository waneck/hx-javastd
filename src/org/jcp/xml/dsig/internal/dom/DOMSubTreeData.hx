package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2006 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMSubTreeData.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMSubTreeData implements javax.xml.crypto.NodeSetData
{
	@:overload public function new(root : org.w3c.dom.Node, excludeComments : Bool) : Void;
	
	@:overload public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload public function getRoot() : org.w3c.dom.Node;
	
	@:overload public function excludeComments() : Bool;
	
	
}
/**
* This is an Iterator that contains a backing node-set that is
* not populated until the caller first attempts to advance the iterator.
*/
@:native('org$jcp$xml$dsig$internal$dom$DOMSubTreeData$DelayedNodeIterator') @:internal extern class DOMSubTreeData_DelayedNodeIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
