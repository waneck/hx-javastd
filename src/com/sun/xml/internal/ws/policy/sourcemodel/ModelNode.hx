package com.sun.xml.internal.ws.policy.sourcemodel;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ModelNode implements java.lang.Iterable<com.sun.xml.internal.ws.policy.sourcemodel.ModelNode> implements java.lang.Cloneable
{
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @return A new Policy node.
	*/
	@:overload @:public public function createChildPolicyNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @return A new All node.
	*/
	@:overload @:public public function createChildAllNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @return A new ExactlyOne node.
	*/
	@:overload @:public public function createChildExactlyOneNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @return A new policy assertion node.
	*/
	@:overload @:public public function createChildAssertionNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @param nodeData The policy assertion data.
	* @return A new policy assertion node.
	*/
	@:overload @:public public function createChildAssertionNode(nodeData : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData) : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Factory method that creates new policy source model node as specified by a factory method name and input parameters.
	* Each node is created with respect to its enclosing policy source model.
	*
	* @return A new assertion parameter node.
	*/
	@:overload @:public public function createChildAssertionParameterNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Returns the parent policy source model that contains this model node.
	*
	* @return the parent policy source model
	*/
	@:overload @:public public function getParentModel() : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Returns the type of this policy source model node.
	*
	* @return actual type of this policy source model node
	*/
	@:overload @:public public function getType() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode.ModelNode_Type;
	
	/**
	* Returns the parent referenced by this policy source model node.
	*
	* @return current parent of this policy source model node or {@code null} if the node does not have a parent currently.
	*/
	@:overload @:public public function getParentNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Returns the data for this policy source model node (if any). The model node data are expected to be not {@code null} only in
	* case the type of this node is ASSERTION or ASSERTION_PARAMETER_NODE.
	*
	* @return the data of this policy source model node or {@code null} if the node does not have any data associated to it
	* attached.
	*/
	@:overload @:public public function getNodeData() : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData;
	
	/**
	* The method may be used to set or replace assertion data set for this node. If there are assertion data set already,
	* those are replaced by a new reference and eventualy returned from the method.
	* <p/>
	* This method is supported only in case this model node instance's type is {@code ASSERTION} or {@code ASSERTION_PARAMETER_NODE}.
	* If used from other node types, an exception is thrown.
	*
	* @param newData new assertion data to be set.
	* @return old and replaced assertion data if any or {@code null} otherwise.
	*
	* @throws UnsupportedOperationException in case this method is called on nodes of type other than {@code ASSERTION}
	* or {@code ASSERTION_PARAMETER_NODE}
	*/
	@:overload @:public public function setOrReplaceNodeData(newData : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData) : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData;
	
	/**
	* Returns the number of child policy source model nodes. If this model node contains
	* more than {@code Integer.MAX_VALUE} children, returns {@code Integer.MAX_VALUE}.
	*
	* @return the number of children of this node.
	*/
	@:overload @:public public function childrenSize() : Int;
	
	/**
	* Returns true if the node has at least one child node.
	*
	* @return true if the node has at least one child node, false otherwise.
	*/
	@:overload @:public public function hasChildren() : Bool;
	
	/**
	* Iterates through all child nodes.
	*
	* @return An iterator for the child nodes
	*/
	@:overload @:public public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.sourcemodel.ModelNode>;
	
	/**
	* An {@code Object.equals(Object obj)} method override. Method ignores the parent source model. It means that two
	* model nodes may be the same even if they belong to different models.
	* <p/>
	* If parent model comparison is desired, it must be accomplished separately. To perform that, the reference equality
	* test is sufficient ({@code nodeA.getParentModel() == nodeB.getParentModel()}), since all model nodes are created
	* for specific model instances.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of the object. In general, the <code>toString</code> method
	* returns a string that "textually represents" this object.
	*
	* @return  a string representation of the object.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* A helper method that appends indented string representation of this instance to the input string buffer.
	*
	* @param indentLevel indentation level to be used.
	* @param buffer buffer to be used for appending string representation of this instance
	* @return modified buffer containing new string representation of the instance
	*/
	@:overload @:public public function toString(indentLevel : Int, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	@:overload @:protected private function clone() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	
}
/**
* Policy source model node type enumeration
*/
@:native('com$sun$xml$internal$ws$policy$sourcemodel$ModelNode$Type') extern enum ModelNode_Type
{
	POLICY;
	ALL;
	EXACTLY_ONE;
	POLICY_REFERENCE;
	ASSERTION;
	ASSERTION_PARAMETER_NODE;
	
}

