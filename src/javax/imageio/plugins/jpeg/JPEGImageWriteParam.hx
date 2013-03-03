package javax.imageio.plugins.jpeg;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEGImageWriteParam extends javax.imageio.ImageWriteParam
{
	/**
	* Constructs a <code>JPEGImageWriteParam</code>.  Tiling is not
	* supported.  Progressive encoding is supported. The default
	* progressive mode is MODE_DISABLED.  A single form of compression,
	* named "JPEG", is supported.  The default compression quality is
	* 0.75.
	*
	* @param locale a <code>Locale</code> to be used by the
	* superclass to localize compression type names and quality
	* descriptions, or <code>null</code>.
	*/
	@:overload @:public public function new(locale : java.util.Locale) : Void;
	
	/**
	* Removes any previous compression quality setting.
	*
	* <p> The default implementation resets the compression quality
	* to <code>0.75F</code>.
	*
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	*/
	@:overload @:public override public function unsetCompression() : Void;
	
	/**
	* Returns <code>false</code> since the JPEG plug-in only supports
	* lossy compression.
	*
	* @return <code>false</code>.
	*
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	*/
	@:overload @:public override public function isCompressionLossless() : Bool;
	
	@:overload @:public override public function getCompressionQualityDescriptions() : java.NativeArray<String>;
	
	@:overload @:public override public function getCompressionQualityValues() : java.NativeArray<Single>;
	
	/**
	* Returns <code>true</code> if tables are currently set.
	*
	* @return <code>true</code> if tables are present.
	*/
	@:overload @:public public function areTablesSet() : Bool;
	
	/**
	* Sets the quantization and Huffman tables to use in encoding
	* abbreviated streams.  There may be a maximum of 4 tables of
	* each type.  These tables are ignored if tables are specified in
	* the metadata.  All arguments must be non-<code>null</code>.
	* The two arrays of Huffman tables must have the same number of
	* elements.  The table specifiers in the frame and scan headers
	* in the metadata are assumed to be equivalent to indices into
	* these arrays.  The argument arrays are copied by this method.
	*
	* @param qTables An array of quantization table objects.
	* @param DCHuffmanTables An array of Huffman table objects.
	* @param ACHuffmanTables An array of Huffman table objects.
	*
	* @exception IllegalArgumentException if any of the arguments
	* is <code>null</code> or has more than 4 elements, or if the
	* numbers of DC and AC tables differ.
	*
	* @see #unsetEncodeTables
	*/
	@:overload @:public public function setEncodeTables(qTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGQTable>, DCHuffmanTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>, ACHuffmanTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>) : Void;
	
	/**
	* Removes any quantization and Huffman tables that are currently
	* set.
	*
	* @see #setEncodeTables
	*/
	@:overload @:public public function unsetEncodeTables() : Void;
	
	/**
	* Returns a copy of the array of quantization tables set on the
	* most recent call to <code>setEncodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGQTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setEncodeTables
	*/
	@:overload @:public public function getQTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGQTable>;
	
	/**
	* Returns a copy of the array of DC Huffman tables set on the
	* most recent call to <code>setEncodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGHuffmanTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setEncodeTables
	*/
	@:overload @:public public function getDCHuffmanTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>;
	
	/**
	* Returns a copy of the array of AC Huffman tables set on the
	* most recent call to <code>setEncodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGHuffmanTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setEncodeTables
	*/
	@:overload @:public public function getACHuffmanTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>;
	
	/**
	* Tells the writer to generate optimized Huffman tables
	* for the image as part of the writing process.  The
	* default is <code>false</code>.  If this flag is set
	* to <code>true</code>, it overrides any tables specified
	* in the metadata.  Note that this means that any image
	* written with this flag set to <code>true</code> will
	* always contain Huffman tables.
	*
	* @param optimize A boolean indicating whether to generate
	* optimized Huffman tables when writing.
	*
	* @see #getOptimizeHuffmanTables
	*/
	@:overload @:public public function setOptimizeHuffmanTables(optimize : Bool) : Void;
	
	/**
	* Returns the value passed into the most recent call
	* to <code>setOptimizeHuffmanTables</code>, or
	* <code>false</code> if <code>setOptimizeHuffmanTables</code>
	* has never been called.
	*
	* @return <code>true</code> if the writer will generate optimized
	* Huffman tables.
	*
	* @see #setOptimizeHuffmanTables
	*/
	@:overload @:public public function getOptimizeHuffmanTables() : Bool;
	
	
}
