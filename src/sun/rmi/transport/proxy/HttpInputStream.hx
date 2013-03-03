package sun.rmi.transport.proxy;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class HttpInputStream extends java.io.FilterInputStream
{
	/** bytes remaining to be read from proper content of message */
	@:protected private var bytesLeft : Int;
	
	/** bytes remaining to be read at time of last mark */
	@:protected private var bytesLeftAtMark : Int;
	
	/**
	* Create new filter on a given input stream.
	* @param in the InputStream to filter from
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Returns the number of bytes that can be read with blocking.
	* Make sure that this does not exceed the number of bytes remaining
	* in the proper content of the message.
	*/
	@:overload @:public override public function available() : Int;
	
	/**
	* Read a byte of data from the stream.  Make sure that one is available
	* from the proper content of the message, else -1 is returned to
	* indicate to the user that the end of the stream has been reached.
	*/
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Mark the current position in the stream (for future calls to reset).
	* Remember where we are within the proper content of the message, so
	* that a reset method call can recreate our state properly.
	* @param readlimit how many bytes can be read before mark becomes invalid
	*/
	@:overload @:public override public function mark(readlimit : Int) : Void;
	
	/**
	* Repositions the stream to the last marked position.  Make sure to
	* adjust our position within the proper content accordingly.
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Skips bytes of the stream.  Make sure to adjust our
	* position within the proper content accordingly.
	* @param n number of bytes to be skipped
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	
}
