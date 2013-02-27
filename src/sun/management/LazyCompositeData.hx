package sun.management;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class LazyCompositeData implements javax.management.openmbean.CompositeData implements java.io.Serializable
{
	@:overload public function containsKey(key : String) : Bool;
	
	@:overload public function containsValue(value : Dynamic) : Bool;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function get(key : String) : Dynamic;
	
	@:overload public function getAll(keys : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	@:overload public function getCompositeType() : javax.management.openmbean.CompositeType;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Designate to a CompositeData object when writing to an
	* output stream during serialization so that the receiver
	* only requires JMX 1.2 classes but not any implementation
	* specific class.
	*/
	@:overload private function writeReplace() : Dynamic;
	
	/**
	* Returns the CompositeData representing this object.
	* The returned CompositeData object must be an instance
	* of javax.management.openmbean.CompositeDataSupport class
	* so that no implementation specific class is required
	* for unmarshalling besides JMX 1.2 classes.
	*/
	@:overload @:abstract private function getCompositeData() : javax.management.openmbean.CompositeData;
	
	/**
	* Compares two CompositeTypes and returns true if
	* all items in type1 exist in type2 and their item types
	* are the same.
	*/
	@:overload private static function isTypeMatched(type1 : javax.management.openmbean.CompositeType, type2 : javax.management.openmbean.CompositeType) : Bool;
	
	@:overload private static function isTypeMatched(type1 : javax.management.openmbean.TabularType, type2 : javax.management.openmbean.TabularType) : Bool;
	
	
}
