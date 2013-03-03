package javax.imageio.plugins.jpeg;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEGImageReadParam extends javax.imageio.ImageReadParam
{
	/**
	* Constructs a <code>JPEGImageReadParam</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns <code>true</code> if tables are currently set.
	*
	* @return <code>true</code> if tables are present.
	*/
	@:overload @:public public function areTablesSet() : Bool;
	
	/**
	* Sets the quantization and Huffman tables to use in decoding
	* abbreviated streams.  There may be a maximum of 4 tables of
	* each type.  These tables are ignored once tables are
	* encountered in the stream.  All arguments must be
	* non-<code>null</code>.  The two arrays of Huffman tables must
	* have the same number of elements.  The table specifiers in the
	* frame and scan headers in the stream are assumed to be
	* equivalent to indices into these arrays.  The argument arrays
	* are copied by this method.
	*
	* @param qTables an array of quantization table objects.
	* @param DCHuffmanTables an array of Huffman table objects.
	* @param ACHuffmanTables an array of Huffman table objects.
	*
	* @exception IllegalArgumentException if any of the arguments
	* is <code>null</code>, has more than 4 elements, or if the
	* numbers of DC and AC tables differ.
	*
	* @see #unsetDecodeTables
	*/
	@:overload @:public public function setDecodeTables(qTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGQTable>, DCHuffmanTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>, ACHuffmanTables : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>) : Void;
	
	/**
	* Removes any quantization and Huffman tables that are currently
	* set.
	*
	* @see #setDecodeTables
	*/
	@:overload @:public public function unsetDecodeTables() : Void;
	
	/**
	* Returns a copy of the array of quantization tables set on the
	* most recent call to <code>setDecodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGQTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setDecodeTables
	*/
	@:overload @:public public function getQTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGQTable>;
	
	/**
	* Returns a copy of the array of DC Huffman tables set on the
	* most recent call to <code>setDecodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGHuffmanTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setDecodeTables
	*/
	@:overload @:public public function getDCHuffmanTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>;
	
	/**
	* Returns a copy of the array of AC Huffman tables set on the
	* most recent call to <code>setDecodeTables</code>, or
	* <code>null</code> if tables are not currently set.
	*
	* @return an array of <code>JPEGHuffmanTable</code> objects, or
	* <code>null</code>.
	*
	* @see #setDecodeTables
	*/
	@:overload @:public public function getACHuffmanTables() : java.NativeArray<javax.imageio.plugins.jpeg.JPEGHuffmanTable>;
	
	
}
