package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
* $Id: NodeVector.java,v 1.2.4.1 2005/09/15 08:15:50 suresh_emailid Exp $
*/
extern class NodeVector implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Number of nodes in this NodeVector.
	*  @serial
	*/
	private var m_firstFree : Int;
	
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a NodeVector, using the given block size.
	*
	* @param blocksize Size of blocks to allocate
	*/
	@:overload public function new(blocksize : Int) : Void;
	
	/**
	* Get a cloned LocPathIterator.
	*
	* @return A clone of this
	*
	* @throws CloneNotSupportedException
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Get the length of the list.
	*
	* @return Number of nodes in this NodeVector
	*/
	@:overload public function size() : Int;
	
	/**
	* Append a Node onto the vector.
	*
	* @param value Node to add to the vector
	*/
	@:overload public function addElement(value : Int) : Void;
	
	/**
	* Append a Node onto the vector.
	*
	* @param value Node to add to the vector
	*/
	@:overload @:final public function push(value : Int) : Void;
	
	/**
	* Pop a node from the tail of the vector and return the result.
	*
	* @return the node at the tail of the vector
	*/
	@:overload @:final public function pop() : Int;
	
	/**
	* Pop a node from the tail of the vector and return the
	* top of the stack after the pop.
	*
	* @return The top of the stack after it's been popped
	*/
	@:overload @:final public function popAndTop() : Int;
	
	/**
	* Pop a node from the tail of the vector.
	*/
	@:overload @:final public function popQuick() : Void;
	
	/**
	* Return the node at the top of the stack without popping the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node at the top of the stack or null if stack is empty.
	*/
	@:overload @:final public function peepOrNull() : Int;
	
	/**
	* Push a pair of nodes into the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param v1 First node to add to vector
	* @param v2 Second node to add to vector
	*/
	@:overload @:final public function pushPair(v1 : Int, v2 : Int) : Void;
	
	/**
	* Pop a pair of nodes from the tail of the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*/
	@:overload @:final public function popPair() : Void;
	
	/**
	* Set the tail of the stack to the given node.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param n Node to set at the tail of vector
	*/
	@:overload @:final public function setTail(n : Int) : Void;
	
	/**
	* Set the given node one position from the tail.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param n Node to set
	*/
	@:overload @:final public function setTailSub1(n : Int) : Void;
	
	/**
	* Return the node at the tail of the vector without popping
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node at the tail of the vector
	*/
	@:overload @:final public function peepTail() : Int;
	
	/**
	* Return the node one position from the tail without popping.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node one away from the tail
	*/
	@:overload @:final public function peepTailSub1() : Int;
	
	/**
	* Insert a node in order in the list.
	*
	* @param value Node to insert
	*/
	@:overload public function insertInOrder(value : Int) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*
	* @param value Node to insert
	* @param at Position where to insert
	*/
	@:overload public function insertElementAt(value : Int, at : Int) : Void;
	
	/**
	* Append the nodes to the list.
	*
	* @param nodes NodeVector to append to this list
	*/
	@:overload public function appendNodes(nodes : NodeVector) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*/
	@:overload public function removeAllElements() : Void;
	
	/**
	* Set the length to zero, but don't clear the array.
	*/
	@:overload public function RemoveAllNoClear() : Void;
	
	/**
	* Removes the first occurrence of the argument from this vector.
	* If the object is found in this vector, each component in the vector
	* with an index greater or equal to the object's index is shifted
	* downward to have an index one smaller than the value it had
	* previously.
	*
	* @param s Node to remove from the list
	*
	* @return True if the node was successfully removed
	*/
	@:overload public function removeElement(s : Int) : Bool;
	
	/**
	* Deletes the component at the specified index. Each component in
	* this vector with an index greater or equal to the specified
	* index is shifted downward to have an index one smaller than
	* the value it had previously.
	*
	* @param i Index of node to remove
	*/
	@:overload public function removeElementAt(i : Int) : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param node Node to set
	* @param index Index of where to set the node
	*/
	@:overload public function setElementAt(node : Int, index : Int) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i Index of node to get
	*
	* @return Node at specified index
	*/
	@:overload public function elementAt(i : Int) : Int;
	
	/**
	* Tell if the table contains the given node.
	*
	* @param s Node to look for
	*
	* @return True if the given node was found.
	*/
	@:overload public function contains(s : Int) : Bool;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem Node to look for
	* @param index Index of where to start the search
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload public function indexOf(elem : Int, index : Int) : Int;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem Node to look for
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload public function indexOf(elem : Int) : Int;
	
	/**
	* Sort an array using a quicksort algorithm.
	*
	* @param a The array to be sorted.
	* @param lo0  The low index.
	* @param hi0  The high index.
	*
	* @throws Exception
	*/
	@:overload public function sort(a : java.NativeArray<Int>, lo0 : Int, hi0 : Int) : Void;
	
	/**
	* Sort an array using a quicksort algorithm.
	*
	* @throws Exception
	*/
	@:overload public function sort() : Void;
	
	
}
