package sun.net.httpserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* a class which allows the caller to write an arbitrary
* number of bytes to an underlying stream.
* normal close() does not close the underlying stream
*
* This class is buffered.
*
* Each chunk is written in one go as :-
* abcd\r\nxxxxxxxxxxxxxx\r\n
*
* abcd is the chunk-size, and xxx is the chunk data
* If the length is less than 4 chars (in size) then the buffer
* is written with an offset.
* Final chunk is:
* 0\r\n\r\n
*/
@:internal extern class ChunkedOutputStream extends java.io.FilterOutputStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function close() : Void;
	
	@:overload override public function flush() : Void;
	
	
}
