package sun.net.www;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MeteredStream extends java.io.FilterInputStream
{
	/* if expected != -1, after we've read >= expected, we're "closed" and return -1
	* from subsequest read() 's
	*/
	@:protected private var closed : Bool;
	
	@:protected private var expected : haxe.Int64;
	
	@:protected private var count : haxe.Int64;
	
	@:protected private var markedCount : haxe.Int64;
	
	@:protected private var markLimit : Int;
	
	@:protected private var pi : sun.net.ProgressSource;
	
	@:overload @:public public function new(is : java.io.InputStream, pi : sun.net.ProgressSource, expected : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function read() : Int;
	
	@:overload @:public @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public @:synchronized override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public @:synchronized override public function available() : Int;
	
	@:overload @:public @:synchronized override public function mark(readLimit : Int) : Void;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	@:overload @:public override public function markSupported() : Bool;
	
	@:overload @:protected private function finalize() : Void;
	
	
}
