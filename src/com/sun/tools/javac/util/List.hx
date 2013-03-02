package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class List<A> extends java.util.AbstractCollection<A> implements java.util.List<A>
{
	/** The first element of the list, supposed to be immutable.
	*/
	public var head : A;
	
	/** The remainder of the list except for its first element, supposed
	*  to be immutable.
	*/
	public var tail : java.util.List<A>;
	
	/** Construct an empty list.
	*/
	@:overload public static function nil<A>() : java.util.List<A>;
	
	/** Construct a list consisting of given element.
	*/
	@:overload public static function of<A>(x1 : A) : java.util.List<A>;
	
	/** Construct a list consisting of given elements.
	*/
	@:overload public static function of<A>(x1 : A, x2 : A) : java.util.List<A>;
	
	/** Construct a list consisting of given elements.
	*/
	@:overload public static function of<A>(x1 : A, x2 : A, x3 : A) : java.util.List<A>;
	
	/** Construct a list consisting of given elements.
	*/
	@:overload public static function of<A>(x1 : A, x2 : A, x3 : A, rest : java.NativeArray<A>) : java.util.List<A>;
	
	/**
	* Construct a list consisting all elements of given array.
	* @param array an array; if {@code null} return an empty list
	*/
	@:overload public static function from<A>(array : java.NativeArray<A>) : java.util.List<A>;
	
	/** Construct a list consisting of a given number of identical elements.
	*  @param len    The number of elements in the list.
	*  @param init   The value of each element.
	*/
	@:overload public static function fill<A>(len : Int, init : A) : java.util.List<A>;
	
	/** Does list have no elements?
	*/
	@:overload public function isEmpty() : Bool;
	
	/** Does list have elements?
	*/
	@:overload public function nonEmpty() : Bool;
	
	/** Return the number of elements in this list.
	*/
	@:overload public function length() : Int;
	
	@:overload public function size() : Int;
	
	@:overload public function setTail(tail : java.util.List<A>) : java.util.List<A>;
	
	/** Prepend given element to front of list, forming and returning
	*  a new list.
	*/
	@:overload public function prepend(x : A) : java.util.List<A>;
	
	/** Prepend given list of elements to front of list, forming and returning
	*  a new list.
	*/
	@:overload public function prependList(xs : java.util.List<A>) : java.util.List<A>;
	
	/** Reverse list.
	* If the list is empty or a singleton, then the same list is returned.
	* Otherwise a new list is formed.
	*/
	@:overload public function reverse() : java.util.List<A>;
	
	/** Append given element at length, forming and returning
	*  a new list.
	*/
	@:overload public function append(x : A) : java.util.List<A>;
	
	/** Append given list at length, forming and returning
	*  a new list.
	*/
	@:overload public function appendList(x : java.util.List<A>) : java.util.List<A>;
	
	/**
	* Append given list buffer at length, forming and returning a new
	* list.
	*/
	@:overload public function appendList(x : com.sun.tools.javac.util.ListBuffer<A>) : java.util.List<A>;
	
	/** Copy successive elements of this list into given vector until
	*  list is exhausted or end of vector is reached.
	*/
	@:overload public function toArray<T>(vec : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	/** Form a string listing all elements with given separator character.
	*/
	@:overload public function toString(sep : String) : String;
	
	/** Form a string listing all elements with comma as the separator character.
	*/
	@:overload public function toString() : String;
	
	/** Compute a hash code, overrides Object
	*  @see java.util.List#hashCode
	*/
	@:overload public function hashCode() : Int;
	
	/** Is this list the same as other list?
	*  @see java.util.List#equals
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/** Are the two lists the same?
	*/
	@:native('equals') @:overload public static function _equals(xs : java.util.List<Dynamic>, ys : java.util.List<Dynamic>) : Bool;
	
	/** Does the list contain the specified element?
	*/
	@:overload public function contains(x : Dynamic) : Bool;
	
	/** The last element in the list, if any, or null.
	*/
	@:overload public function last() : A;
	
	@:overload public static function convert<T>(klass : Class<T>, list : java.util.List<Dynamic>) : java.util.List<T>;
	
	@:overload public function iterator() : java.util.Iterator<A>;
	
	@:overload public function get(index : Int) : A;
	
	@:overload public function addAll(index : Int, c : java.util.Collection<A>) : Bool;
	
	@:overload public function set(index : Int, element : A) : A;
	
	@:overload public function add(index : Int, element : A) : Void;
	
	@:overload public function remove(index : Int) : A;
	
	@:overload public function indexOf(o : Dynamic) : Int;
	
	@:overload public function lastIndexOf(o : Dynamic) : Int;
	
	@:overload public function listIterator() : java.util.ListIterator<A>;
	
	@:overload public function listIterator(index : Int) : java.util.ListIterator<A>;
	
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<A>;
	
	
}
