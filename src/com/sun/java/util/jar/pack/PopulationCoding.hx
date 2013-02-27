package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Population-based coding.
* See the section "Encodings of Uncorrelated Values" in the Pack200 spec.
* @author John Rose
*/
//// This tactic alone reduces the final zipped rt.jar by about a percent.
@:internal extern class PopulationCoding implements com.sun.java.util.jar.pack.CodingMethod
{
	@:overload public function setFavoredValues(fValues : java.NativeArray<Int>, fVlen : Int) : Void;
	
	@:overload public function setFavoredValues(fValues : java.NativeArray<Int>) : Void;
	
	@:overload public function setHistogram(vHist : com.sun.java.util.jar.pack.Histogram) : Void;
	
	@:overload public function setL(L : Int) : Void;
	
	@:overload public static function fitTokenCoding(fVlen : Int, L : Int) : com.sun.java.util.jar.pack.Coding;
	
	@:overload public function setFavoredCoding(favoredCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload public function setTokenCoding(tokenCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload public function setUnfavoredCoding(unfavoredCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload public function favoredValueMaxLength() : Int;
	
	@:overload public function resortFavoredValues() : Void;
	
	@:overload public function getToken(value : Int) : Int;
	
	@:overload public function encodeValues(values : java.NativeArray<Int>, start : Int, end : Int) : java.NativeArray<java.NativeArray<Int>>;
	
	@:overload public function writeArrayTo(out : java.io.OutputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:overload public function readArrayFrom(_in : java.io.InputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:overload public function getMetaCoding(dflt : com.sun.java.util.jar.pack.Coding) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function parseMetaCoding(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, dflt : com.sun.java.util.jar.pack.Coding, res : java.NativeArray<com.sun.java.util.jar.pack.CodingMethod>) : Int;
	
	@:overload public function toString() : String;
	
	
}
