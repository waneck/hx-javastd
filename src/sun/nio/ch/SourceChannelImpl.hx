package sun.nio.ch;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SourceChannelImpl extends java.nio.channels.Pipe.Pipe_SourceChannel implements sun.nio.ch.SelChImpl
{
	@:overload @:public public function getFD() : java.io.FileDescriptor;
	
	@:overload @:public public function getFDVal() : Int;
	
	@:overload @:protected override private function implCloseSelectableChannel() : Void;
	
	@:overload @:public public function kill() : Void;
	
	@:overload @:protected override private function implConfigureBlocking(block : Bool) : Void;
	
	@:overload @:public public function translateReadyOps(ops : Int, initialOps : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndUpdateReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndSetReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndSetInterestOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:public override public function read(dst : java.nio.ByteBuffer) : Int;
	
	@:overload @:public override public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	@:overload @:public override public function read(dsts : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	
}
