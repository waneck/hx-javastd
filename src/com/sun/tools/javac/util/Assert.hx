package com.sun.tools.javac.util;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
* Simple facility for unconditional assertions.
* The methods in this class are described in terms of equivalent assert
* statements, assuming that assertions have been enabled.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Assert
{
	/** Equivalent to
	*   assert cond;
	*/
	@:overload @:public @:static public static function check(cond : Bool) : Void;
	
	/** Equivalent to
	*   assert (o == null);
	*/
	@:overload @:public @:static public static function checkNull(o : Dynamic) : Void;
	
	/** Equivalent to
	*   assert (t != null); return t;
	*/
	@:overload @:public @:static public static function checkNonNull<T>(t : T) : T;
	
	/** Equivalent to
	*   assert cond : value;
	*/
	@:overload @:public @:static public static function check(cond : Bool, value : Int) : Void;
	
	/** Equivalent to
	*   assert cond : value;
	*/
	@:overload @:public @:static public static function check(cond : Bool, value : haxe.Int64) : Void;
	
	/** Equivalent to
	*   assert cond : value;
	*/
	@:overload @:public @:static public static function check(cond : Bool, value : Dynamic) : Void;
	
	/** Equivalent to
	*   assert cond : value;
	*/
	@:overload @:public @:static public static function check(cond : Bool, msg : String) : Void;
	
	/** Equivalent to
	*   assert (o == null) : value;
	*/
	@:overload @:public @:static public static function checkNull(o : Dynamic, value : Dynamic) : Void;
	
	/** Equivalent to
	*   assert (o == null) : value;
	*/
	@:overload @:public @:static public static function checkNull(o : Dynamic, msg : String) : Void;
	
	/** Equivalent to
	*   assert (o != null) : value;
	*/
	@:overload @:public @:static public static function checkNonNull<T>(t : T, msg : String) : T;
	
	/** Equivalent to
	*   assert false;
	*/
	@:overload @:public @:static public static function error() : Void;
	
	/** Equivalent to
	*   assert false : msg;
	*/
	@:overload @:public @:static public static function error(msg : String) : Void;
	
	
}
