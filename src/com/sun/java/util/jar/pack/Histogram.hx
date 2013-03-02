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
@:internal extern class Histogram
{
	/**
	* Histogram derived from an integer array of events (int[]).
	* @author John Rose
	*/
	private var matrix(default, null) : java.NativeArray<java.NativeArray<Int>>;
	
	private var totalWeight(default, null) : Int;
	
	private var values(default, null) : java.NativeArray<Int>;
	
	private var counts(default, null) : java.NativeArray<Int>;
	
	/** Build a histogram given a sequence of values.
	*  To save work, the input should be sorted, but need not be.
	*/
	@:overload public function new(valueSequence : java.NativeArray<Int>) : Void;
	
	@:overload public function new(valueSequence : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	/** Build a histogram given a compact matrix of counts and values. */
	@:overload public function new(matrix : java.NativeArray<java.NativeArray<Int>>) : Void;
	
	/** Histogram of int values, reported compactly as a ragged matrix,
	*  indexed by descending frequency rank.
	*  <p>
	*  Format of matrix:
	*  Each row in the matrix begins with an occurrence count,
	*  and continues with all int values that occur at that frequency.
	*  <pre>
	*  int[][] matrix = {
	*    { count1, value11, value12, value13, ...  },
	*    { count2, value21, value22, ... },
	*    ...
	*  }
	*  </pre>
	*  The first column of the matrix { count1, count2, ... }
	*  is sorted in descending order, and contains no duplicates.
	*  Each row of the matrix (apart from its first element)
	*  is sorted in ascending order, and contains no duplicates.
	*  That is, each sequence { valuei1, valuei2, ... } is sorted.
	*/
	@:overload public function getMatrix() : java.NativeArray<java.NativeArray<Int>>;
	
	@:overload public function getRowCount() : Int;
	
	@:overload public function getRowFrequency(rn : Int) : Int;
	
	@:overload public function getRowLength(rn : Int) : Int;
	
	@:overload public function getRowValue(rn : Int, vn : Int) : Int;
	
	@:overload public function getRowWeight(rn : Int) : Int;
	
	@:overload public function getTotalWeight() : Int;
	
	@:overload public function getTotalLength() : Int;
	
	/** Returns an array of all values, sorted. */
	@:overload public function getAllValues() : java.NativeArray<Int>;
	
	/** Returns an array parallel with {@link #getValues},
	*  with a frequency for each value.
	*/
	@:overload public function getAllFrequencies() : java.NativeArray<Int>;
	
	@:overload public function getFrequency(value : Int) : Int;
	
	@:overload public function getBitLength(value : Int) : Float;
	
	@:overload public function getRowBitLength(rn : Int) : Float;
	
	@:overload public function getBitMetric() : com.sun.java.util.jar.pack.Histogram.Histogram_BitMetric;
	
	/** bit-length is negative entropy:  -H(matrix). */
	@:overload public function getBitLength() : Float;
	
	/** bit-length in to another coding (cross-entropy) */
	@:overload public function getBitLength(len : com.sun.java.util.jar.pack.Histogram.Histogram_BitMetric) : Float;
	
	/** Sort rows and columns.
	*  Merge adjacent rows with the same key element [0].
	*  Make a fresh copy of all of it.
	*/
	@:overload public function normalizeMatrix(matrix : java.NativeArray<java.NativeArray<Int>>) : java.NativeArray<java.NativeArray<Int>>;
	
	@:overload public function getRowTitles(name : String) : java.NativeArray<String>;
	
	/** Print a report of this histogram.
	*/
	@:overload public function print(out : java.io.PrintStream) : Void;
	
	/** Print a report of this histogram.
	*/
	@:overload public function print(name : String, out : java.io.PrintStream) : Void;
	
	/** Print a report of this histogram.
	*/
	@:overload public function print(name : String, histTitles : java.NativeArray<String>, out : java.io.PrintStream) : Void;
	
	@:overload public static function makeByteHistogram(bytes : java.io.InputStream) : com.sun.java.util.jar.pack.Histogram;
	
	
}
@:native('com$sun$java$util$jar$pack$Histogram$BitMetric') extern interface Histogram_BitMetric
{
	@:overload public function getBitLength(value : Int) : Float;
	
	
}
