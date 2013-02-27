package com.sun.xml.internal.xsom.impl.scd;
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
extern class Iterators
{
	@:overload public static function empty<T>() : java.util.Iterator<T>;
	
	@:overload public static function singleton<T>(value : T) : java.util.Iterator<T>;
	
	
}
/**
* Various convenient {@link Iterator} implementations.
* @author Kohsuke Kawaguchi
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$ReadOnly') @:internal extern class Iterators_ReadOnly<T> implements java.util.Iterator<T>
{
	@:overload @:final public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload public function next() : Dynamic;
	
	/**
	* Returns {@code true} if the iteration has more elements.
	* (In other words, returns {@code true} if {@link #next} would
	* return an element rather than throwing an exception.)
	*
	* @return {@code true} if the iteration has more elements
	*/
	@:overload public function hasNext() : Bool;
	
	
}
/**
* {@link Iterator} that returns a single (or no) value.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Singleton') @:internal extern class Iterators_Singleton<T> extends Iterators_ReadOnly<T>
{
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	
}
/**
* {@link Iterator} that wraps another {@link Iterator} and changes its type.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Adapter') extern class Iterators_Adapter<T, U> extends Iterators_ReadOnly<T>
{
	@:overload public function new(core : java.util.Iterator<U>) : Void;
	
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	@:overload @:abstract private function filter(u : U) : T;
	
	
}
/**
* For each U, apply U->Iterator&lt;T> function and then iterate all
* the resulting T.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Map') extern class Iterators_Map<T, U> extends Iterators_ReadOnly<T>
{
	@:overload private function new(core : java.util.Iterator<U>) : Void;
	
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	@:overload @:abstract private function apply(u : U) : java.util.Iterator<T>;
	
	
}
/**
* Filter out objects from another iterator.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Filter') extern class Iterators_Filter<T> extends Iterators_ReadOnly<T>
{
	@:overload private function new(core : java.util.Iterator<T>) : Void;
	
	/**
	* Return true to retain the value.
	*/
	@:overload @:abstract private function matches(value : T) : Bool;
	
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	
}
/**
* Only return unique items.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Unique') @:internal extern class Iterators_Unique<T> extends Iterators_Filter<T>
{
	@:overload public function new(core : java.util.Iterator<T>) : Void;
	
	@:overload override private function matches(value : T) : Bool;
	
	
}
/**
* Union of two iterators.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Union') extern class Iterators_Union<T> extends Iterators_ReadOnly<T>
{
	@:overload public function new(first : java.util.Iterator<T>, second : java.util.Iterator<T>) : Void;
	
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	
}
/**
* Array iterator.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Iterators$Array') extern class Iterators_Array<T> extends Iterators_ReadOnly<T>
{
	@:overload public function new(items : java.NativeArray<T>) : Void;
	
	@:overload override public function hasNext() : Bool;
	
	@:overload override public function next() : T;
	
	
}
