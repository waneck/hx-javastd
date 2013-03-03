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
extern class ByteBufferWithInfo
{
	@:public public var byteBuffer : java.nio.ByteBuffer;
	
	@:public public var buflen : Int;
	
	@:public public var needed : Int;
	
	@:public public var fragmented : Bool;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, index : Int) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, usePooledByteBuffers : Bool) : Void;
	
	@:overload @:public public function new(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function position() : Int;
	
	@:overload @:public public function position(newPosition : Int) : Void;
	
	@:overload @:public public function setLength(theLength : Int) : Void;
	
	@:overload @:public public function growBuffer(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	
}
