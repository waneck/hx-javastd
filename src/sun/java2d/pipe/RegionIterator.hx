package sun.java2d.pipe;
/*
* Copyright (c) 1998, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class RegionIterator
{
	/**
	* Returns a new RegionIterator object representing the same
	* iteration state as this object to allow multiple iteration
	* branches from the current position.
	*/
	@:overload @:public public function createCopy() : sun.java2d.pipe.RegionIterator;
	
	/**
	* Copies the iteration state from this RegionIterator object
	* into another RegionIterator object to allow multiple iteration
	* branches from the current position.
	*/
	@:overload @:public public function copyStateFrom(ri : sun.java2d.pipe.RegionIterator) : Void;
	
	/**
	* Moves the iteration state to the beginning of the next
	* Y range in the region returning true if one is found
	* and recording the low and high Y coordinates of the
	* range in the array at locations 1 and 3 respectively.
	*/
	@:overload @:public public function nextYRange(range : java.NativeArray<Int>) : Bool;
	
	/**
	* Moves the iteration state to the beginning of the next
	* X band in the current Y range returning true if one is
	* found and recording the low and high X coordinates of
	* the range in the array at locations 0 and 2 respectively.
	*/
	@:overload @:public public function nextXBand(range : java.NativeArray<Int>) : Bool;
	
	
}
