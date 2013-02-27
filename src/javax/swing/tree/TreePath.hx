package javax.swing.tree;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class TreePath extends Dynamic implements java.io.Serializable
{
	/**
	* Creates a {@code TreePath} from an array. The array uniquely
	* identifies the path to a node.
	*
	* @param path an array of objects representing the path to a node
	* @throws IllegalArgumentException if {@code path} is {@code null},
	*         empty, or contains a {@code null} value
	*/
	@:overload public function new(path : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates a {@code TreePath} containing a single element. This is
	* used to construct a {@code TreePath} identifying the root.
	*
	* @param lastPathComponent the root
	* @see #TreePath(Object[])
	* @throws IllegalArgumentException if {@code lastPathComponent} is
	*         {@code null}
	*/
	@:overload public function new(lastPathComponent : Dynamic) : Void;
	
	/**
	* Creates a {@code TreePath} with the specified parent and element.
	*
	* @param parent the path to the parent, or {@code null} to indicate
	*        the root
	* @param lastPathComponent the last path element
	* @throws IllegalArgumentException if {@code lastPathComponent} is
	*         {@code null}
	*/
	@:overload private function new(parent : TreePath, lastPathComponent : Dynamic) : Void;
	
	/**
	* Creates a {@code TreePath} from an array. The returned
	* {@code TreePath} represents the elements of the array from
	* {@code 0} to {@code length - 1}.
	* <p>
	* This constructor is used internally, and generally not useful outside
	* of subclasses.
	*
	* @param path the array to create the {@code TreePath} from
	* @param length identifies the number of elements in {@code path} to
	*        create the {@code TreePath} from
	* @throws NullPointerException if {@code path} is {@code null}
	* @throws ArrayIndexOutOfBoundsException if {@code length - 1} is
	*         outside the range of the array
	* @throws IllegalArgumentException if any of the elements from
	*         {@code 0} to {@code length - 1} are {@code null}
	*/
	@:overload private function new(path : java.NativeArray<Dynamic>, length : Int) : Void;
	
	/**
	* Creates an empty {@code TreePath}.  This is provided for
	* subclasses that represent paths in a different
	* manner. Subclasses that use this constructor must override
	* {@code getLastPathComponent}, and {@code getParentPath}.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns an ordered array of the elements of this {@code TreePath}.
	* The first element is the root.
	*
	* @return an array of the elements in this {@code TreePath}
	*/
	@:overload public function getPath() : java.NativeArray<Dynamic>;
	
	/**
	* Returns the last element of this path.
	*
	* @return the last element in the path
	*/
	@:overload public function getLastPathComponent() : Dynamic;
	
	/**
	* Returns the number of elements in the path.
	*
	* @return the number of elements in the path
	*/
	@:overload public function getPathCount() : Int;
	
	/**
	* Returns the path element at the specified index.
	*
	* @param index the index of the element requested
	* @return the element at the specified index
	* @throws IllegalArgumentException if the index is outside the
	*         range of this path
	*/
	@:overload public function getPathComponent(index : Int) : Dynamic;
	
	/**
	* Compares this {@code TreePath} to the specified object. This returns
	* {@code true} if {@code o} is a {@code TreePath} with the exact
	* same elements (as determined by using {@code equals} on each
	* element of the path).
	*
	* @param o the object to compare
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code of this {@code TreePath}. The hash code of a
	* {@code TreePath} is the hash code of the last element in the path.
	*
	* @return the hashCode for the object
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns true if <code>aTreePath</code> is a
	* descendant of this
	* {@code TreePath}. A {@code TreePath} {@code P1} is a descendant of a
	* {@code TreePath} {@code P2}
	* if {@code P1} contains all of the elements that make up
	* {@code P2's} path.
	* For example, if this object has the path {@code [a, b]},
	* and <code>aTreePath</code> has the path {@code [a, b, c]},
	* then <code>aTreePath</code> is a descendant of this object.
	* However, if <code>aTreePath</code> has the path {@code [a]},
	* then it is not a descendant of this object.  By this definition
	* a {@code TreePath} is always considered a descendant of itself.
	* That is, <code>aTreePath.isDescendant(aTreePath)</code> returns
	* {@code true}.
	*
	* @param aTreePath the {@code TreePath} to check
	* @return true if <code>aTreePath</code> is a descendant of this path
	*/
	@:overload public function isDescendant(aTreePath : TreePath) : Bool;
	
	/**
	* Returns a new path containing all the elements of this path
	* plus <code>child</code>. <code>child</code> is the last element
	* of the newly created {@code TreePath}.
	*
	* @param child the path element to add
	* @throws NullPointerException if {@code child} is {@code null}
	*/
	@:overload public function pathByAddingChild(child : Dynamic) : TreePath;
	
	/**
	* Returns the {@code TreePath} of the parent. A return value of
	* {@code null} indicates this is the root node.
	*
	* @return the parent path
	*/
	@:overload public function getParentPath() : TreePath;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload override public function toString() : String;
	
	
}
