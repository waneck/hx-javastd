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
@:internal extern class PartiallyOrderedSet extends java.util.AbstractSet<Dynamic>
{
	/**
	* Constructs a <code>PartiallyOrderedSet</code>.
	*/
	@:overload public function new() : Void;
	
	@:overload override public function size() : Int;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns an iterator over the elements contained in this
	* collection, with an ordering that respects the orderings set
	* by the <code>setOrdering</code> method.
	*/
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds an <code>Object</code> to this
	* <code>PartiallyOrderedSet</code>.
	*/
	@:overload override public function add(o : Dynamic) : Bool;
	
	/**
	* Removes an <code>Object</code> from this
	* <code>PartiallyOrderedSet</code>.
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	/**
	* Sets an ordering between two nodes.  When an iterator is
	* requested, the first node will appear earlier in the
	* sequence than the second node.  If a prior ordering existed
	* between the nodes in the opposite order, it is removed.
	*
	* @return <code>true</code> if no prior ordering existed
	* between the nodes, <code>false</code>otherwise.
	*/
	@:overload public function setOrdering(first : Dynamic, second : Dynamic) : Bool;
	
	/**
	* Removes any ordering between two nodes.
	*
	* @return true if a prior prefence existed between the nodes.
	*/
	@:overload public function unsetOrdering(first : Dynamic, second : Dynamic) : Bool;
	
	/**
	* Returns <code>true</code> if an ordering exists between two
	* nodes.
	*/
	@:overload public function hasOrdering(preferred : Dynamic, other : Dynamic) : Bool;
	
	
}
@:internal extern class PartialOrderIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function new(iter : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
