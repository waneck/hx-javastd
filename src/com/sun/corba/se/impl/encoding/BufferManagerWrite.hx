package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferManagerWrite
{
	/**
	* Defines the contract between the BufferManager and
	* CDR stream on the writing side.  The CDR stream
	* calls back to the BufferManagerWrite when it needs
	* more room in the output buffer to continue.  The
	* BufferManager can then grow the output buffer or
	* use some kind of fragmentation technique.
	*/
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	/**
	* Has the stream sent out any fragments so far?
	*/
	@:overload @:abstract public function sentFragment() : Bool;
	
	/**
	* Has the entire message been sent?  (Has
	* sendMessage been called?)
	*/
	@:overload public function sentFullMessage() : Bool;
	
	/**
	* Returns the correct buffer size for this type of
	* buffer manager as set in the ORB.
	*/
	@:overload @:abstract public function getBufferSize() : Int;
	
	/*
	* Called from CDROutputStream.grow.
	*
	* bbwi.buf contains a byte array which needs to grow by bbwi.needed bytes.
	*
	* This can be handled in several ways:
	*
	* 1. Resize the bbwi.buf like the current implementation of
	*    CDROutputStream.grow.
	*
	* 2. Collect the buffer for a later send:
	*    this.bufQ.put(bbwi);
	*    return new ByteBufferWithInfo(bbwi.length);
	*
	* 3. Send buffer as fragment:
	*    Backpatch fragment size field in bbwi.buf.
	*    Set more fragments bit in bbwi.buf.
	*    this.connection.send(bbwi);
	*    return reinitialized bbwi.buf with fragment header
	*
	* All cases should adjust the returned bbwi.* appropriately.
	*
	* Should set the bbwi.fragmented flag to true only in cases 2 and 3.
	*/
	@:overload @:abstract public function overflow(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	/**
	* Called after Stub._invoke (i.e., before complete message has been sent).
	*
	* IIOPOutputStream.writeTo called from IIOPOutputStream.invoke
	*
	* Case: overflow was never called (bbwi.buf contains complete message).
	*       Backpatch size field.
	*       If growing or collecting:
	*          this.bufQ.put(bbwi).
	*          this.bufQ.iterate // However, see comment in getBufferQ
	*             this.connection.send(fragment)
	*       If streaming:
	*          this.connection.send(bbwi).
	*
	* Case: overflow was called N times (bbwi.buf contains last buffer).
	*       If growing or collecting:
	*          this.bufQ.put(bbwi).
	*          backpatch size field in first buffer.
	*          this.bufQ.iterate // However, see comment in getBufferQ
	*             this.connection.send(fragment)
	*       If streaming:
	*          backpatch fragment size field in bbwi.buf.
	*          Set no more fragments bit.
	*          this.connection.send(bbwi).
	*/
	@:overload @:abstract public function sendMessage() : Void;
	
	/**
	* A reference to the connection level stream will be required when
	* sending fragments.
	*/
	@:overload public function setOutputObject(outputObject : Dynamic) : Void;
	
	/**
	* Close the BufferManagerWrite and do any outstanding cleanup.
	*/
	@:overload @:abstract public function close() : Void;
	
	private var outputObject : Dynamic;
	
	
}
