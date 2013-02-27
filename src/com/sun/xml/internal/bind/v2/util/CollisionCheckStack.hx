package com.sun.xml.internal.bind.v2.util;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CollisionCheckStack<E> extends java.util.AbstractList<E>
{
	@:overload public function new() : Void;
	
	/**
	* Set to false to use {@link Object#equals(Object)} to detect cycles.
	* This method can be only used when the stack is empty.
	*/
	@:overload public function setUseIdentity(useIdentity : Bool) : Void;
	
	@:overload public function getUseIdentity() : Bool;
	
	@:overload public function getLatestPushResult() : Bool;
	
	/**
	* Pushes a new object to the stack.
	*
	* @return
	*      true if this object has already been pushed
	*/
	@:overload public function push(o : E) : Bool;
	
	/**
	* Pushes a new object to the stack without making it participate
	* with the collision check.
	*/
	@:overload public function pushNocheck(o : E) : Void;
	
	@:overload public function findDuplicate(o : E) : Bool;
	
	@:overload override public function get(index : Int) : E;
	
	@:overload override public function size() : Int;
	
	/**
	* Pops an object from the stack
	*/
	@:overload public function pop() : E;
	
	/**
	* Returns the top of the stack.
	*/
	@:overload public function peek() : E;
	
	/**
	* Clears all the contents in the stack.
	*/
	@:overload public function reset() : Void;
	
	/**
	* String that represents the cycle.
	*/
	@:overload public function getCycleString() : String;
	
	
}
