package sun.nio.ch;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
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
* This class is defined here rather than in java.nio.channels.Channels
* so that code can be shared with SocketAdaptor.
*
* @author Mike McCloskey
* @author Mark Reinhold
* @since 1.4
*/
@:require(java4) extern class ChannelInputStream extends java.io.InputStream
{
	@:native('read') @:overload @:public @:static public static function _read(ch : java.nio.channels.ReadableByteChannel, bb : java.nio.ByteBuffer, block : Bool) : Int;
	
	@:protected @:final private var ch(default, null) : java.nio.channels.ReadableByteChannel;
	
	@:overload @:public public function new(ch : java.nio.channels.ReadableByteChannel) : Void;
	
	@:overload @:public @:synchronized override public function read() : Int;
	
	@:overload @:public @:synchronized override public function read(bs : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:protected private function read(bb : java.nio.ByteBuffer) : Int;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	
}
