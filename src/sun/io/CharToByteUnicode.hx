package sun.io;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Convert arrays containing Unicode characters into arrays of bytes, using the
* platform-default byte order.
*
* @author      Mark Reinhold
*/
extern class CharToByteUnicode extends sun.io.CharToByteConverter
{
	@:protected private var usesMark : Bool;
	
	@:protected private var byteOrder : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(byteOrder : Int, usesMark : Bool) : Void;
	
	@:overload @:public public function new(usesMark : Bool) : Void;
	
	@:overload @:public override public function getCharacterEncoding() : String;
	
	@:overload @:public override public function convert(_in : java.NativeArray<java.StdTypes.Char16>, inOff : Int, inEnd : Int, out : java.NativeArray<java.StdTypes.Int8>, outOff : Int, outEnd : Int) : Int;
	
	@:overload @:public override public function flush(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inEnd : Int) : Int;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function getMaxBytesPerChar() : Int;
	
	
}
