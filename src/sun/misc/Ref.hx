package sun.misc;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Ref
{
	/**
	* Returns a pointer to the object referenced by this Ref.  If the object
	* has been thrown away by the garbage collector, it will be
	* reconstituted. This method does everything necessary to ensure that the garbage
	* collector throws things away in Least Recently Used(LRU) order.  Applications should
	* never override this method. The get() method effectively caches calls to
	* reconstitute().
	*/
	@:overload @:public @:synchronized public function get() : Dynamic;
	
	/**
	* Returns a pointer to the object referenced by this Ref by
	* reconstituting it from some external source (such as a file).  This method should not
	* bother with caching since the method get() will deal with that.
	* <p>
	* In normal usage, Ref will always be subclassed.  The subclass will add
	* the instance variables necessary for reconstitute() to work.  It will
	* also add a constructor to set them up, and write a version of
	* reconstitute().
	*/
	@:overload @:public @:abstract public function reconstitute() : Dynamic;
	
	/**
	* Flushes the cached object.  Forces the next invocation of get() to
	* invoke reconstitute().
	*/
	@:overload @:public @:synchronized public function flush() : Void;
	
	/**
	* Sets the thing to the specified object.
	* @param thing the specified object
	*/
	@:overload @:public @:synchronized public function setThing(thing : Dynamic) : Void;
	
	/**
	* Checks to see what object is being pointed at by this Ref and returns it.
	*/
	@:overload @:public @:synchronized public function check() : Dynamic;
	
	/**
	* Constructs a new Ref.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new Ref that initially points to thing.
	*/
	@:overload @:public public function new(thing : Dynamic) : Void;
	
	
}
