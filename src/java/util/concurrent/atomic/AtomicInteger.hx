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
extern class AtomicInteger extends java.lang.Number implements java.io.Serializable
{
	/**
	* Creates a new AtomicInteger with the given initial value.
	*
	* @param initialValue the initial value
	*/
	@:overload @:public public function new(initialValue : Int) : Void;
	
	/**
	* Creates a new AtomicInteger with initial value {@code 0}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Gets the current value.
	*
	* @return the current value
	*/
	@:overload @:public @:final public function get() : Int;
	
	/**
	* Sets to the given value.
	*
	* @param newValue the new value
	*/
	@:overload @:public @:final public function set(newValue : Int) : Void;
	
	/**
	* Eventually sets to the given value.
	*
	* @param newValue the new value
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:final public function lazySet(newValue : Int) : Void;
	
	/**
	* Atomically sets to the given value and returns the old value.
	*
	* @param newValue the new value
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndSet(newValue : Int) : Int;
	
	/**
	* Atomically sets the value to the given updated value
	* if the current value {@code ==} the expected value.
	*
	* @param expect the expected value
	* @param update the new value
	* @return true if successful. False return indicates that
	* the actual value was not equal to the expected value.
	*/
	@:overload @:public @:final public function compareAndSet(expect : Int, update : Int) : Bool;
	
	/**
	* Atomically sets the value to the given updated value
	* if the current value {@code ==} the expected value.
	*
	* <p>May <a href="package-summary.html#Spurious">fail spuriously</a>
	* and does not provide ordering guarantees, so is only rarely an
	* appropriate alternative to {@code compareAndSet}.
	*
	* @param expect the expected value
	* @param update the new value
	* @return true if successful.
	*/
	@:overload @:public @:final public function weakCompareAndSet(expect : Int, update : Int) : Bool;
	
	/**
	* Atomically increments by one the current value.
	*
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndIncrement() : Int;
	
	/**
	* Atomically decrements by one the current value.
	*
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndDecrement() : Int;
	
	/**
	* Atomically adds the given value to the current value.
	*
	* @param delta the value to add
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndAdd(delta : Int) : Int;
	
	/**
	* Atomically increments by one the current value.
	*
	* @return the updated value
	*/
	@:overload @:public @:final public function incrementAndGet() : Int;
	
	/**
	* Atomically decrements by one the current value.
	*
	* @return the updated value
	*/
	@:overload @:public @:final public function decrementAndGet() : Int;
	
	/**
	* Atomically adds the given value to the current value.
	*
	* @param delta the value to add
	* @return the updated value
	*/
	@:overload @:public @:final public function addAndGet(delta : Int) : Int;
	
	/**
	* Returns the String representation of the current value.
	* @return the String representation of the current value.
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function intValue() : Int;
	
	@:overload @:public override public function longValue() : haxe.Int64;
	
	@:overload @:public override public function floatValue() : Single;
	
	@:overload @:public override public function doubleValue() : Float;
	
	
}
