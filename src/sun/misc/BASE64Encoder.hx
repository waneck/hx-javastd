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
extern class BASE64Encoder extends sun.misc.CharacterEncoder
{
	/** this class encodes three bytes per atom. */
	@:overload override private function bytesPerAtom() : Int;
	
	/**
	* this class encodes 57 bytes per line. This results in a maximum
	* of 57/3 * 4 or 76 characters per output line. Not counting the
	* line termination.
	*/
	@:overload override private function bytesPerLine() : Int;
	
	/**
	* encodeAtom - Take three bytes of input and encode it as 4
	* printable characters. Note that if the length in len is less
	* than three is encodes either one or two '=' signs to indicate
	* padding characters.
	*/
	@:overload override private function encodeAtom(outStream : java.io.OutputStream, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	
}
