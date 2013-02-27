package java.lang.management;
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
extern class MemoryNotificationInfo
{
	/**
	* Notification type denoting that
	* the memory usage of a memory pool has
	* reached or exceeded its
	* <a href="MemoryPoolMXBean.html#UsageThreshold"> usage threshold</a> value.
	* This notification is emitted by {@link MemoryMXBean}.
	* Subsequent crossing of the usage threshold value does not cause
	* further notification until the memory usage has returned
	* to become less than the usage threshold value.
	* The value of this notification type is
	* <tt>java.management.memory.threshold.exceeded</tt>.
	*/
	public static var MEMORY_THRESHOLD_EXCEEDED(default, null) : String;
	
	/**
	* Notification type denoting that
	* the memory usage of a memory pool is greater than or equal to its
	* <a href="MemoryPoolMXBean.html#CollectionThreshold">
	* collection usage threshold</a> after the Java virtual machine
	* has expended effort in recycling unused objects in that
	* memory pool.
	* This notification is emitted by {@link MemoryMXBean}.
	* The value of this notification type is
	* <tt>java.management.memory.collection.threshold.exceeded</tt>.
	*/
	public static var MEMORY_COLLECTION_THRESHOLD_EXCEEDED(default, null) : String;
	
	/**
	* Constructs a <tt>MemoryNotificationInfo</tt> object.
	*
	* @param poolName The name of the memory pool which triggers this notification.
	* @param usage Memory usage of the memory pool.
	* @param count The threshold crossing count.
	*/
	@:overload public function new(poolName : String, usage : java.lang.management.MemoryUsage, count : haxe.Int64) : Void;
	
	/**
	* Returns the name of the memory pool that triggers this notification.
	* The memory pool usage has crossed a threshold.
	*
	* @return the name of the memory pool that triggers this notification.
	*/
	@:overload public function getPoolName() : String;
	
	/**
	* Returns the memory usage of the memory pool
	* when this notification was constructed.
	*
	* @return the memory usage of the memory pool
	* when this notification was constructed.
	*/
	@:overload public function getUsage() : java.lang.management.MemoryUsage;
	
	/**
	* Returns the number of times that the memory usage has crossed
	* a threshold when the notification was constructed.
	* For usage threshold notifications, this count will be the
	* {@link MemoryPoolMXBean#getUsageThresholdCount threshold
	* count}.  For collection threshold notifications,
	* this count will be the
	* {@link MemoryPoolMXBean#getCollectionUsageThresholdCount
	* collection usage threshold count}.
	*
	* @return the number of times that the memory usage has crossed
	* a threshold when the notification was constructed.
	*/
	@:overload public function getCount() : haxe.Int64;
	
	/**
	* Returns a <tt>MemoryNotificationInfo</tt> object represented by the
	* given <tt>CompositeData</tt>.
	* The given <tt>CompositeData</tt> must contain
	* the following attributes:
	* <blockquote>
	* <table border>
	* <tr>
	*   <th align=left>Attribute Name</th>
	*   <th align=left>Type</th>
	* </tr>
	* <tr>
	*   <td>poolName</td>
	*   <td><tt>java.lang.String</tt></td>
	* </tr>
	* <tr>
	*   <td>usage</td>
	*   <td><tt>javax.management.openmbean.CompositeData</tt></td>
	* </tr>
	* <tr>
	*   <td>count</td>
	*   <td><tt>java.lang.Long</tt></td>
	* </tr>
	* </table>
	* </blockquote>
	*
	* @param cd <tt>CompositeData</tt> representing a
	*           <tt>MemoryNotificationInfo</tt>
	*
	* @throws IllegalArgumentException if <tt>cd</tt> does not
	*   represent a <tt>MemoryNotificationInfo</tt> object.
	*
	* @return a <tt>MemoryNotificationInfo</tt> object represented
	*         by <tt>cd</tt> if <tt>cd</tt> is not <tt>null</tt>;
	*         <tt>null</tt> otherwise.
	*/
	@:overload public static function from(cd : javax.management.openmbean.CompositeData) : MemoryNotificationInfo;
	
	
}
