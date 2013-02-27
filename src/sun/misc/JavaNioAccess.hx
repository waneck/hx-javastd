package sun.misc;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface JavaNioAccess
{
	@:overload public function getDirectBufferPool() : JavaNioAccess_BufferPool;
	
	/**
	* Constructs a direct ByteBuffer referring to the block of memory starting
	* at the given memory address and and extending {@code cap} bytes.
	* The {@code ob} parameter is an arbitrary object that is attached
	* to the resulting buffer.
	*/
	@:overload public function newDirectByteBuffer(addr : haxe.Int64, cap : Int, ob : Dynamic) : java.nio.ByteBuffer;
	
	/**
	* Truncates a buffer by changing its capacity to 0.
	*/
	@:overload public function truncate(buf : java.nio.Buffer) : Void;
	
	
}
/**
* Provides access to information on buffer usage.
*/
@:native('sun$misc$JavaNioAccess$BufferPool') @:internal extern interface JavaNioAccess_BufferPool
{
	@:overload public function getName() : String;
	
	@:overload public function getCount() : haxe.Int64;
	
	@:overload public function getTotalCapacity() : haxe.Int64;
	
	@:overload public function getMemoryUsed() : haxe.Int64;
	
	
}