package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Adaptive coding.
* See the section "Adaptive Encodings" in the Pack200 spec.
* @author John Rose
*/
@:internal extern class AdaptiveCoding implements com.sun.java.util.jar.pack.CodingMethod
{
	@:overload @:public public function new(headLength : Int, headCoding : com.sun.java.util.jar.pack.CodingMethod, tailCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload @:public public function setHeadCoding(headCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload @:public public function setHeadLength(headLength : Int) : Void;
	
	@:overload @:public public function setTailCoding(tailCoding : com.sun.java.util.jar.pack.CodingMethod) : Void;
	
	@:overload @:public public function isTrivial() : Bool;
	
	@:overload @:public public function writeArrayTo(out : java.io.OutputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:overload @:public public function readArrayFrom(_in : java.io.InputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:public @:static @:final public static var KX_MIN(default, null) : Int;
	
	@:public @:static @:final public static var KX_MAX(default, null) : Int;
	
	@:public @:static @:final public static var KX_LG2BASE(default, null) : Int;
	
	@:public @:static @:final public static var KX_BASE(default, null) : Int;
	
	@:public @:static @:final public static var KB_MIN(default, null) : Int;
	
	@:public @:static @:final public static var KB_MAX(default, null) : Int;
	
	@:public @:static @:final public static var KB_OFFSET(default, null) : Int;
	
	@:public @:static @:final public static var KB_DEFAULT(default, null) : Int;
	
	@:overload @:public @:static public static function isCodableLength(K : Int) : Bool;
	
	@:overload @:public public function getMetaCoding(dflt : com.sun.java.util.jar.pack.Coding) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function parseMetaCoding(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, dflt : com.sun.java.util.jar.pack.Coding, res : java.NativeArray<com.sun.java.util.jar.pack.CodingMethod>) : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
