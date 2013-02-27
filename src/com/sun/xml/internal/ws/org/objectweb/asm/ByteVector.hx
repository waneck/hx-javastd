package com.sun.xml.internal.ws.org.objectweb.asm;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* ASM: a very small and fast Java bytecode manipulation framework
* Copyright (c) 2000-2007 INRIA, France Telecom
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the
*    documentation and/or other materials provided with the distribution.
* 3. Neither the name of the copyright holders nor the names of its
*    contributors may be used to endorse or promote products derived from
*    this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*/
/**
* A dynamically extensible vector of bytes. This class is roughly equivalent to
* a DataOutputStream on top of a ByteArrayOutputStream, but is more efficient.
*
* @author Eric Bruneton
*/
extern class ByteVector
{
	/**
	* Constructs a new {@link ByteVector ByteVector} with a default initial
	* size.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new {@link ByteVector ByteVector} with the given initial
	* size.
	*
	* @param initialSize the initial size of the byte vector to be constructed.
	*/
	@:overload public function new(initialSize : Int) : Void;
	
	/**
	* Puts a byte into this byte vector. The byte vector is automatically
	* enlarged if necessary.
	*
	* @param b a byte.
	* @return this byte vector.
	*/
	@:overload public function putByte(b : Int) : ByteVector;
	
	/**
	* Puts a short into this byte vector. The byte vector is automatically
	* enlarged if necessary.
	*
	* @param s a short.
	* @return this byte vector.
	*/
	@:overload public function putShort(s : Int) : ByteVector;
	
	/**
	* Puts an int into this byte vector. The byte vector is automatically
	* enlarged if necessary.
	*
	* @param i an int.
	* @return this byte vector.
	*/
	@:overload public function putInt(i : Int) : ByteVector;
	
	/**
	* Puts a long into this byte vector. The byte vector is automatically
	* enlarged if necessary.
	*
	* @param l a long.
	* @return this byte vector.
	*/
	@:overload public function putLong(l : haxe.Int64) : ByteVector;
	
	/**
	* Puts an UTF8 string into this byte vector. The byte vector is
	* automatically enlarged if necessary.
	*
	* @param s a String.
	* @return this byte vector.
	*/
	@:overload public function putUTF8(s : String) : ByteVector;
	
	/**
	* Puts an array of bytes into this byte vector. The byte vector is
	* automatically enlarged if necessary.
	*
	* @param b an array of bytes. May be <tt>null</tt> to put <tt>len</tt>
	*        null bytes into this byte vector.
	* @param off index of the fist byte of b that must be copied.
	* @param len number of bytes of b that must be copied.
	* @return this byte vector.
	*/
	@:overload public function putByteArray(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : ByteVector;
	
	
}
