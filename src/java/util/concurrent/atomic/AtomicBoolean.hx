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
extern class AtomicBoolean implements java.io.Serializable
{
	/**
	* Creates a new {@code AtomicBoolean} with the given initial value.
	*
	* @param initialValue the initial value
	*/
	@:overload @:public public function new(initialValue : Bool) : Void;
	
	/**
	* Creates a new {@code AtomicBoolean} with initial value {@code false}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the current value.
	*
	* @return the current value
	*/
	@:overload @:public @:final public function get() : Bool;
	
	/**
	* Atomically sets the value to the given updated value
	* if the current value {@code ==} the expected value.
	*
	* @param expect the expected value
	* @param update the new value
	* @return true if successful. False return indicates that
	* the actual value was not equal to the expected value.
	*/
	@:overload @:public @:final public function compareAndSet(expect : Bool, update : Bool) : Bool;
	
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
	@:overload @:public public function weakCompareAndSet(expect : Bool, update : Bool) : Bool;
	
	/**
	* Unconditionally sets to the given value.
	*
	* @param newValue the new value
	*/
	@:overload @:public @:final public function set(newValue : Bool) : Void;
	
	/**
	* Eventually sets to the given value.
	*
	* @param newValue the new value
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:final public function lazySet(newValue : Bool) : Void;
	
	/**
	* Atomically sets to the given value and returns the previous value.
	*
	* @param newValue the new value
	* @return the previous value
	*/
	@:overload @:public @:final public function getAndSet(newValue : Bool) : Bool;
	
	/**
	* Returns the String representation of the current value.
	* @return the String representation of the current value.
	*/
	@:overload @:public public function toString() : String;
	
	
}
