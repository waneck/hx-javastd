package sun.text;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class UCompactIntArray implements java.lang.Cloneable
{
	/**
	* Default constructor for UCompactIntArray, the default value of the
	* compact array is 0.
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(defaultValue : Int) : Void;
	
	/**
	* Get the mapped value of a Unicode character.
	* @param index the character to get the mapped value with
	* @return the mapped value of the given character
	*/
	@:overload public function elementAt(index : Int) : Int;
	
	/**
	* Set a new value for a Unicode character.
	* Set automatically expands the array if it is compacted.
	* @param index the character to set the mapped value with
	* @param value the new mapped value
	*/
	@:overload public function setElementAt(index : Int, value : Int) : Void;
	
	/**
	* Compact the array.
	*/
	@:overload public function compact() : Void;
	
	@:overload public function getKSize() : Int;
	
	
}
