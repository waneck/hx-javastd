package java.util;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the Dual-Pivot Quicksort algorithm by
* Vladimir Yaroslavskiy, Jon Bentley, and Josh Bloch. The algorithm
* offers O(n log(n)) performance on many data sets that cause other
* quicksorts to degrade to quadratic performance, and is typically
* faster than traditional (one-pivot) Quicksort implementations.
*
* @author Vladimir Yaroslavskiy
* @author Jon Bentley
* @author Josh Bloch
*
* @version 2011.02.11 m765.827.12i:5\7pm
* @since 1.7
*/
@:require(java7) @:internal extern class DualPivotQuicksort
{
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Int>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Int>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<haxe.Int64>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<haxe.Int64>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Int16>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Char16>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<java.StdTypes.Int8>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Single>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Single>, left : Int, right : Int) : Void;
	
	/**
	* Sorts the specified array.
	*
	* @param a the array to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Float>) : Void;
	
	/**
	* Sorts the specified range of the array.
	*
	* @param a the array to be sorted
	* @param left the index of the first element, inclusive, to be sorted
	* @param right the index of the last element, inclusive, to be sorted
	*/
	@:overload @:public @:static public static function sort(a : java.NativeArray<Float>, left : Int, right : Int) : Void;
	
	
}
