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
extern class JPEGQTable
{
	/**
	* The sample luminance quantization table given in the JPEG
	* specification, table K.1. According to the specification,
	* these values produce "good" quality output.
	* @see #K1Div2Luminance
	*/
	public static var K1Luminance(default, null) : javax.imageio.plugins.jpeg.JPEGQTable;
	
	/**
	* The sample luminance quantization table given in the JPEG
	* specification, table K.1, with all elements divided by 2.
	* According to the specification, these values produce "very good"
	* quality output. This is the table usually used for "visually lossless"
	* encoding, and is the default luminance table used if the default
	* tables and quality settings are used.
	* @see #K1Luminance
	*/
	public static var K1Div2Luminance(default, null) : javax.imageio.plugins.jpeg.JPEGQTable;
	
	/**
	* The sample chrominance quantization table given in the JPEG
	* specification, table K.2. According to the specification,
	* these values produce "good" quality output.
	* @see #K2Div2Chrominance
	*/
	public static var K2Chrominance(default, null) : javax.imageio.plugins.jpeg.JPEGQTable;
	
	/**
	* The sample chrominance quantization table given in the JPEG
	* specification, table K.1, with all elements divided by 2.
	* According to the specification, these values produce "very good"
	* quality output. This is the table usually used for "visually lossless"
	* encoding, and is the default chrominance table used if the default
	* tables and quality settings are used.
	* @see #K2Chrominance
	*/
	public static var K2Div2Chrominance(default, null) : javax.imageio.plugins.jpeg.JPEGQTable;
	
	/**
	* Constructs a quantization table from the argument, which must
	* contain 64 elements in natural order (not zig-zag order).
	* A copy is made of the the input array.
	* @param table the quantization table, as an <code>int</code> array.
	* @throws IllegalArgumentException if <code>table</code> is
	* <code>null</code> or <code>table.length</code> is not equal to 64.
	*/
	@:overload public function new(table : java.NativeArray<Int>) : Void;
	
	/**
	* Returns a copy of the current quantization table as an array
	* of {@code int}s in natural (not zig-zag) order.
	* @return A copy of the current quantization table.
	*/
	@:overload public function getTable() : java.NativeArray<Int>;
	
	/**
	* Returns a new quantization table where the values are multiplied
	* by <code>scaleFactor</code> and then clamped to the range 1..32767
	* (or to 1..255 if <code>forceBaseline</code> is true).
	* <p>
	* Values of <code>scaleFactor</code> less than 1 tend to improve
	* the quality level of the table, and values greater than 1.0
	* degrade the quality level of the table.
	* @param scaleFactor multiplication factor for the table.
	* @param forceBaseline if <code>true</code>,
	* the values will be clamped to the range 1..255
	* @return a new quantization table that is a linear multiple
	* of the current table.
	*/
	@:overload public function getScaledInstance(scaleFactor : Single, forceBaseline : Bool) : javax.imageio.plugins.jpeg.JPEGQTable;
	
	/**
	* Returns a {@code String} representing this quantization table.
	* @return a {@code String} representing this quantization table.
	*/
	@:overload public function toString() : String;
	
	
}
