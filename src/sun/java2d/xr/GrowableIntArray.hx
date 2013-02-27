package sun.java2d.xr;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
* Growable int array, designed to allow subclasses to emulate
* the behaviour of value types.
*
* @author Clemens Eisserer
*/
extern class GrowableIntArray
{
	@:overload public function new(cellSize : Int, initialSize : Int) : Void;
	
	/**
	* @return a direct reference to the backing array.
	*/
	@:overload public function getArray() : java.NativeArray<Int>;
	
	/**
	* @return a copy of the backing array.
	*/
	@:overload public function getSizedArray() : java.NativeArray<Int>;
	
	/**
	* Returns the index of the next free cell,
	* and grows the backing arrays if required.
	*/
	@:overload @:final public function getNextIndex() : Int;
	
	@:overload @:final private function getCellIndex(cellIndex : Int) : Int;
	
	@:overload @:final public function getInt(cellIndex : Int) : Int;
	
	@:overload @:final public function addInt(i : Int) : Void;
	
	/**
	* @return The number of stored cells.
	*/
	@:overload @:final public function getSize() : Int;
	
	@:overload public function clear() : Void;
	
	@:overload private function growArray() : Void;
	
	
}
