package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class IIOPOutputStream extends com.sun.corba.se.impl.io.OutputStreamHook
{
	@:overload public function new() : Void;
	
	@:overload private function beginOptionalCustomData() : Void;
	
	@:overload @:final public function setOrbStream(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload @:final public function getOrbStream() : org.omg.CORBA_2_3.portable.OutputStream;
	
	@:overload @:final public function increaseRecursionDepth() : Void;
	
	@:overload @:final public function decreaseRecursionDepth() : Int;
	
	/**
	* Override the actions of the final method "writeObject()"
	* in ObjectOutputStream.
	* @since     JDK1.1.6
	*/
	@:require(java1) @:overload @:final public function writeObjectOverride(obj : Dynamic) : Void;
	
	/**
	* Override the actions of the final method "writeObject()"
	* in ObjectOutputStream.
	* @since     JDK1.1.6
	*/
	@:require(java1) @:overload @:final public function simpleWriteObject(obj : Dynamic, formatVersion : java.StdTypes.Int8) : Void;
	
	/**
	* Override the actions of the final method "defaultWriteObject()"
	* in ObjectOutputStream.
	* @since     JDK1.1.6
	*/
	@:require(java1) @:overload @:final public function defaultWriteObjectDelegate() : Void;
	
	/**
	* Override the actions of the final method "enableReplaceObject()"
	* in ObjectOutputStream.
	* @since     JDK1.1.6
	*/
	@:require(java1) @:overload @:final public function enableReplaceObjectDelegate(enable : Bool) : Bool;
	
	/* throws SecurityException */
	@:overload @:final private function annotateClass(cl : Class<Dynamic>) : Void;
	
	@:overload @:final public function close() : Void;
	
	@:overload @:final private function drain() : Void;
	
	@:overload @:final public function flush() : Void;
	
	@:overload @:final private function replaceObject(obj : Dynamic) : Dynamic;
	
	/**
	* Reset will disregard the state of any objects already written
	* to the stream.  The state is reset to be the same as a new
	* ObjectOutputStream.  The current point in the stream is marked
	* as reset so the corresponding ObjectInputStream will be reset
	* at the same point.  Objects previously written to the stream
	* will not be refered to as already being in the stream.  They
	* will be written to the stream again.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:final public function reset() : Void;
	
	@:overload @:final public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:final public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:final public function write(data : Int) : Void;
	
	@:overload @:final public function writeBoolean(data : Bool) : Void;
	
	@:overload @:final public function writeByte(data : Int) : Void;
	
	@:overload @:final public function writeBytes(data : String) : Void;
	
	@:overload @:final public function writeChar(data : Int) : Void;
	
	@:overload @:final public function writeChars(data : String) : Void;
	
	@:overload @:final public function writeDouble(data : Float) : Void;
	
	@:overload @:final public function writeFloat(data : Single) : Void;
	
	@:overload @:final public function writeInt(data : Int) : Void;
	
	@:overload @:final public function writeLong(data : haxe.Int64) : Void;
	
	@:overload @:final public function writeShort(data : Int) : Void;
	
	@:overload @:final private function writeStreamHeader() : Void;
	
	/**
	* Helper method for correcting the Kestrel bug 4367783 (dealing
	* with larger than 8-bit chars).  The old behavior is preserved
	* in orbutil.IIOPInputStream_1_3 in order to interoperate with
	* our legacy ORBs.
	*/
	@:overload private function internalWriteUTF(stream : org.omg.CORBA.portable.OutputStream, data : String) : Void;
	
	@:overload @:final public function writeUTF(data : String) : Void;
	
	
}
