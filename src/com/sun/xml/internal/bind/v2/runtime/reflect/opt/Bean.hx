package com.sun.xml.internal.bind.v2.runtime.reflect.opt;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Bean
{
	/**
	* Used by {@link TransducedAccessor} templates.
	*
	* <p>
	* Fields needs to have a distinctive name.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public public var f_boolean : Bool;
	
	@:public public var f_char : java.StdTypes.Char16;
	
	@:public public var f_byte : java.StdTypes.Int8;
	
	@:public public var f_short : java.StdTypes.Int16;
	
	@:public public var f_long : haxe.Int64;
	
	@:public public var f_float : Single;
	
	@:public public var f_double : Float;
	
	/**
	* Field of a reference type.
	* We need a distinctive type so that it can be easily replaced.
	*/
	@:public public var f_ref : com.sun.xml.internal.bind.v2.runtime.reflect.opt.Ref;
	
	@:overload @:public public function get_boolean() : Bool;
	
	@:overload @:public public function set_boolean(b : Bool) : Void;
	
	@:overload @:public public function get_char() : java.StdTypes.Char16;
	
	@:overload @:public public function set_char(b : java.StdTypes.Char16) : Void;
	
	@:overload @:public public function get_byte() : java.StdTypes.Int8;
	
	@:overload @:public public function set_byte(b : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function get_short() : java.StdTypes.Int16;
	
	@:overload @:public public function set_short(b : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function get_int() : Int;
	
	@:overload @:public public function set_int(b : Int) : Void;
	
	@:overload @:public public function get_long() : haxe.Int64;
	
	@:overload @:public public function set_long(b : haxe.Int64) : Void;
	
	@:overload @:public public function get_float() : Single;
	
	@:overload @:public public function set_float(b : Single) : Void;
	
	@:overload @:public public function get_double() : Float;
	
	@:overload @:public public function set_double(b : Float) : Void;
	
	@:overload @:public public function get_ref() : com.sun.xml.internal.bind.v2.runtime.reflect.opt.Ref;
	
	@:overload @:public public function set_ref(r : com.sun.xml.internal.bind.v2.runtime.reflect.opt.Ref) : Void;
	
	
}
