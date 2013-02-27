package com.sun.tools.jdi;
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
extern class DoubleValueImpl extends com.sun.tools.jdi.PrimitiveValueImpl implements com.sun.jdi.DoubleValue
{
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload public function compareTo(obj : com.sun.jdi.DoubleValue) : Int;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function type() : com.sun.jdi.Type;
	
	@:overload public function value() : Float;
	
	@:overload override public function booleanValue() : Bool;
	
	@:overload override public function byteValue() : java.StdTypes.Int8;
	
	@:overload override public function charValue() : java.StdTypes.Char16;
	
	@:overload override public function shortValue() : java.StdTypes.Int16;
	
	@:overload override public function intValue() : Int;
	
	@:overload override public function longValue() : haxe.Int64;
	
	@:overload override public function floatValue() : Single;
	
	@:overload override public function doubleValue() : Float;
	
	@:overload override public function toString() : String;
	
	
}
