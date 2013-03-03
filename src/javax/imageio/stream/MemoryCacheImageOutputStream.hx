package javax.imageio.stream;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MemoryCacheImageOutputStream extends javax.imageio.stream.ImageOutputStreamImpl
{
	/**
	* Constructs a <code>MemoryCacheImageOutputStream</code> that will write
	* to a given <code>OutputStream</code>.
	*
	* @param stream an <code>OutputStream</code> to write to.
	*
	* @exception IllegalArgumentException if <code>stream</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(stream : java.io.OutputStream) : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function length() : haxe.Int64;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageOutputStream</code> caches data in order to allow
	* seeking backwards.
	*
	* @return <code>true</code>.
	*
	* @see #isCachedMemory
	* @see #isCachedFile
	*/
	@:overload @:public override public function isCached() : Bool;
	
	/**
	* Returns <code>false</code> since this
	* <code>ImageOutputStream</code> does not maintain a file cache.
	*
	* @return <code>false</code>.
	*
	* @see #isCached
	* @see #isCachedMemory
	*/
	@:overload @:public override public function isCachedFile() : Bool;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageOutputStream</code> maintains a main memory cache.
	*
	* @return <code>true</code>.
	*
	* @see #isCached
	* @see #isCachedFile
	*/
	@:overload @:public override public function isCachedMemory() : Bool;
	
	/**
	* Closes this <code>MemoryCacheImageOutputStream</code>.  All
	* pending data is flushed to the output, and the cache
	* is released.  The destination <code>OutputStream</code>
	* is not closed.
	*/
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function flushBefore(pos : haxe.Int64) : Void;
	
	
}
