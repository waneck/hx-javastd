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
extern class JavaObject extends com.sun.tools.hat.internal.model.JavaLazyReadObject
{
	/**
	* Construct a new JavaObject.
	*
	* @param classID id of the class object
	* @param offset The offset of field data
	*/
	@:overload @:public public function new(classID : haxe.Int64, offset : haxe.Int64) : Void;
	
	@:overload @:public override public function resolve(snapshot : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	/**
	* Are we the same type as other?  We are iff our clazz is the
	* same type as other's.
	*/
	@:overload @:public override public function isSameTypeAs(other : com.sun.tools.hat.internal.model.JavaThing) : Bool;
	
	/**
	* Return our JavaClass object.  This may only be called after resolve.
	*/
	@:overload @:public override public function getClazz() : com.sun.tools.hat.internal.model.JavaClass;
	
	@:overload @:public public function getFields() : java.NativeArray<com.sun.tools.hat.internal.model.JavaThing>;
	
	@:overload @:public public function getField(name : String) : com.sun.tools.hat.internal.model.JavaThing;
	
	@:overload @:public override public function compareTo(other : com.sun.tools.hat.internal.model.JavaThing) : Int;
	
	@:overload @:public override public function visitReferencedObjects(v : com.sun.tools.hat.internal.model.JavaHeapObjectVisitor) : Void;
	
	@:overload @:public override public function refersOnlyWeaklyTo(ss : com.sun.tools.hat.internal.model.Snapshot, other : com.sun.tools.hat.internal.model.JavaThing) : Bool;
	
	/**
	* Describe the reference that this thing has to target.  This will only
	* be called if target is in the array returned by getChildrenForRootset.
	*/
	@:overload @:public override public function describeReferenceTo(target : com.sun.tools.hat.internal.model.JavaThing, ss : com.sun.tools.hat.internal.model.Snapshot) : String;
	
	@:overload @:public override public function toString() : String;
	
	/*
	* Java instance record (HPROF_GC_INSTANCE_DUMP) looks as below:
	*
	*     object ID
	*     stack trace serial number (int)
	*     class ID
	*     data length (int)
	*     byte[length]
	*/
	@:overload @:protected @:final override private function readValueLength() : Int;
	
	@:overload @:protected @:final override private function readValue() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
