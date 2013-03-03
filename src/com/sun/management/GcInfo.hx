package com.sun.management;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GcInfo implements javax.management.openmbean.CompositeData implements javax.management.openmbean.CompositeDataView
{
	/**
	* Returns the identifier of this garbage collection which is
	* the number of collections that this collector has done.
	*
	* @return the identifier of this garbage collection which is
	* the number of collections that this collector has done.
	*/
	@:overload @:public public function getId() : haxe.Int64;
	
	/**
	* Returns the start time of this GC in milliseconds
	* since the Java virtual machine was started.
	*
	* @return the start time of this GC.
	*/
	@:overload @:public public function getStartTime() : haxe.Int64;
	
	/**
	* Returns the end time of this GC in milliseconds
	* since the Java virtual machine was started.
	*
	* @return the end time of this GC.
	*/
	@:overload @:public public function getEndTime() : haxe.Int64;
	
	/**
	* Returns the elapsed time of this GC in milliseconds.
	*
	* @return the elapsed time of this GC in milliseconds.
	*/
	@:overload @:public public function getDuration() : haxe.Int64;
	
	/**
	* Returns the memory usage of all memory pools
	* at the beginning of this GC.
	* This method returns
	* a <tt>Map</tt> of the name of a memory pool
	* to the memory usage of the corresponding
	* memory pool before GC starts.
	*
	* @return a <tt>Map</tt> of memory pool names to the memory
	* usage of a memory pool before GC starts.
	*/
	@:overload @:public public function getMemoryUsageBeforeGc() : java.util.Map<String, java.lang.management.MemoryUsage>;
	
	/**
	* Returns the memory usage of all memory pools
	* at the end of this GC.
	* This method returns
	* a <tt>Map</tt> of the name of a memory pool
	* to the memory usage of the corresponding
	* memory pool when GC finishes.
	*
	* @return a <tt>Map</tt> of memory pool names to the memory
	* usage of a memory pool when GC finishes.
	*/
	@:overload @:public public function getMemoryUsageAfterGc() : java.util.Map<String, java.lang.management.MemoryUsage>;
	
	/**
	* Returns a <tt>GcInfo</tt> object represented by the
	* given <tt>CompositeData</tt>. The given
	* <tt>CompositeData</tt> must contain
	* all the following attributes:
	*
	* <p>
	* <blockquote>
	* <table border>
	* <tr>
	*   <th align=left>Attribute Name</th>
	*   <th align=left>Type</th>
	* </tr>
	* <tr>
	*   <td>index</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>startTime</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>endTime</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* <tr>
	*   <td>memoryUsageBeforeGc</td>
	*   <td><tt>javax.management.openmbean.TabularData</tt></td>
	* </tr>
	* <tr>
	*   <td>memoryUsageAfterGc</td>
	*   <td><tt>javax.management.openmbean.TabularData</tt></td>
	* </tr>
	* </table>
	* </blockquote>
	*
	* @throws IllegalArgumentException if <tt>cd</tt> does not
	*   represent a <tt>GcInfo</tt> object with the attributes
	*   described above.
	*
	* @return a <tt>GcInfo</tt> object represented by <tt>cd</tt>
	* if <tt>cd</tt> is not <tt>null</tt>; <tt>null</tt> otherwise.
	*/
	@:overload @:public @:static public static function from(cd : javax.management.openmbean.CompositeData) : com.sun.management.GcInfo;
	
	@:overload @:public public function containsKey(key : String) : Bool;
	
	@:overload @:public public function containsValue(value : Dynamic) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function get(key : String) : Dynamic;
	
	@:overload @:public public function getAll(keys : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	@:overload @:public public function getCompositeType() : javax.management.openmbean.CompositeType;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function values() : java.util.Collection<Dynamic>;
	
	/**
	* <p>Return the {@code CompositeData} representation of this
	* {@code GcInfo}, including any GC-specific attributes.  The
	* returned value will have at least all the attributes described
	* in the {@link #from(CompositeData) from} method, plus optionally
	* other attributes.
	*
	* @param ct the {@code CompositeType} that the caller expects.
	* This parameter is ignored and can be null.
	*
	* @return the {@code CompositeData} representation.
	*/
	@:overload @:public public function toCompositeData(ct : javax.management.openmbean.CompositeType) : javax.management.openmbean.CompositeData;
	
	
}
