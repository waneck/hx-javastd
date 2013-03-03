package sun.reflect;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnsafeFieldAccessorImpl extends sun.reflect.FieldAccessorImpl
{
	@:protected @:final private var field(default, null) : java.lang.reflect.Field;
	
	@:protected @:final private var fieldOffset(default, null) : Int;
	
	@:protected @:final private var isFinal(default, null) : Bool;
	
	@:overload @:protected private function ensureObj(o : Dynamic) : Void;
	
	@:overload @:protected private function newGetIllegalArgumentException(type : String) : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(attemptedType : String, attemptedValue : String) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(o : Dynamic) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(z : Bool) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(b : java.StdTypes.Char16) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(b : java.StdTypes.Int16) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(i : Int) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(i : haxe.Int64) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(f : Single) : Void;
	
	@:overload @:protected private function throwFinalFieldIllegalAccessException(f : Float) : Void;
	
	@:overload @:protected private function newGetBooleanIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetByteIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetCharIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetShortIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetIntIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetLongIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetFloatIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function newGetDoubleIllegalArgumentException() : java.lang.IllegalArgumentException;
	
	@:overload @:protected private function getSetMessage(attemptedType : String, attemptedValue : String) : String;
	
	@:overload @:protected private function throwSetIllegalArgumentException(attemptedType : String, attemptedValue : String) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(o : Dynamic) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(b : Bool) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(c : java.StdTypes.Char16) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(s : java.StdTypes.Int16) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(i : Int) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(l : haxe.Int64) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(f : Single) : Void;
	
	@:overload @:protected private function throwSetIllegalArgumentException(d : Float) : Void;
	
	
}
