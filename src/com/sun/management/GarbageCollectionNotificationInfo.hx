package com.sun.management;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class GarbageCollectionNotificationInfo implements javax.management.openmbean.CompositeDataView
{
	/**
	* Notification type denoting that
	* the Java virtual machine has completed a garbage collection cycle.
	* This notification is emitted by a {@link GarbageCollectorMXBean}.
	* The value of this notification type is
	* {@code com.sun.management.gc.notification}.
	*/
	public static var GARBAGE_COLLECTION_NOTIFICATION(default, null) : String;
	
	/**
	* Constructs a {@code GarbageCollectionNotificationInfo} object.
	*
	* @param gcName The name of the garbage collector used to perform the collection
	* @param gcAction The name of the action performed by the garbage collector
	* @param gcCause The cause the garbage collection action
	* @param gcInfo  a GcInfo object providing statistics about the GC cycle
	*/
	@:overload public function new(gcName : String, gcAction : String, gcCause : String, gcInfo : com.sun.management.GcInfo) : Void;
	
	/**
	* Returns the name of the garbage collector used to perform the collection
	*
	* @return the name of the garbage collector used to perform the collection
	*/
	@:overload public function getGcName() : String;
	
	/**
	* Returns the action of the performed by the garbage collector
	*
	* @return the the action of the performed by the garbage collector
	*/
	@:overload public function getGcAction() : String;
	
	/**
	* Returns the cause  the garbage collection
	*
	* @return the the cause  the garbage collection
	*/
	@:overload public function getGcCause() : String;
	
	/**
	* Returns the GC information related to the last garbage collection
	*
	* @return the GC information related to the
	* last garbage collection
	*/
	@:overload public function getGcInfo() : com.sun.management.GcInfo;
	
	/**
	* Returns a {@code GarbageCollectionNotificationInfo} object represented by the
	* given {@code CompositeData}.
	* The given {@code CompositeData} must contain
	* the following attributes:
	* <blockquote>
	* <table border>
	* <tr>
	*   <th align=left>Attribute Name</th>
	*   <th align=left>Type</th>
	* </tr>
	* <tr>
	*   <td>gcName</td>
	*   <td>{@code java.lang.String}</td>
	* </tr>
	* <tr>
	*   <td>gcAction</td>
	*   <td>{@code java.lang.String}</td>
	* </tr>
	* <tr>
	*   <td>gcCause</td>
	*   <td>{@code java.lang.String}</td>
	* </tr>
	* <tr>
	*   <td>gcInfo</td>
	*   <td>{@code javax.management.openmbean.CompositeData}</td>
	* </tr>
	* </table>
	* </blockquote>
	*
	* @param cd {@code CompositeData} representing a
	*           {@code GarbageCollectionNotificationInfo}
	*
	* @throws IllegalArgumentException if {@code cd} does not
	*   represent a {@code GarbaageCollectionNotificationInfo} object.
	*
	* @return a {@code GarbageCollectionNotificationInfo} object represented
	*         by {@code cd} if {@code cd} is not {@code null};
	*         {@code null} otherwise.
	*/
	@:overload public static function from(cd : javax.management.openmbean.CompositeData) : com.sun.management.GarbageCollectionNotificationInfo;
	
	@:overload public function toCompositeData(ct : javax.management.openmbean.CompositeType) : javax.management.openmbean.CompositeData;
	
	
}
