package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ListBuffer<A> extends java.util.AbstractQueue<A>
{
	/** A class for constructing lists by appending elements. Modelled after
	*  java.lang.StringBuffer.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload public static function lb<T>() : ListBuffer<T>;
	
	@:overload public static function of<T>(x : T) : ListBuffer<T>;
	
	/** The list of elements of this buffer.
	*/
	public var elems : com.sun.tools.javac.util.List<A>;
	
	/** A pointer pointing to the last, sentinel element of `elems'.
	*/
	public var last : com.sun.tools.javac.util.List<A>;
	
	/** The number of element in this buffer.
	*/
	public var count : Int;
	
	/** Has a list been created from this buffer yet?
	*/
	public var shared : Bool;
	
	/** Create a new initially empty list buffer.
	*/
	@:overload public function new() : Void;
	
	@:overload @:final override public function clear() : Void;
	
	/** Return the number of elements in this buffer.
	*/
	@:overload public function length() : Int;
	
	@:overload override public function size() : Int;
	
	/** Is buffer empty?
	*/
	@:overload override public function isEmpty() : Bool;
	
	/** Is buffer not empty?
	*/
	@:overload public function nonEmpty() : Bool;
	
	/** Prepend an element to buffer.
	*/
	@:overload public function prepend(x : A) : ListBuffer<A>;
	
	/** Append an element to buffer.
	*/
	@:overload public function append(x : A) : ListBuffer<A>;
	
	/** Append all elements in a list to buffer.
	*/
	@:overload public function appendList(xs : com.sun.tools.javac.util.List<A>) : ListBuffer<A>;
	
	/** Append all elements in a list to buffer.
	*/
	@:overload public function appendList(xs : ListBuffer<A>) : ListBuffer<A>;
	
	/** Append all elements in an array to buffer.
	*/
	@:overload public function appendArray(xs : java.NativeArray<A>) : ListBuffer<A>;
	
	/** Convert buffer to a list of all its elements.
	*/
	@:overload public function toList() : com.sun.tools.javac.util.List<A>;
	
	/** Does the list contain the specified element?
	*/
	@:overload override public function contains(x : Dynamic) : Bool;
	
	/** Convert buffer to an array
	*/
	@:overload override public function toArray<T>(vec : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/** The first element in this buffer.
	*/
	@:overload public function first() : A;
	
	/** Return first element in this buffer and remove
	*/
	@:overload public function next() : A;
	
	/** An enumeration of all elements in this buffer.
	*/
	@:overload override public function iterator() : java.util.Iterator<A>;
	
	@:overload override public function add(a : A) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload override public function addAll(c : java.util.Collection<A>) : Bool;
	
	@:overload override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload override public function offer(a : A) : Bool;
	
	@:overload override public function poll() : A;
	
	@:overload override public function peek() : A;
	
	
}
