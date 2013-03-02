package sun.management;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MappedMXBeanType
{
	@:overload @:synchronized public static function toOpenType(t : java.lang.reflect.Type) : javax.management.openmbean.OpenType<Dynamic>;
	
	@:native('toJavaTypeData') @:overload public static function _toJavaTypeData(openData : Dynamic, t : java.lang.reflect.Type) : Dynamic;
	
	@:native('toOpenTypeData') @:overload public static function _toOpenTypeData(data : Dynamic, t : java.lang.reflect.Type) : Dynamic;
	
	
}
@:native('sun$management$MappedMXBeanType$BasicMXBeanType') @:internal extern class MappedMXBeanType_BasicMXBeanType extends sun.management.MappedMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$EnumMXBeanType') @:internal extern class MappedMXBeanType_EnumMXBeanType extends sun.management.MappedMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$ArrayMXBeanType') @:internal extern class MappedMXBeanType_ArrayMXBeanType extends sun.management.MappedMXBeanType
{
	private var componentType : sun.management.MappedMXBeanType;
	
	private var baseElementType : sun.management.MappedMXBeanType;
	
	@:overload private function new() : Void;
	
	
}
@:native('sun$management$MappedMXBeanType$GenericArrayMXBeanType') @:internal extern class MappedMXBeanType_GenericArrayMXBeanType extends sun.management.MappedMXBeanType.MappedMXBeanType_ArrayMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$ListMXBeanType') @:internal extern class MappedMXBeanType_ListMXBeanType extends sun.management.MappedMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$MapMXBeanType') @:internal extern class MappedMXBeanType_MapMXBeanType extends sun.management.MappedMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$CompositeDataMXBeanType') @:internal extern class MappedMXBeanType_CompositeDataMXBeanType extends sun.management.MappedMXBeanType
{
	
}
@:native('sun$management$MappedMXBeanType$InProgress') @:internal extern class MappedMXBeanType_InProgress extends javax.management.openmbean.OpenType<Dynamic>
{
	@:overload override public function toString() : String;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function isValue(o : Dynamic) : Bool;
	
	
}
