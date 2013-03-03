package sun.management;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class GcInfoCompositeData extends sun.management.LazyCompositeData
{
	@:overload @:public public function new(info : com.sun.management.GcInfo, builder : sun.management.GcInfoBuilder, gcExtItemValues : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function getGcInfo() : com.sun.management.GcInfo;
	
	@:overload @:public @:static public static function toCompositeData(info : com.sun.management.GcInfo) : javax.management.openmbean.CompositeData;
	
	@:overload @:protected override private function getCompositeData() : javax.management.openmbean.CompositeData;
	
	@:overload @:public @:static public static function getId(cd : javax.management.openmbean.CompositeData) : haxe.Int64;
	
	@:overload @:public @:static public static function getStartTime(cd : javax.management.openmbean.CompositeData) : haxe.Int64;
	
	@:overload @:public @:static public static function getEndTime(cd : javax.management.openmbean.CompositeData) : haxe.Int64;
	
	@:overload @:public @:static public static function getMemoryUsageBeforeGc(cd : javax.management.openmbean.CompositeData) : java.util.Map<String, java.lang.management.MemoryUsage>;
	
	@:native('cast') @:overload @:public @:static public static function _cast(x : Dynamic) : java.util.Map<String, java.lang.management.MemoryUsage>;
	
	@:overload @:public @:static public static function getMemoryUsageAfterGc(cd : javax.management.openmbean.CompositeData) : java.util.Map<String, java.lang.management.MemoryUsage>;
	
	/**
	* Returns true if the input CompositeData has the expected
	* CompositeType (i.e. contain all attributes with expected
	* names and types).  Otherwise, return false.
	*/
	@:overload @:public @:static public static function validateCompositeData(cd : javax.management.openmbean.CompositeData) : Void;
	
	
}
