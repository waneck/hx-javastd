package sun.nio.cs.ext;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class COMPOUND_TEXT_Encoder extends java.nio.charset.CharsetEncoder
{
	@:overload public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload private function encodeLoop(src : java.nio.CharBuffer, des : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload private function implFlush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	/**
	* Resets the encoder.
	* Call this method to reset the encoder to its initial state
	*/
	@:overload private function implReset() : Void;
	
	/**
	* Return whether a character is mappable or not
	* @return true if a character is mappable
	*/
	@:overload public function canEncode(ch : java.StdTypes.Char16) : Bool;
	
	@:overload private function implOnMalformedInput(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	@:overload private function implOnUnmappableCharacter(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	@:overload private function implReplaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
