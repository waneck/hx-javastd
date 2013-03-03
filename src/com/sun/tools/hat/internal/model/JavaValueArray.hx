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
extern class JavaValueArray extends com.sun.tools.hat.internal.model.JavaLazyReadObject implements com.sun.tools.hat.internal.model.ArrayTypeCodes
{
	/*
	* Java primitive array record (HPROF_GC_PRIM_ARRAY_DUMP) looks
	* as below:
	*
	*    object ID
	*    stack trace serial number (int)
	*    length of the instance data (int)
	*    element type (byte)
	*    array data
	*/
	@:overload @:protected @:final override private function readValueLength() : Int;
	
	@:overload @:protected @:final override private function readValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function new(elementSignature : java.StdTypes.Int8, offset : haxe.Int64) : Void;
	
	@:overload @:public override public function getClazz() : com.sun.tools.hat.internal.model.JavaClass;
	
	@:overload @:public override public function visitReferencedObjects(v : com.sun.tools.hat.internal.model.JavaHeapObjectVisitor) : Void;
	
	@:overload @:public override public function resolve(snapshot : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function getElements() : Dynamic;
	
	@:overload @:public public function getElementType() : java.StdTypes.Int8;
	
	@:overload @:public public function getBooleanAt(index : Int) : Bool;
	
	@:overload @:public public function getByteAt(index : Int) : java.StdTypes.Int8;
	
	@:overload @:public public function getCharAt(index : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function getShortAt(index : Int) : java.StdTypes.Int16;
	
	@:overload @:public public function getIntAt(index : Int) : Int;
	
	@:overload @:public public function getLongAt(index : Int) : haxe.Int64;
	
	@:overload @:public public function getFloatAt(index : Int) : Single;
	
	@:overload @:public public function getDoubleAt(index : Int) : Float;
	
	@:overload @:public public function valueString() : String;
	
	@:overload @:public public function valueString(bigLimit : Bool) : String;
	
	
}
