package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Heuristic chooser of basic encodings.
* Runs "zip" to measure the apparent information content after coding.
* @author John Rose
*/
@:internal extern class CodingChooser
{
	public static var MIN_EFFORT(default, null) : Int;
	
	public static var MID_EFFORT(default, null) : Int;
	
	public static var MAX_EFFORT(default, null) : Int;
	
	public static var POP_EFFORT(default, null) : Int;
	
	public static var RUN_EFFORT(default, null) : Int;
	
	public static var BYTE_SIZE(default, null) : Int;
	
	public static var ZIP_SIZE(default, null) : Int;
	
	@:overload public function computeSize(c : com.sun.java.util.jar.pack.CodingMethod, values : java.NativeArray<Int>, start : Int, end : Int, sizes : java.NativeArray<Int>) : Void;
	
	@:overload public function computeSize(c : com.sun.java.util.jar.pack.CodingMethod, values : java.NativeArray<Int>, sizes : java.NativeArray<Int>) : Void;
	
	@:overload public function computeSize(c : com.sun.java.util.jar.pack.CodingMethod, values : java.NativeArray<Int>, start : Int, end : Int) : java.NativeArray<Int>;
	
	@:overload public function computeSize(c : com.sun.java.util.jar.pack.CodingMethod, values : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload public function computeByteSize(cm : com.sun.java.util.jar.pack.CodingMethod, values : java.NativeArray<Int>, start : Int, end : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$CodingChooser$Choice') @:internal extern class CodingChooser_Choice
{
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$CodingChooser$Sizer') @:internal extern class CodingChooser_Sizer extends java.io.OutputStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function getSize() : Int;
	
	@:overload public function toString() : String;
	
	
}
