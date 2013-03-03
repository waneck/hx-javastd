package sun.reflect;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
/** Provides reflective access to the constant pools of classes.
Currently this is needed to provide reflective access to annotations
but may be used by other internal subsystems in the future. */
extern class ConstantPool
{
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function getClassAt(index : Int) : Class<Dynamic>;
	
	@:overload @:public public function getClassAtIfLoaded(index : Int) : Class<Dynamic>;
	
	@:overload @:public public function getMethodAt(index : Int) : java.lang.reflect.Member;
	
	@:overload @:public public function getMethodAtIfLoaded(index : Int) : java.lang.reflect.Member;
	
	@:overload @:public public function getFieldAt(index : Int) : java.lang.reflect.Field;
	
	@:overload @:public public function getFieldAtIfLoaded(index : Int) : java.lang.reflect.Field;
	
	@:overload @:public public function getMemberRefInfoAt(index : Int) : java.NativeArray<String>;
	
	@:overload @:public public function getIntAt(index : Int) : Int;
	
	@:overload @:public public function getLongAt(index : Int) : haxe.Int64;
	
	@:overload @:public public function getFloatAt(index : Int) : Single;
	
	@:overload @:public public function getDoubleAt(index : Int) : Float;
	
	@:overload @:public public function getStringAt(index : Int) : String;
	
	@:overload @:public public function getUTF8At(index : Int) : String;
	
	
}
