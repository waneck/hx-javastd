package java.nio;
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
//// -- This file was mechanically generated: Do not edit! -- //
@:internal extern class ByteBufferAsLongBufferB extends java.nio.LongBuffer
{
	@:protected @:final private var bb(default, null) : java.nio.ByteBuffer;
	
	@:protected @:final private var offset(default, null) : Int;
	
	@:overload @:public override public function slice() : java.nio.LongBuffer;
	
	@:overload @:public override public function duplicate() : java.nio.LongBuffer;
	
	@:overload @:public override public function asReadOnlyBuffer() : java.nio.LongBuffer;
	
	@:overload @:protected private function ix(i : Int) : Int;
	
	@:overload @:public override public function get() : haxe.Int64;
	
	@:overload @:public override public function get(i : Int) : haxe.Int64;
	
	@:overload @:public override public function put(x : haxe.Int64) : java.nio.LongBuffer;
	
	@:overload @:public override public function put(i : Int, x : haxe.Int64) : java.nio.LongBuffer;
	
	@:overload @:public override public function compact() : java.nio.LongBuffer;
	
	@:overload @:public override public function isDirect() : Bool;
	
	@:overload @:public override public function isReadOnly() : Bool;
	
	@:overload @:public override public function order() : java.nio.ByteOrder;
	
	
}
