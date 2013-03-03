package javax.imageio.stream;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageInputStreamImpl implements javax.imageio.stream.ImageInputStream
{
	/**
	* The byte order of the stream as an instance of the enumeration
	* class <code>java.nio.ByteOrder</code>, where
	* <code>ByteOrder.BIG_ENDIAN</code> indicates network byte order
	* and <code>ByteOrder.LITTLE_ENDIAN</code> indicates the reverse
	* order.  By default, the value is
	* <code>ByteOrder.BIG_ENDIAN</code>.
	*/
	@:protected private var byteOrder : java.nio.ByteOrder;
	
	/**
	* The current read position within the stream.  Subclasses are
	* responsible for keeping this value current from any method they
	* override that alters the read position.
	*/
	@:protected private var streamPos : haxe.Int64;
	
	/**
	* The current bit offset within the stream.  Subclasses are
	* responsible for keeping this value current from any method they
	* override that alters the bit offset.
	*/
	@:protected private var bitOffset : Int;
	
	/**
	* The position prior to which data may be discarded.  Seeking
	* to a smaller position is not allowed.  <code>flushedPos</code>
	* will always be >= 0.
	*/
	@:protected private var flushedPos : haxe.Int64;
	
	/**
	* Constructs an <code>ImageInputStreamImpl</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Throws an <code>IOException</code> if the stream has been closed.
	* Subclasses may call this method from any of their methods that
	* require the stream not to be closed.
	*
	* @exception IOException if the stream is closed.
	*/
	@:overload @:protected @:final private function checkClosed() : Void;
	
	@:overload @:public public function setByteOrder(byteOrder : java.nio.ByteOrder) : Void;
	
	@:overload @:public public function getByteOrder() : java.nio.ByteOrder;
	
	/**
	* Reads a single byte from the stream and returns it as an
	* <code>int</code> between 0 and 255.  If EOF is reached,
	* <code>-1</code> is returned.
	*
	* <p> Subclasses must provide an implementation for this method.
	* The subclass implementation should update the stream position
	* before exiting.
	*
	* <p> The bit offset within the stream must be reset to zero before
	* the read occurs.
	*
	* @return the value of the next byte in the stream, or <code>-1</code>
	* if EOF is reached.
	*
	* @exception IOException if the stream has been closed.
	*/
	@:overload @:public @:abstract public function read() : Int;
	
	/**
	* A convenience method that calls <code>read(b, 0, b.length)</code>.
	*
	* <p> The bit offset within the stream is reset to zero before
	* the read occurs.
	*
	* @return the number of bytes actually read, or <code>-1</code>
	* to indicate EOF.
	*
	* @exception NullPointerException if <code>b</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Reads up to <code>len</code> bytes from the stream, and stores
	* them into <code>b</code> starting at index <code>off</code>.
	* If no bytes can be read because the end of the stream has been
	* reached, <code>-1</code> is returned.
	*
	* <p> The bit offset within the stream must be reset to zero before
	* the read occurs.
	*
	* <p> Subclasses must provide an implementation for this method.
	* The subclass implementation should update the stream position
	* before exiting.
	*
	* @param b an array of bytes to be written to.
	* @param off the starting position within <code>b</code> to write to.
	* @param len the maximum number of bytes to read.
	*
	* @return the number of bytes actually read, or <code>-1</code>
	* to indicate EOF.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>b.length</code>.
	* @exception NullPointerException if <code>b</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public @:abstract public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public public function readBytes(buf : javax.imageio.stream.IIOByteBuffer, len : Int) : Void;
	
	@:overload @:public public function readBoolean() : Bool;
	
	@:overload @:public public function readByte() : java.StdTypes.Int8;
	
	@:overload @:public public function readUnsignedByte() : Int;
	
	@:overload @:public public function readShort() : java.StdTypes.Int16;
	
	@:overload @:public public function readUnsignedShort() : Int;
	
	@:overload @:public public function readChar() : java.StdTypes.Char16;
	
	@:overload @:public public function readInt() : Int;
	
	@:overload @:public public function readUnsignedInt() : haxe.Int64;
	
	@:overload @:public public function readLong() : haxe.Int64;
	
	@:overload @:public public function readFloat() : Single;
	
	@:overload @:public public function readDouble() : Float;
	
	@:overload @:public public function readLine() : String;
	
	@:overload @:public public function readUTF() : String;
	
	@:overload @:public public function readFully(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function readFully(s : java.NativeArray<java.StdTypes.Int16>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(c : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(i : java.NativeArray<Int>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(l : java.NativeArray<haxe.Int64>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(f : java.NativeArray<Single>, off : Int, len : Int) : Void;
	
	@:overload @:public public function readFully(d : java.NativeArray<Float>, off : Int, len : Int) : Void;
	
	@:overload @:public public function getStreamPosition() : haxe.Int64;
	
	@:overload @:public public function getBitOffset() : Int;
	
	@:overload @:public public function setBitOffset(bitOffset : Int) : Void;
	
	@:overload @:public public function readBit() : Int;
	
	@:overload @:public public function readBits(numBits : Int) : haxe.Int64;
	
	/**
	* Returns <code>-1L</code> to indicate that the stream has unknown
	* length.  Subclasses must override this method to provide actual
	* length information.
	*
	* @return -1L to indicate unknown length.
	*/
	@:overload @:public public function length() : haxe.Int64;
	
	/**
	* Advances the current stream position by calling
	* <code>seek(getStreamPosition() + n)</code>.
	*
	* <p> The bit offset is reset to zero.
	*
	* @param n the number of bytes to seek forward.
	*
	* @return an <code>int</code> representing the number of bytes
	* skipped.
	*
	* @exception IOException if <code>getStreamPosition</code>
	* throws an <code>IOException</code> when computing either
	* the starting or ending position.
	*/
	@:overload @:public public function skipBytes(n : Int) : Int;
	
	/**
	* Advances the current stream position by calling
	* <code>seek(getStreamPosition() + n)</code>.
	*
	* <p> The bit offset is reset to zero.
	*
	* @param n the number of bytes to seek forward.
	*
	* @return a <code>long</code> representing the number of bytes
	* skipped.
	*
	* @exception IOException if <code>getStreamPosition</code>
	* throws an <code>IOException</code> when computing either
	* the starting or ending position.
	*/
	@:overload @:public public function skipBytes(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public public function seek(pos : haxe.Int64) : Void;
	
	/**
	* Pushes the current stream position onto a stack of marked
	* positions.
	*/
	@:overload @:public public function mark() : Void;
	
	/**
	* Resets the current stream byte and bit positions from the stack
	* of marked positions.
	*
	* <p> An <code>IOException</code> will be thrown if the previous
	* marked position lies in the discarded portion of the stream.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function flushBefore(pos : haxe.Int64) : Void;
	
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function getFlushedPosition() : haxe.Int64;
	
	/**
	* Default implementation returns false.  Subclasses should
	* override this if they cache data.
	*/
	@:overload @:public public function isCached() : Bool;
	
	/**
	* Default implementation returns false.  Subclasses should
	* override this if they cache data in main memory.
	*/
	@:overload @:public public function isCachedMemory() : Bool;
	
	/**
	* Default implementation returns false.  Subclasses should
	* override this if they cache data in a temporary file.
	*/
	@:overload @:public public function isCachedFile() : Bool;
	
	@:overload @:public public function close() : Void;
	
	/**
	* Finalizes this object prior to garbage collection.  The
	* <code>close</code> method is called to close any open input
	* source.  This method should not be called from application
	* code.
	*
	* @exception Throwable if an error occurs during superclass
	* finalization.
	*/
	@:overload @:protected private function finalize() : Void;
	
	
}
