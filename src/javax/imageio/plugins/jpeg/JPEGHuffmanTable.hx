package javax.imageio.plugins.jpeg;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEGHuffmanTable
{
	/**
	* The standard DC luminance Huffman table.
	*/
	public static var StdDCLuminance(default, null) : javax.imageio.plugins.jpeg.JPEGHuffmanTable;
	
	/**
	* The standard DC chrominance Huffman table.
	*/
	public static var StdDCChrominance(default, null) : javax.imageio.plugins.jpeg.JPEGHuffmanTable;
	
	/**
	* The standard AC luminance Huffman table.
	*/
	public static var StdACLuminance(default, null) : javax.imageio.plugins.jpeg.JPEGHuffmanTable;
	
	/**
	* The standard AC chrominance Huffman table.
	*/
	public static var StdACChrominance(default, null) : javax.imageio.plugins.jpeg.JPEGHuffmanTable;
	
	/**
	* Creates a Huffman table and initializes it. The input arrays are copied.
	* The arrays must describe a possible Huffman table.
	* For example, 3 codes cannot be expressed with a single bit.
	*
	* @param lengths an array of {@code short}s where <code>lengths[k]</code>
	* is equal to the number of values with corresponding codes of
	* length <code>k + 1</code> bits.
	* @param values an array of shorts containing the values in
	* order of increasing code length.
	* @throws IllegalArgumentException if <code>lengths</code> or
	* <code>values</code> are null, the length of <code>lengths</code> is
	* greater than 16, the length of <code>values</code> is greater than 256,
	* if any value in <code>lengths</code> or <code>values</code> is less
	* than zero, or if the arrays do not describe a valid Huffman table.
	*/
	@:overload public function new(lengths : java.NativeArray<java.StdTypes.Int16>, values : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	/**
	* Returns an array of <code>short</code>s containing the number of values
	* for each length in the Huffman table. The returned array is a copy.
	*
	* @return a <code>short</code> array where <code>array[k-1]</code>
	* is equal to the number of values in the table of length <code>k</code>.
	* @see #getValues
	*/
	@:overload public function getLengths() : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns an array of <code>short</code>s containing the values arranged
	* by increasing length of their corresponding codes.
	* The interpretation of the array is dependent on the values returned
	* from <code>getLengths</code>. The returned array is a copy.
	*
	* @return a <code>short</code> array of values.
	* @see #getLengths
	*/
	@:overload public function getValues() : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns a {@code String} representing this Huffman table.
	* @return a {@code String} representing this Huffman table.
	*/
	@:overload public function toString() : String;
	
	
}
