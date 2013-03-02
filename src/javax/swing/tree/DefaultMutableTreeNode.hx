package javax.swing.tree;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// ISSUE: this class depends on nothing in AWT -- move to java.util?
/**
* A <code>DefaultMutableTreeNode</code> is a general-purpose node in a tree data
* structure.
* For examples of using default mutable tree nodes, see
* <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/tree.html">How to Use Trees</a>
* in <em>The Java Tutorial.</em>
*
* <p>
*
* A tree node may have at most one parent and 0 or more children.
* <code>DefaultMutableTreeNode</code> provides operations for examining and modifying a
* node's parent and children and also operations for examining the tree that
* the node is a part of.  A node's tree is the set of all nodes that can be
* reached by starting at the node and following all the possible links to
* parents and children.  A node with no parent is the root of its tree; a
* node with no children is a leaf.  A tree may consist of many subtrees,
* each node acting as the root for its own subtree.
* <p>
* This class provides enumerations for efficiently traversing a tree or
* subtree in various orders or for following the path between two nodes.
* A <code>DefaultMutableTreeNode</code> may also hold a reference to a user object, the
* use of which is left to the user.  Asking a <code>DefaultMutableTreeNode</code> for its
* string representation with <code>toString()</code> returns the string
* representation of its user object.
* <p>
* <b>This is not a thread safe class.</b>If you intend to use
* a DefaultMutableTreeNode (or a tree of TreeNodes) in more than one thread, you
* need to do your own synchronizing. A good convention to adopt is
* synchronizing on the root node of a tree.
* <p>
* While DefaultMutableTreeNode implements the MutableTreeNode interface and
* will allow you to add in any implementation of MutableTreeNode not all
* of the methods in DefaultMutableTreeNode will be applicable to all
* MutableTreeNodes implementations. Especially with some of the enumerations
* that are provided, using some of these methods assumes the
* DefaultMutableTreeNode contains only DefaultMutableNode instances. All
* of the TreeNode/MutableTreeNode methods will behave as defined no
* matter what implementations are added.
*
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
* @see MutableTreeNode
*
* @author Rob Davis
*/
extern class DefaultMutableTreeNode implements java.lang.Cloneable implements javax.swing.tree.MutableTreeNode implements java.io.Serializable
{
	/**
	* An enumeration that is always empty. This is used when an enumeration
	* of a leaf node's children is requested.
	*/
	public static var EMPTY_ENUMERATION(default, null) : java.util.Enumeration<javax.swing.tree.TreeNode>;
	
	/** this node's parent, or null if this node has no parent */
	private var parent : javax.swing.tree.MutableTreeNode;
	
	/** optional user object */
	@:transient private var userObject : Dynamic;
	
	/** true if the node is able to have children */
	private var allowsChildren : Bool;
	
	/**
	* Creates a tree node that has no parent and no children, but which
	* allows children.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a tree node with no parent, no children, but which allows
	* children, and initializes it with the specified user object.
	*
	* @param userObject an Object provided by the user that constitutes
	*                   the node's data
	*/
	@:overload public function new(userObject : Dynamic) : Void;
	
	/**
	* Creates a tree node with no parent, no children, initialized with
	* the specified user object, and that allows children only if
	* specified.
	*
	* @param userObject an Object provided by the user that constitutes
	*        the node's data
	* @param allowsChildren if true, the node is allowed to have child
	*        nodes -- otherwise, it is always a leaf node
	*/
	@:overload public function new(userObject : Dynamic, allowsChildren : Bool) : Void;
	
	/**
	* Removes <code>newChild</code> from its present parent (if it has a
	* parent), sets the child's parent to this node, and then adds the child
	* to this node's child array at index <code>childIndex</code>.
	* <code>newChild</code> must not be null and must not be an ancestor of
	* this node.
	*
	* @param   newChild        the MutableTreeNode to insert under this node
	* @param   childIndex      the index in this node's child array
	*                          where this node is to be inserted
	* @exception       ArrayIndexOutOfBoundsException  if
	*                          <code>childIndex</code> is out of bounds
	* @exception       IllegalArgumentException        if
	*                          <code>newChild</code> is null or is an
	*                          ancestor of this node
	* @exception       IllegalStateException   if this node does not allow
	*                                          children
	* @see     #isNodeDescendant
	*/
	@:overload public function insert(newChild : javax.swing.tree.MutableTreeNode, childIndex : Int) : Void;
	
	/**
	* Removes the child at the specified index from this node's children
	* and sets that node's parent to null. The child node to remove
	* must be a <code>MutableTreeNode</code>.
	*
	* @param   childIndex      the index in this node's child array
	*                          of the child to remove
	* @exception       ArrayIndexOutOfBoundsException  if
	*                          <code>childIndex</code> is out of bounds
	*/
	@:overload public function remove(childIndex : Int) : Void;
	
	/**
	* Sets this node's parent to <code>newParent</code> but does not
	* change the parent's child array.  This method is called from
	* <code>insert()</code> and <code>remove()</code> to
	* reassign a child's parent, it should not be messaged from anywhere
	* else.
	*
	* @param   newParent       this node's new parent
	*/
	@:overload public function setParent(newParent : javax.swing.tree.MutableTreeNode) : Void;
	
	/**
	* Returns this node's parent or null if this node has no parent.
	*
	* @return  this node's parent TreeNode, or null if this node has no parent
	*/
	@:overload public function getParent() : javax.swing.tree.TreeNode;
	
	/**
	* Returns the child at the specified index in this node's child array.
	*
	* @param   index   an index into this node's child array
	* @exception       ArrayIndexOutOfBoundsException  if <code>index</code>
	*                                          is out of bounds
	* @return  the TreeNode in this node's child array at  the specified index
	*/
	@:overload public function getChildAt(index : Int) : javax.swing.tree.TreeNode;
	
	/**
	* Returns the number of children of this node.
	*
	* @return  an int giving the number of children of this node
	*/
	@:overload public function getChildCount() : Int;
	
	/**
	* Returns the index of the specified child in this node's child array.
	* If the specified node is not a child of this node, returns
	* <code>-1</code>.  This method performs a linear search and is O(n)
	* where n is the number of children.
	*
	* @param   aChild  the TreeNode to search for among this node's children
	* @exception       IllegalArgumentException        if <code>aChild</code>
	*                                                  is null
	* @return  an int giving the index of the node in this node's child
	*          array, or <code>-1</code> if the specified node is a not
	*          a child of this node
	*/
	@:overload public function getIndex(aChild : javax.swing.tree.TreeNode) : Int;
	
	/**
	* Creates and returns a forward-order enumeration of this node's
	* children.  Modifying this node's child array invalidates any child
	* enumerations created before the modification.
	*
	* @return  an Enumeration of this node's children
	*/
	@:overload public function children() : java.util.Enumeration<Dynamic>;
	
	/**
	* Determines whether or not this node is allowed to have children.
	* If <code>allows</code> is false, all of this node's children are
	* removed.
	* <p>
	* Note: By default, a node allows children.
	*
	* @param   allows  true if this node is allowed to have children
	*/
	@:overload public function setAllowsChildren(allows : Bool) : Void;
	
	/**
	* Returns true if this node is allowed to have children.
	*
	* @return  true if this node allows children, else false
	*/
	@:overload public function getAllowsChildren() : Bool;
	
	/**
	* Sets the user object for this node to <code>userObject</code>.
	*
	* @param   userObject      the Object that constitutes this node's
	*                          user-specified data
	* @see     #getUserObject
	* @see     #toString
	*/
	@:overload public function setUserObject(userObject : Dynamic) : Void;
	
	/**
	* Returns this node's user object.
	*
	* @return  the Object stored at this node by the user
	* @see     #setUserObject
	* @see     #toString
	*/
	@:overload public function getUserObject() : Dynamic;
	
	/**
	* Removes the subtree rooted at this node from the tree, giving this
	* node a null parent.  Does nothing if this node is the root of its
	* tree.
	*/
	@:overload public function removeFromParent() : Void;
	
	/**
	* Removes <code>aChild</code> from this node's child array, giving it a
	* null parent.
	*
	* @param   aChild  a child of this node to remove
	* @exception       IllegalArgumentException        if <code>aChild</code>
	*                                  is null or is not a child of this node
	*/
	@:overload public function remove(aChild : javax.swing.tree.MutableTreeNode) : Void;
	
	/**
	* Removes all of this node's children, setting their parents to null.
	* If this node has no children, this method does nothing.
	*/
	@:overload public function removeAllChildren() : Void;
	
	/**
	* Removes <code>newChild</code> from its parent and makes it a child of
	* this node by adding it to the end of this node's child array.
	*
	* @see             #insert
	* @param   newChild        node to add as a child of this node
	* @exception       IllegalArgumentException    if <code>newChild</code>
	*                                          is null
	* @exception       IllegalStateException   if this node does not allow
	*                                          children
	*/
	@:overload public function add(newChild : javax.swing.tree.MutableTreeNode) : Void;
	
	/**
	* Returns true if <code>anotherNode</code> is an ancestor of this node
	* -- if it is this node, this node's parent, or an ancestor of this
	* node's parent.  (Note that a node is considered an ancestor of itself.)
	* If <code>anotherNode</code> is null, this method returns false.  This
	* operation is at worst O(h) where h is the distance from the root to
	* this node.
	*
	* @see             #isNodeDescendant
	* @see             #getSharedAncestor
	* @param   anotherNode     node to test as an ancestor of this node
	* @return  true if this node is a descendant of <code>anotherNode</code>
	*/
	@:overload public function isNodeAncestor(anotherNode : javax.swing.tree.TreeNode) : Bool;
	
	/**
	* Returns true if <code>anotherNode</code> is a descendant of this node
	* -- if it is this node, one of this node's children, or a descendant of
	* one of this node's children.  Note that a node is considered a
	* descendant of itself.  If <code>anotherNode</code> is null, returns
	* false.  This operation is at worst O(h) where h is the distance from the
	* root to <code>anotherNode</code>.
	*
	* @see     #isNodeAncestor
	* @see     #getSharedAncestor
	* @param   anotherNode     node to test as descendant of this node
	* @return  true if this node is an ancestor of <code>anotherNode</code>
	*/
	@:overload public function isNodeDescendant(anotherNode : javax.swing.tree.DefaultMutableTreeNode) : Bool;
	
	/**
	* Returns the nearest common ancestor to this node and <code>aNode</code>.
	* Returns null, if no such ancestor exists -- if this node and
	* <code>aNode</code> are in different trees or if <code>aNode</code> is
	* null.  A node is considered an ancestor of itself.
	*
	* @see     #isNodeAncestor
	* @see     #isNodeDescendant
	* @param   aNode   node to find common ancestor with
	* @return  nearest ancestor common to this node and <code>aNode</code>,
	*          or null if none
	*/
	@:overload public function getSharedAncestor(aNode : javax.swing.tree.DefaultMutableTreeNode) : javax.swing.tree.TreeNode;
	
	/**
	* Returns true if and only if <code>aNode</code> is in the same tree
	* as this node.  Returns false if <code>aNode</code> is null.
	*
	* @see     #getSharedAncestor
	* @see     #getRoot
	* @return  true if <code>aNode</code> is in the same tree as this node;
	*          false if <code>aNode</code> is null
	*/
	@:overload public function isNodeRelated(aNode : javax.swing.tree.DefaultMutableTreeNode) : Bool;
	
	/**
	* Returns the depth of the tree rooted at this node -- the longest
	* distance from this node to a leaf.  If this node has no children,
	* returns 0.  This operation is much more expensive than
	* <code>getLevel()</code> because it must effectively traverse the entire
	* tree rooted at this node.
	*
	* @see     #getLevel
	* @return  the depth of the tree whose root is this node
	*/
	@:overload public function getDepth() : Int;
	
	/**
	* Returns the number of levels above this node -- the distance from
	* the root to this node.  If this node is the root, returns 0.
	*
	* @see     #getDepth
	* @return  the number of levels above this node
	*/
	@:overload public function getLevel() : Int;
	
	/**
	* Returns the path from the root, to get to this node.  The last
	* element in the path is this node.
	*
	* @return an array of TreeNode objects giving the path, where the
	*         first element in the path is the root and the last
	*         element is this node.
	*/
	@:overload public function getPath() : java.NativeArray<javax.swing.tree.TreeNode>;
	
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
	@:overload private function getPathToRoot(aNode : javax.swing.tree.TreeNode, depth : Int) : java.NativeArray<javax.swing.tree.TreeNode>;
	
	/**
	* Returns the user object path, from the root, to get to this node.
	* If some of the TreeNodes in the path have null user objects, the
	* returned path will contain nulls.
	*/
	@:overload public function getUserObjectPath() : java.NativeArray<Dynamic>;
	
	/**
	* Returns the root of the tree that contains this node.  The root is
	* the ancestor with a null parent.
	*
	* @see     #isNodeAncestor
	* @return  the root of the tree that contains this node
	*/
	@:overload public function getRoot() : javax.swing.tree.TreeNode;
	
	/**
	* Returns true if this node is the root of the tree.  The root is
	* the only node in the tree with a null parent; every tree has exactly
	* one root.
	*
	* @return  true if this node is the root of its tree
	*/
	@:overload public function isRoot() : Bool;
	
	/**
	* Returns the node that follows this node in a preorder traversal of this
	* node's tree.  Returns null if this node is the last node of the
	* traversal.  This is an inefficient way to traverse the entire tree; use
	* an enumeration, instead.
	*
	* @see     #preorderEnumeration
	* @return  the node that follows this node in a preorder traversal, or
	*          null if this node is last
	*/
	@:overload public function getNextNode() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns the node that precedes this node in a preorder traversal of
	* this node's tree.  Returns <code>null</code> if this node is the
	* first node of the traversal -- the root of the tree.
	* This is an inefficient way to
	* traverse the entire tree; use an enumeration, instead.
	*
	* @see     #preorderEnumeration
	* @return  the node that precedes this node in a preorder traversal, or
	*          null if this node is the first
	*/
	@:overload public function getPreviousNode() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Creates and returns an enumeration that traverses the subtree rooted at
	* this node in preorder.  The first node returned by the enumeration's
	* <code>nextElement()</code> method is this node.<P>
	*
	* Modifying the tree by inserting, removing, or moving a node invalidates
	* any enumerations created before the modification.
	*
	* @see     #postorderEnumeration
	* @return  an enumeration for traversing the tree in preorder
	*/
	@:overload public function preorderEnumeration() : java.util.Enumeration<Dynamic>;
	
	/**
	* Creates and returns an enumeration that traverses the subtree rooted at
	* this node in postorder.  The first node returned by the enumeration's
	* <code>nextElement()</code> method is the leftmost leaf.  This is the
	* same as a depth-first traversal.<P>
	*
	* Modifying the tree by inserting, removing, or moving a node invalidates
	* any enumerations created before the modification.
	*
	* @see     #depthFirstEnumeration
	* @see     #preorderEnumeration
	* @return  an enumeration for traversing the tree in postorder
	*/
	@:overload public function postorderEnumeration() : java.util.Enumeration<Dynamic>;
	
	/**
	* Creates and returns an enumeration that traverses the subtree rooted at
	* this node in breadth-first order.  The first node returned by the
	* enumeration's <code>nextElement()</code> method is this node.<P>
	*
	* Modifying the tree by inserting, removing, or moving a node invalidates
	* any enumerations created before the modification.
	*
	* @see     #depthFirstEnumeration
	* @return  an enumeration for traversing the tree in breadth-first order
	*/
	@:overload public function breadthFirstEnumeration() : java.util.Enumeration<Dynamic>;
	
	/**
	* Creates and returns an enumeration that traverses the subtree rooted at
	* this node in depth-first order.  The first node returned by the
	* enumeration's <code>nextElement()</code> method is the leftmost leaf.
	* This is the same as a postorder traversal.<P>
	*
	* Modifying the tree by inserting, removing, or moving a node invalidates
	* any enumerations created before the modification.
	*
	* @see     #breadthFirstEnumeration
	* @see     #postorderEnumeration
	* @return  an enumeration for traversing the tree in depth-first order
	*/
	@:overload public function depthFirstEnumeration() : java.util.Enumeration<Dynamic>;
	
	/**
	* Creates and returns an enumeration that follows the path from
	* <code>ancestor</code> to this node.  The enumeration's
	* <code>nextElement()</code> method first returns <code>ancestor</code>,
	* then the child of <code>ancestor</code> that is an ancestor of this
	* node, and so on, and finally returns this node.  Creation of the
	* enumeration is O(m) where m is the number of nodes between this node
	* and <code>ancestor</code>, inclusive.  Each <code>nextElement()</code>
	* message is O(1).<P>
	*
	* Modifying the tree by inserting, removing, or moving a node invalidates
	* any enumerations created before the modification.
	*
	* @see             #isNodeAncestor
	* @see             #isNodeDescendant
	* @exception       IllegalArgumentException if <code>ancestor</code> is
	*                                          not an ancestor of this node
	* @return  an enumeration for following the path from an ancestor of
	*          this node to this one
	*/
	@:overload public function pathFromAncestorEnumeration(ancestor : javax.swing.tree.TreeNode) : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns true if <code>aNode</code> is a child of this node.  If
	* <code>aNode</code> is null, this method returns false.
	*
	* @return  true if <code>aNode</code> is a child of this node; false if
	*                  <code>aNode</code> is null
	*/
	@:overload public function isNodeChild(aNode : javax.swing.tree.TreeNode) : Bool;
	
	/**
	* Returns this node's first child.  If this node has no children,
	* throws NoSuchElementException.
	*
	* @return  the first child of this node
	* @exception       NoSuchElementException  if this node has no children
	*/
	@:overload public function getFirstChild() : javax.swing.tree.TreeNode;
	
	/**
	* Returns this node's last child.  If this node has no children,
	* throws NoSuchElementException.
	*
	* @return  the last child of this node
	* @exception       NoSuchElementException  if this node has no children
	*/
	@:overload public function getLastChild() : javax.swing.tree.TreeNode;
	
	/**
	* Returns the child in this node's child array that immediately
	* follows <code>aChild</code>, which must be a child of this node.  If
	* <code>aChild</code> is the last child, returns null.  This method
	* performs a linear search of this node's children for
	* <code>aChild</code> and is O(n) where n is the number of children; to
	* traverse the entire array of children, use an enumeration instead.
	*
	* @see             #children
	* @exception       IllegalArgumentException if <code>aChild</code> is
	*                                  null or is not a child of this node
	* @return  the child of this node that immediately follows
	*          <code>aChild</code>
	*/
	@:overload public function getChildAfter(aChild : javax.swing.tree.TreeNode) : javax.swing.tree.TreeNode;
	
	/**
	* Returns the child in this node's child array that immediately
	* precedes <code>aChild</code>, which must be a child of this node.  If
	* <code>aChild</code> is the first child, returns null.  This method
	* performs a linear search of this node's children for <code>aChild</code>
	* and is O(n) where n is the number of children.
	*
	* @exception       IllegalArgumentException if <code>aChild</code> is null
	*                                          or is not a child of this node
	* @return  the child of this node that immediately precedes
	*          <code>aChild</code>
	*/
	@:overload public function getChildBefore(aChild : javax.swing.tree.TreeNode) : javax.swing.tree.TreeNode;
	
	/**
	* Returns true if <code>anotherNode</code> is a sibling of (has the
	* same parent as) this node.  A node is its own sibling.  If
	* <code>anotherNode</code> is null, returns false.
	*
	* @param   anotherNode     node to test as sibling of this node
	* @return  true if <code>anotherNode</code> is a sibling of this node
	*/
	@:overload public function isNodeSibling(anotherNode : javax.swing.tree.TreeNode) : Bool;
	
	/**
	* Returns the number of siblings of this node.  A node is its own sibling
	* (if it has no parent or no siblings, this method returns
	* <code>1</code>).
	*
	* @return  the number of siblings of this node
	*/
	@:overload public function getSiblingCount() : Int;
	
	/**
	* Returns the next sibling of this node in the parent's children array.
	* Returns null if this node has no parent or is the parent's last child.
	* This method performs a linear search that is O(n) where n is the number
	* of children; to traverse the entire array, use the parent's child
	* enumeration instead.
	*
	* @see     #children
	* @return  the sibling of this node that immediately follows this node
	*/
	@:overload public function getNextSibling() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns the previous sibling of this node in the parent's children
	* array.  Returns null if this node has no parent or is the parent's
	* first child.  This method performs a linear search that is O(n) where n
	* is the number of children.
	*
	* @return  the sibling of this node that immediately precedes this node
	*/
	@:overload public function getPreviousSibling() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns true if this node has no children.  To distinguish between
	* nodes that have no children and nodes that <i>cannot</i> have
	* children (e.g. to distinguish files from empty directories), use this
	* method in conjunction with <code>getAllowsChildren</code>
	*
	* @see     #getAllowsChildren
	* @return  true if this node has no children
	*/
	@:overload public function isLeaf() : Bool;
	
	/**
	* Finds and returns the first leaf that is a descendant of this node --
	* either this node or its first child's first leaf.
	* Returns this node if it is a leaf.
	*
	* @see     #isLeaf
	* @see     #isNodeDescendant
	* @return  the first leaf in the subtree rooted at this node
	*/
	@:overload public function getFirstLeaf() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Finds and returns the last leaf that is a descendant of this node --
	* either this node or its last child's last leaf.
	* Returns this node if it is a leaf.
	*
	* @see     #isLeaf
	* @see     #isNodeDescendant
	* @return  the last leaf in the subtree rooted at this node
	*/
	@:overload public function getLastLeaf() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns the leaf after this node or null if this node is the
	* last leaf in the tree.
	* <p>
	* In this implementation of the <code>MutableNode</code> interface,
	* this operation is very inefficient. In order to determine the
	* next node, this method first performs a linear search in the
	* parent's child-list in order to find the current node.
	* <p>
	* That implementation makes the operation suitable for short
	* traversals from a known position. But to traverse all of the
	* leaves in the tree, you should use <code>depthFirstEnumeration</code>
	* to enumerate the nodes in the tree and use <code>isLeaf</code>
	* on each node to determine which are leaves.
	*
	* @see     #depthFirstEnumeration
	* @see     #isLeaf
	* @return  returns the next leaf past this node
	*/
	@:overload public function getNextLeaf() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns the leaf before this node or null if this node is the
	* first leaf in the tree.
	* <p>
	* In this implementation of the <code>MutableNode</code> interface,
	* this operation is very inefficient. In order to determine the
	* previous node, this method first performs a linear search in the
	* parent's child-list in order to find the current node.
	* <p>
	* That implementation makes the operation suitable for short
	* traversals from a known position. But to traverse all of the
	* leaves in the tree, you should use <code>depthFirstEnumeration</code>
	* to enumerate the nodes in the tree and use <code>isLeaf</code>
	* on each node to determine which are leaves.
	*
	* @see             #depthFirstEnumeration
	* @see             #isLeaf
	* @return  returns the leaf before this node
	*/
	@:overload public function getPreviousLeaf() : javax.swing.tree.DefaultMutableTreeNode;
	
	/**
	* Returns the total number of leaves that are descendants of this node.
	* If this node is a leaf, returns <code>1</code>.  This method is O(n)
	* where n is the number of descendants of this node.
	*
	* @see     #isNodeAncestor
	* @return  the number of leaves beneath this node
	*/
	@:overload public function getLeafCount() : Int;
	
	/**
	* Returns the result of sending <code>toString()</code> to this node's
	* user object, or the empty string if the node has no user object.
	*
	* @see     #getUserObject
	*/
	@:overload public function toString() : String;
	
	/**
	* Overridden to make clone public.  Returns a shallow copy of this node;
	* the new node has no parent or children and has a reference to the same
	* user object, if any.
	*
	* @return  a copy of this node
	*/
	@:overload public function clone() : Dynamic;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$PreorderEnumeration') @:internal extern class DefaultMutableTreeNode_PreorderEnumeration implements java.util.Enumeration<javax.swing.tree.TreeNode>
{
	@:overload public function new(rootNode : javax.swing.tree.TreeNode) : Void;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : javax.swing.tree.TreeNode;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$PostorderEnumeration') @:internal extern class DefaultMutableTreeNode_PostorderEnumeration implements java.util.Enumeration<javax.swing.tree.TreeNode>
{
	private var root : javax.swing.tree.TreeNode;
	
	private var children : java.util.Enumeration<javax.swing.tree.TreeNode>;
	
	private var subtree : java.util.Enumeration<javax.swing.tree.TreeNode>;
	
	@:overload public function new(rootNode : javax.swing.tree.TreeNode) : Void;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : javax.swing.tree.TreeNode;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$BreadthFirstEnumeration') @:internal extern class DefaultMutableTreeNode_BreadthFirstEnumeration implements java.util.Enumeration<javax.swing.tree.TreeNode>
{
	private var queue : javax.swing.tree.DefaultMutableTreeNode.DefaultMutableTreeNode_BreadthFirstEnumeration_Queue;
	
	@:overload public function new(rootNode : javax.swing.tree.TreeNode) : Void;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : javax.swing.tree.TreeNode;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$BreadthFirstEnumeration$Queue') @:internal extern class DefaultMutableTreeNode_BreadthFirstEnumeration_Queue
{
	@:overload public function enqueue(anObject : Dynamic) : Void;
	
	@:overload public function dequeue() : Dynamic;
	
	@:overload public function firstObject() : Dynamic;
	
	@:overload public function isEmpty() : Bool;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode') @:internal extern class DefaultMutableTreeNode_BreadthFirstEnumeration_Queue_QNode
{
	public var object : Dynamic;
	
	public var next : javax.swing.tree.DefaultMutableTreeNode.DefaultMutableTreeNode_BreadthFirstEnumeration_Queue_QNode;
	
	@:overload public function new(object : Dynamic, next : javax.swing.tree.DefaultMutableTreeNode.DefaultMutableTreeNode_BreadthFirstEnumeration_Queue_QNode) : Void;
	
	
}
@:native('javax$swing$tree$DefaultMutableTreeNode$PathBetweenNodesEnumeration') @:internal extern class DefaultMutableTreeNode_PathBetweenNodesEnumeration implements java.util.Enumeration<javax.swing.tree.TreeNode>
{
	private var stack : java.util.Stack<javax.swing.tree.TreeNode>;
	
	@:overload public function new(ancestor : javax.swing.tree.TreeNode, descendant : javax.swing.tree.TreeNode) : Void;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : javax.swing.tree.TreeNode;
	
	
}
