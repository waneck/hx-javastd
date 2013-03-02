package sun.misc;
/*
* Copyright (c) 1995, 1997, Oracle and/or its affiliates. All rights reserved.
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
extern class UCEncoder extends sun.misc.CharacterEncoder
{
	/** this clase encodes two bytes per atom */
	@:overload private function bytesPerAtom() : Int;
	
	/** this class encodes 48 bytes per line */
	@:overload private function bytesPerLine() : Int;
	
	/**
	* encodeAtom - take two bytes and encode them into the correct
	* three characters. If only one byte is to be encoded, the other
	* must be zero. The padding byte is not included in the CRC computation.
	*/
	@:overload private function encodeAtom(outStream : java.io.OutputStream, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Each UCE encoded line starts with a prefix of '*[XXX]', where
	* the sequence number and the length are encoded in the first
	* atom.
	*/
	@:overload private function encodeLinePrefix(outStream : java.io.OutputStream, length : Int) : Void;
	
	/**
	* each UCE encoded line ends with YYY and encoded version of the
	* 16 bit checksum. The most significant byte of the check sum
	* is always encoded FIRST.
	*/
	@:overload private function encodeLineSuffix(outStream : java.io.OutputStream) : Void;
	
	/**
	* The buffer prefix code is used to initialize the sequence number
	* to zero.
	*/
	@:overload private function encodeBufferPrefix(a : java.io.OutputStream) : Void;
	
	
}
