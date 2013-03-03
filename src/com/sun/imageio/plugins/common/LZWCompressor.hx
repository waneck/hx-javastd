package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class LZWCompressor
{
	/**
	* @param out destination for compressed data
	* @param codeSize the initial code size for the LZW compressor
	* @param TIFF flag indicating that TIFF lzw fudge needs to be applied
	* @exception IOException if underlying output stream error
	**/
	@:overload @:public public function new(out : javax.imageio.stream.ImageOutputStream, codeSize : Int, TIFF : Bool) : Void;
	
	/**
	* @param buf data to be compressed to output stream
	* @exception IOException if underlying output stream error
	**/
	@:overload @:public public function compress(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/*
	* Indicate to compressor that no more data to go so write out
	* any remaining buffered data.
	*
	* @exception IOException if underlying output stream error
	*/
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function dump(out : java.io.PrintStream) : Void;
	
	
}
