package javax.swing.tree;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* A simple tree data model that uses TreeNodes.
* For further information and examples that use DefaultTreeModel,
* see <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/tree.html">How to Use Trees</a>
* in <em>The Java Tutorial.</em>
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Rob Davis
* @author Ray Ryan
* @author Scott Violet
*/
extern class DefaultTreeModel implements java.io.Serializable implements javax.swing.tree.TreeModel
{
	/** Root of the tree. */
	@:protected private var root : javax.swing.tree.TreeNode;
	
	/** Listeners. */
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Creates a tree in which any node can have children.
	*
	* @param root a TreeNode object that is the root of the tree
	* @see #DefaultTreeModel(TreeNode, boolean)
	*/
	@:overload @:public public function new(root : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Creates a tree specifying whether any node can have children,
	* or whether only certain nodes can have children.
	*
	* @param root a TreeNode object that is the root of the tree
	* @param asksAllowsChildren a boolean, false if any node can
	*        have children, true if each node is asked to see if
	*        it can have children
	* @see #asksAllowsChildren
	*/
	@:overload @:public public function new(root : javax.swing.tree.TreeNode, asksAllowsChildren : Bool) : Void;
	
	/**
	* Sets whether or not to test leafness by asking getAllowsChildren()
	* or isLeaf() to the TreeNodes.  If newvalue is true, getAllowsChildren()
	* is messaged, otherwise isLeaf() is messaged.
	*/
	@:overload @:public public function setAsksAllowsChildren(newValue : Bool) : Void;
	
	/**
	* Tells how leaf nodes are determined.
	*
	* @return true if only nodes which do not allow children are
	*         leaf nodes, false if nodes which have no children
	*         (even if allowed) are leaf nodes
	* @see #asksAllowsChildren
	*/
	@:overload @:public public function asksAllowsChildren() : Bool;
	
	/**
	* Sets the root to <code>root</code>. A null <code>root</code> implies
	* the tree is to display nothing, and is legal.
	*/
	@:overload @:public public function setRoot(root : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Returns the root of the tree.  Returns null only if the tree has
	* no nodes.
	*
	* @return  the root of the tree
	*/
	@:overload @:public public function getRoot() : Dynamic;
	
	/**
	* Returns the index of child in parent.
	* If either the parent or child is <code>null</code>, returns -1.
	* @param parent a note in the tree, obtained from this data source
	* @param child the node we are interested in
	* @return the index of the child in the parent, or -1
	*    if either the parent or the child is <code>null</code>
	*/
	@:overload @:public public function getIndexOfChild(parent : Dynamic, child : Dynamic) : Int;
	
	/**
	* Returns the child of <I>parent</I> at index <I>index</I> in the parent's
	* child array.  <I>parent</I> must be a node previously obtained from
	* this data source. This should not return null if <i>index</i>
	* is a valid index for <i>parent</i> (that is <i>index</i> >= 0 &&
	* <i>index</i> < getChildCount(<i>parent</i>)).
	*
	* @param   parent  a node in the tree, obtained from this data source
	* @return  the child of <I>parent</I> at index <I>index</I>
	*/
	@:overload @:public public function getChild(parent : Dynamic, index : Int) : Dynamic;
	
	/**
	* Returns the number of children of <I>parent</I>.  Returns 0 if the node
	* is a leaf or if it has no children.  <I>parent</I> must be a node
	* previously obtained from this data source.
	*
	* @param   parent  a node in the tree, obtained from this data source
	* @return  the number of children of the node <I>parent</I>
	*/
	@:overload @:public public function getChildCount(parent : Dynamic) : Int;
	
	/**
	* Returns whether the specified node is a leaf node.
	* The way the test is performed depends on the
	* <code>askAllowsChildren</code> setting.
	*
	* @param node the node to check
	* @return true if the node is a leaf node
	*
	* @see #asksAllowsChildren
	* @see TreeModel#isLeaf
	*/
	@:overload @:public public function isLeaf(node : Dynamic) : Bool;
	
	/**
	* Invoke this method if you've modified the {@code TreeNode}s upon which
	* this model depends. The model will notify all of its listeners that the
	* model has changed.
	*/
	@:overload @:public public function reload() : Void;
	
	/**
	* This sets the user object of the TreeNode identified by path
	* and posts a node changed.  If you use custom user objects in
	* the TreeModel you're going to need to subclass this and
	* set the user object of the changed node to something meaningful.
	*/
	@:overload @:public public function valueForPathChanged(path : javax.swing.tree.TreePath, newValue : Dynamic) : Void;
	
	/**
	* Invoked this to insert newChild at location index in parents children.
	* This will then message nodesWereInserted to create the appropriate
	* event. This is the preferred way to add children as it will create
	* the appropriate event.
	*/
	@:overload @:public public function insertNodeInto(newChild : javax.swing.tree.MutableTreeNode, parent : javax.swing.tree.MutableTreeNode, index : Int) : Void;
	
	/**
	* Message this to remove node from its parent. This will message
	* nodesWereRemoved to create the appropriate event. This is the
	* preferred way to remove a node as it handles the event creation
	* for you.
	*/
	@:overload @:public public function removeNodeFromParent(node : javax.swing.tree.MutableTreeNode) : Void;
	
	/**
	* Invoke this method after you've changed how node is to be
	* represented in the tree.
	*/
	@:overload @:public public function nodeChanged(node : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Invoke this method if you've modified the {@code TreeNode}s upon which
	* this model depends. The model will notify all of its listeners that the
	* model has changed below the given node.
	*
	* @param node the node below which the model has changed
	*/
	@:overload @:public public function reload(node : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Invoke this method after you've inserted some TreeNodes into
	* node.  childIndices should be the index of the new elements and
	* must be sorted in ascending order.
	*/
	@:overload @:public public function nodesWereInserted(node : javax.swing.tree.TreeNode, childIndices : java.NativeArray<Int>) : Void;
	
	/**
	* Invoke this method after you've removed some TreeNodes from
	* node.  childIndices should be the index of the removed elements and
	* must be sorted in ascending order. And removedChildren should be
	* the array of the children objects that were removed.
	*/
	@:overload @:public public function nodesWereRemoved(node : javax.swing.tree.TreeNode, childIndices : java.NativeArray<Int>, removedChildren : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Invoke this method after you've changed how the children identified by
	* childIndicies are to be represented in the tree.
	*/
	@:overload @:public public function nodesChanged(node : javax.swing.tree.TreeNode, childIndices : java.NativeArray<Int>) : Void;
	
	/**
	* Invoke this method if you've totally changed the children of
	* node and its childrens children...  This will post a
	* treeStructureChanged event.
	*/
	@:overload @:public public function nodeStructureChanged(node : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Builds the parents of node up to and including the root node,
	* where the original node is the last element in the returned array.
	* The length of the returned array gives the node's depth in the
	* tree.
	*
	* @param aNode the TreeNode to get the path for
	*/
	@:overload @:public public function getPathToRoot(aNode : javax.swing.tree.TreeNode) : java.NativeArray<javax.swing.tree.TreeNode>;
	
	/**
	* Builds the parents of node up to and including the root node,
	* where the original node is the last element in the returned array.
	* The length of the returned array gives the node's depth in the
	* tree.
	*
	* @param aNode  the TreeNode to get the path for
	* @param depth  an int giving the number of steps already taken towards
	*        the root (on recursive calls), used to size the returned array
	* @return an array of TreeNodes giving the path from the root to the
	*         specified node
	*/
	@:overload @:protected private function getPathToRoot(aNode : javax.swing.tree.TreeNode, depth : Int) : java.NativeArray<javax.swing.tree.TreeNode>;
	
	/**
	* Adds a listener for the TreeModelEvent posted after the tree changes.
	*
	* @see     #removeTreeModelListener
	* @param   l       the listener to add
	*/
	@:overload @:public public function addTreeModelListener(l : javax.swing.event.TreeModelListener) : Void;
	
	/**
	* Removes a listener previously added with <B>addTreeModelListener()</B>.
	*
	* @see     #addTreeModelListener
	* @param   l       the listener to remove
	*/
	@:overload @:public public function removeTreeModelListener(l : javax.swing.event.TreeModelListener) : Void;
	
	/**
	* Returns an array of all the tree model listeners
	* registered on this model.
	*
	* @return all of this model's <code>TreeModelListener</code>s
	*         or an empty
	*         array if no tree model listeners are currently registered
	*
	* @see #addTreeModelListener
	* @see #removeTreeModelListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getTreeModelListeners() : java.NativeArray<javax.swing.event.TreeModelListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param source the source of the {@code TreeModelEvent};
	*               typically {@code this}
	* @param path the path to the parent of the nodes that changed; use
	*             {@code null} to identify the root has changed
	* @param childIndices the indices of the changed elements
	* @param children the changed elements
	*/
	@:overload @:protected private function fireTreeNodesChanged(source : Dynamic, path : java.NativeArray<Dynamic>, childIndices : java.NativeArray<Int>, children : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param source the source of the {@code TreeModelEvent};
	*               typically {@code this}
	* @param path the path to the parent the nodes were added to
	* @param childIndices the indices of the new elements
	* @param children the new elements
	*/
	@:overload @:protected private function fireTreeNodesInserted(source : Dynamic, path : java.NativeArray<Dynamic>, childIndices : java.NativeArray<Int>, children : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param source the source of the {@code TreeModelEvent};
	*               typically {@code this}
	* @param path the path to the parent the nodes were removed from
	* @param childIndices the indices of the removed elements
	* @param children the removed elements
	*/
	@:overload @:protected private function fireTreeNodesRemoved(source : Dynamic, path : java.NativeArray<Dynamic>, childIndices : java.NativeArray<Int>, children : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param source the source of the {@code TreeModelEvent};
	*               typically {@code this}
	* @param path the path to the parent of the structure that has changed;
	*             use {@code null} to identify the root has changed
	* @param childIndices the indices of the affected elements
	* @param children the affected elements
	*/
	@:overload @:protected private function fireTreeStructureChanged(source : Dynamic, path : java.NativeArray<Dynamic>, childIndices : java.NativeArray<Int>, children : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	*
	* You can specify the <code>listenerType</code> argument
	* with a class literal,
	* such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>DefaultTreeModel</code> <code>m</code>
	* for its tree model listeners with the following code:
	*
	* <pre>TreeModelListener[] tmls = (TreeModelListener[])(m.getListeners(TreeModelListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this component,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getTreeModelListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	
}
