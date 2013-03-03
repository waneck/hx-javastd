package com.sun.tools.hat.internal.model;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
extern class JavaLazyReadObject extends com.sun.tools.hat.internal.model.JavaHeapObject
{
	@:overload @:protected private function new(offset : haxe.Int64) : Void;
	
	@:overload @:public @:final override public function getSize() : Int;
	
	@:overload @:protected @:final private function getOffset() : haxe.Int64;
	
	@:overload @:protected @:final private function getValueLength() : Int;
	
	@:overload @:protected @:final private function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final override public function getId() : haxe.Int64;
	
	@:overload @:protected @:abstract private function readValueLength() : Int;
	
	@:overload @:protected @:abstract private function readValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected @:static private static function makeId(id : haxe.Int64) : java.lang.Number;
	
	@:overload @:protected @:static private static function getIdValue(num : java.lang.Number) : haxe.Int64;
	
	@:overload @:protected @:final private function objectIdAt(index : Int, data : java.NativeArray<java.StdTypes.Int8>) : haxe.Int64;
	
	@:overload @:protected @:static private static function byteAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : java.StdTypes.Int8;
	
	@:overload @:protected @:static private static function booleanAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:protected @:static private static function charAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : java.StdTypes.Char16;
	
	@:overload @:protected @:static private static function shortAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : java.StdTypes.Int16;
	
	@:overload @:protected @:static private static function intAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:protected @:static private static function longAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : haxe.Int64;
	
	@:overload @:protected @:static private static function floatAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : Single;
	
	@:overload @:protected @:static private static function doubleAt(index : Int, value : java.NativeArray<java.StdTypes.Int8>) : Float;
	
	
}
