package com.sun.tools.hat.internal.model;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
extern class JavaThing
{
	/**
	* Represents a java "Thing".  A thing is anything that can be the value of
	* a field.  This includes JavaHeapObject, JavaObjectRef, and JavaValue.
	*/
	@:overload private function new() : Void;
	
	/**
	* If this is a forward reference, figure out what it really
	* refers to.
	*
	* @param snapshot  The snapshot this is for
	* @param field     The field this thing represents.  If null, it is
	*                  assumed this thing is an object (and never a value).
	*/
	@:overload public function dereference(shapshot : com.sun.tools.hat.internal.model.Snapshot, field : com.sun.tools.hat.internal.model.JavaField) : JavaThing;
	
	/**
	* Are we the same type as other?
	*
	* @see JavaObject.isSameTypeAs()
	*/
	@:overload public function isSameTypeAs(other : JavaThing) : Bool;
	
	/**
	* @return true iff this represents a heap-allocated object
	*/
	@:overload @:abstract public function isHeapAllocated() : Bool;
	
	/**
	* @return the size of this object, in bytes, including VM overhead
	*/
	@:overload @:abstract public function getSize() : Int;
	
	/**
	* @return a human-readable string representation of this thing
	*/
	@:overload @:abstract public function toString() : String;
	
	/**
	* Compare our string representation to other's
	* @see java.lang.String.compareTo()
	*/
	@:overload public function compareTo(other : JavaThing) : Int;
	
	
}
