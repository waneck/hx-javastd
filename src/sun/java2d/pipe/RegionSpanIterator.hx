package sun.java2d.pipe;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class implements the ShapeIterator interface for a Region.
* This is useful as the source iterator of a device clip region
* (in its native guise), and also as the result of clipping a
* Region to a rectangle.
*/
extern class RegionSpanIterator implements sun.java2d.pipe.SpanIterator
{
	/**
	* Constructs an instance based on the given Region
	*/
	@:overload @:public public function new(r : sun.java2d.pipe.Region) : Void;
	
	/**
	* Gets the bbox of the available region spans.
	*/
	@:overload @:public public function getPathBox(pathbox : java.NativeArray<Int>) : Void;
	
	/**
	* Intersect the box used for clipping the output spans with the
	* given box.
	*/
	@:overload @:public public function intersectClipBox(clox : Int, cloy : Int, chix : Int, chiy : Int) : Void;
	
	/**
	* Fetches the next span that needs to be operated on.
	* If the return value is false then there are no more spans.
	*/
	@:overload @:public public function nextSpan(spanbox : java.NativeArray<Int>) : Bool;
	
	/**
	* This method tells the iterator that it may skip all spans
	* whose Y range is completely above the indicated Y coordinate.
	*/
	@:overload @:public public function skipDownTo(y : Int) : Void;
	
	/**
	* This method returns a native pointer to a function block that
	* can be used by a native method to perform the same iteration
	* cycle that the above methods provide while avoiding upcalls to
	* the Java object.
	* The definition of the structure whose pointer is returned by
	* this method is defined in:
	* <pre>
	*     src/share/native/sun/java2d/pipe/SpanIterator.h
	* </pre>
	*/
	@:overload @:public public function getNativeIterator() : haxe.Int64;
	
	
}
