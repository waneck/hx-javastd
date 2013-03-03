package javax.swing.text;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GapVector implements java.io.Serializable
{
	/**
	* Creates a new GapVector object.  Initial size defaults to 10.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new GapVector object, with the initial
	* size specified.
	*
	* @param initialLength the initial size
	*/
	@:overload @:public public function new(initialLength : Int) : Void;
	
	/**
	* Allocate an array to store items of the type
	* appropriate (which is determined by the subclass).
	*/
	@:overload @:protected @:abstract private function allocateArray(len : Int) : Dynamic;
	
	/**
	* Get the length of the allocated array
	*/
	@:overload @:protected @:abstract private function getArrayLength() : Int;
	
	/**
	* Access to the array.  The actual type
	* of the array is known only by the subclass.
	*/
	@:overload @:protected @:final private function getArray() : Dynamic;
	
	/**
	* Access to the start of the gap.
	*/
	@:overload @:protected @:final private function getGapStart() : Int;
	
	/**
	* Access to the end of the gap.
	*/
	@:overload @:protected @:final private function getGapEnd() : Int;
	
	/**
	* Replace the given logical position in the storage with
	* the given new items.  This will move the gap to the area
	* being changed if the gap is not currently located at the
	* change location.
	*
	* @param position the location to make the replacement.  This
	*  is not the location in the underlying storage array, but
	*  the location in the contiguous space being modeled.
	* @param rmSize the number of items to remove
	* @param addItems the new items to place in storage.
	*/
	@:overload @:protected private function replace(position : Int, rmSize : Int, addItems : Dynamic, addSize : Int) : Void;
	
	/**
	* Make the gap bigger, moving any necessary data and updating
	* the appropriate marks
	*/
	@:overload @:protected private function shiftEnd(newSize : Int) : Void;
	
	/**
	* Move the start of the gap to a new location,
	* without changing the size of the gap.  This
	* moves the data in the array and updates the
	* marks accordingly.
	*/
	@:overload @:protected private function shiftGap(newGapStart : Int) : Void;
	
	/**
	* Adjust the gap end downward.  This doesn't move
	* any data, but it does update any marks affected
	* by the boundary change.  All marks from the old
	* gap start down to the new gap start are squeezed
	* to the end of the gap (their location has been
	* removed).
	*/
	@:overload @:protected private function shiftGapStartDown(newGapStart : Int) : Void;
	
	/**
	* Adjust the gap end upward.  This doesn't move
	* any data, but it does update any marks affected
	* by the boundary change. All marks from the old
	* gap end up to the new gap end are squeezed
	* to the end of the gap (their location has been
	* removed).
	*/
	@:overload @:protected private function shiftGapEndUp(newGapEnd : Int) : Void;
	
	
}
