package sun.net.www.http;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
* Instances of this class are returned to applications for the purpose of
* sending user data for a HTTP POST or PUT request. This class is used
* when the content-length will be specified in the header of the request.
* The semantics of ByteArrayOutputStream are extended so that
* when close() is called, it is no longer possible to write
* additional data to the stream. From this point the content length of
* the request is fixed and cannot change.
*
* @author Michael McMahon
*/
extern class PosterOutputStream extends java.io.ByteArrayOutputStream
{
	/**
	* Creates a new output stream for POST user data
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Writes the specified byte to this output stream.
	*
	* @param   b   the byte to be written.
	*/
	@:overload @:public @:synchronized override public function write(b : Int) : Void;
	
	/**
	* Writes <code>len</code> bytes from the specified byte array
	* starting at offset <code>off</code> to this output stream.
	*
	* @param   b     the data.
	* @param   off   the start offset in the data.
	* @param   len   the number of bytes to write.
	*/
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Resets the <code>count</code> field of this output
	* stream to zero, so that all currently accumulated output in the
	* ouput stream is discarded. The output stream can be used again,
	* reusing the already allocated buffer space. If the output stream
	* has been closed, then this method has no effect.
	*
	* @see     java.io.ByteArrayInputStream#count
	*/
	@:overload @:public @:synchronized override public function reset() : Void;
	
	/**
	* After close() has been called, it is no longer possible to write
	* to this stream. Further calls to write will have no effect.
	*/
	@:overload @:public @:synchronized override public function close() : Void;
	
	
}
