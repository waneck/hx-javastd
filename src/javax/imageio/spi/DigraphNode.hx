package javax.imageio.spi;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DigraphNode implements java.lang.Cloneable implements java.io.Serializable
{
	/** The data associated with this node. */
	private var data : Dynamic;
	
	/**
	* A <code>Set</code> of neighboring nodes pointed to by this
	* node.
	*/
	private var outNodes : java.util.Set<Dynamic>;
	
	/** The in-degree of the node. */
	private var inDegree : Int;
	
	@:overload public function new(data : Dynamic) : Void;
	
	/** Returns the <code>Object</code> referenced by this node. */
	@:overload public function getData() : Dynamic;
	
	/**
	* Returns an <code>Iterator</code> containing the nodes pointed
	* to by this node.
	*/
	@:overload public function getOutNodes() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds a directed edge to the graph.  The outNodes list of this
	* node is updated and the in-degree of the other node is incremented.
	*
	* @param node a <code>DigraphNode</code>.
	*
	* @return <code>true</code> if the node was not previously the
	* target of an edge.
	*/
	@:overload public function addEdge(node : DigraphNode) : Bool;
	
	/**
	* Returns <code>true</code> if an edge exists between this node
	* and the given node.
	*
	* @param node a <code>DigraphNode</code>.
	*
	* @return <code>true</code> if the node is the target of an edge.
	*/
	@:overload public function hasEdge(node : DigraphNode) : Bool;
	
	/**
	* Removes a directed edge from the graph.  The outNodes list of this
	* node is updated and the in-degree of the other node is decremented.
	*
	* @return <code>true</code> if the node was previously the target
	* of an edge.
	*/
	@:overload public function removeEdge(node : DigraphNode) : Bool;
	
	/**
	* Removes this node from the graph, updating neighboring nodes
	* appropriately.
	*/
	@:overload public function dispose() : Void;
	
	/** Returns the in-degree of this node. */
	@:overload public function getInDegree() : Int;
	
	
}
