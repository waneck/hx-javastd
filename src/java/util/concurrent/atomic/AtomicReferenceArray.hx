package java.util.concurrent.atomic;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class AtomicReferenceArray<E> implements java.io.Serializable
{
	/**
	* Creates a new AtomicReferenceArray of the given length, with all
	* elements initially null.
	*
	* @param length the length of the array
	*/
	@:overload @:public public function new(length : Int) : Void;
	
	/**
	* Creates a new AtomicReferenceArray with the same length as, and
	* all elements copied from, the given array.
	*
	* @param array the array to copy elements from
	* @throws NullPointerException if array is null
	*/
	@:overload @:public public function new(array : java.NativeArray<E>) : Void;
	
	/**
	* Returns the length of the array.
	*
	* @return the length of the array
	*/
	@:overload @:public @:final public function length() : Int;
	
	/**
	* Gets the current value at position {@code i}.
	*
	* @param i the index
	* @return the current value
	*/
	@:overload @:public @:final public function get(i : Int) : E;
	
	/**
	* Sets the element at position {@code i} to the given value.
	*
	* @param i the index
	* @param newValue the new value
	*/
	@:overload @:public @:final public function set(i : Int, newValue : E) : Void;
	
	/**
	* Eventually sets the element at position {@code i} to the given value.
	*
	* @param i the index
	* @param newValue the new value
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:final public function lazySet(i : Int, newValue : E) : Void;
	
	/**
	* Atomically sets the element at position {@code i} to the given
	* value and returns the old value.
	*
	* @param i the index
	* @param newValue the new value
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndSet(i : Int, newValue : E) : E;
	
	/**
	* Atomically sets the element at position {@code i} to the given
	* updated value if the current value {@code ==} the expected value.
	*
	* @param i the index
	* @param expect the expected value
	* @param update the new value
	* @return true if successful. False return indicates that
	* the actual value was not equal to the expected value.
	*/
	@:overload @:public @:final public function compareAndSet(i : Int, expect : E, update : E) : Bool;
	
	/**
	* Atomically sets the element at position {@code i} to the given
	* updated value if the current value {@code ==} the expected value.
	*
	* <p>May <a href="package-summary.html#Spurious">fail spuriously</a>
	* and does not provide ordering guarantees, so is only rarely an
	* appropriate alternative to {@code compareAndSet}.
	*
	* @param i the index
	* @param expect the expected value
	* @param update the new value
	* @return true if successful.
	*/
	@:overload @:public @:final public function weakCompareAndSet(i : Int, expect : E, update : E) : Bool;
	
	/**
	* Returns the String representation of the current values of array.
	* @return the String representation of the current values of array
	*/
	@:overload @:public public function toString() : String;
	
	
}
