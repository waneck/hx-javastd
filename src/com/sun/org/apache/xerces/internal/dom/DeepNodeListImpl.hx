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
extern class DeepNodeListImpl implements org.w3c.dom.NodeList
{
	/**
	* This class implements the DOM's NodeList behavior for
	* Element.getElementsByTagName()
	* <P>
	* The DOM describes NodeList as follows:
	* <P>
	* 1) It may represent EITHER nodes scattered through a subtree (when
	* returned by Element.getElementsByTagName), or just the immediate
	* children (when returned by Node.getChildNodes). The latter is easy,
	* but the former (which this class addresses) is more challenging.
	* <P>
	* 2) Its behavior is "live" -- that is, it always reflects the
	* current state of the document tree. To put it another way, the
	* NodeLists obtained before and after a series of insertions and
	* deletions are effectively identical (as far as the user is
	* concerned, the former has been dynamically updated as the changes
	* have been made).
	* <P>
	* 3) Its API accesses individual nodes via an integer index, with the
	* listed nodes numbered sequentially in the order that they were
	* found during a preorder depth-first left-to-right search of the tree.
	* (Of course in the case of getChildNodes, depth is not involved.) As
	* nodes are inserted or deleted in the tree, and hence the NodeList,
	* the numbering of nodes that follow them in the NodeList will
	* change.
	* <P>
	* It is rather painful to support the latter two in the
	* getElementsByTagName case. The current solution is for Nodes to
	* maintain a change count (eventually that may be a Digest instead),
	* which the NodeList tracks and uses to invalidate itself.
	* <P>
	* Unfortunately, this does _not_ respond efficiently in the case that
	* the dynamic behavior was supposed to address: scanning a tree while
	* it is being extended. That requires knowing which subtrees have
	* changed, which can become an arbitrarily complex problem.
	* <P>
	* We save some work by filling the vector only as we access the
	* item()s... but I suspect the same users who demanded index-based
	* access will also start by doing a getLength() to control their loop,
	* blowing this optimization out of the water.
	* <P>
	* NOTE: Level 2 of the DOM will probably _not_ use NodeList for its
	* extended search mechanisms, partly for the reasons just discussed.
	*
	* @xerces.internal
	*
	* @since  PR-DOM-Level-1-19980818.
	*/
	private var rootNode : com.sun.org.apache.xerces.internal.dom.NodeImpl;
	
	private var tagName : String;
	
	private var changes : Int;
	
	private var nodes : java.util.Vector<Dynamic>;
	
	private var nsName : String;
	
	private var enableNS : Bool;
	
	/** Constructor. */
	@:overload public function new(rootNode : com.sun.org.apache.xerces.internal.dom.NodeImpl, tagName : String) : Void;
	
	/** Constructor for Namespace support. */
	@:overload public function new(rootNode : com.sun.org.apache.xerces.internal.dom.NodeImpl, nsName : String, tagName : String) : Void;
	
	/** Returns the length of the node list. */
	@:overload public function getLength() : Int;
	
	/** Returns the node at the specified index. */
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Iterative tree-walker. When you have a Parent link, there's often no
	* need to resort to recursion. NOTE THAT only Element nodes are matched
	* since we're specifically supporting getElementsByTagName().
	*/
	@:overload private function nextMatchingElementAfter(current : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	
}
