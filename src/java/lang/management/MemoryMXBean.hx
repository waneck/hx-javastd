package java.lang.management;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface MemoryMXBean extends java.lang.management.PlatformManagedObject
{
	/**
	* Returns the approximate number of objects for which
	* finalization is pending.
	*
	* @return the approximate number objects for which finalization
	* is pending.
	*/
	@:overload public function getObjectPendingFinalizationCount() : Int;
	
	/**
	* Returns the current memory usage of the heap that
	* is used for object allocation.  The heap consists
	* of one or more memory pools.  The <tt>used</tt>
	* and <tt>committed</tt> size of the returned memory
	* usage is the sum of those values of all heap memory pools
	* whereas the <tt>init</tt> and <tt>max</tt> size of the
	* returned memory usage represents the setting of the heap
	* memory which may not be the sum of those of all heap
	* memory pools.
	* <p>
	* The amount of used memory in the returned memory usage
	* is the amount of memory occupied by both live objects
	* and garbage objects that have not been collected, if any.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>MemoryUsage</tt> is
	* <tt>CompositeData</tt> with attributes as specified in
	* {@link MemoryUsage#from MemoryUsage}.
	*
	* @return a {@link MemoryUsage} object representing
	* the heap memory usage.
	*/
	@:overload public function getHeapMemoryUsage() : java.lang.management.MemoryUsage;
	
	/**
	* Returns the current memory usage of non-heap memory that
	* is used by the Java virtual machine.
	* The non-heap memory consists of one or more memory pools.
	* The <tt>used</tt> and <tt>committed</tt> size of the
	* returned memory usage is the sum of those values of
	* all non-heap memory pools whereas the <tt>init</tt>
	* and <tt>max</tt> size of the returned memory usage
	* represents the setting of the non-heap
	* memory which may not be the sum of those of all non-heap
	* memory pools.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>MemoryUsage</tt> is
	* <tt>CompositeData</tt> with attributes as specified in
	* {@link MemoryUsage#from MemoryUsage}.
	*
	* @return a {@link MemoryUsage} object representing
	* the non-heap memory usage.
	*/
	@:overload public function getNonHeapMemoryUsage() : java.lang.management.MemoryUsage;
	
	/**
	* Tests if verbose output for the memory system is enabled.
	*
	* @return <tt>true</tt> if verbose output for the memory
	* system is enabled; <tt>false</tt> otherwise.
	*/
	@:overload public function isVerbose() : Bool;
	
	/**
	* Enables or disables verbose output for the memory
	* system.  The verbose output information and the output stream
	* to which the verbose information is emitted are implementation
	* dependent.  Typically, a Java virtual machine implementation
	* prints a message whenever it frees memory at garbage collection.
	*
	* <p>
	* Each invocation of this method enables or disables verbose
	* output globally.
	*
	* @param value <tt>true</tt> to enable verbose output;
	*              <tt>false</tt> to disable.
	*
	* @exception  java.lang.SecurityException if a security manager
	*             exists and the caller does not have
	*             ManagementPermission("control").
	*/
	@:overload public function setVerbose(value : Bool) : Void;
	
	/**
	* Runs the garbage collector.
	* The call <code>gc()</code> is effectively equivalent to the
	* call:
	* <blockquote><pre>
	* System.gc()
	* </pre></blockquote>
	*
	* @see     java.lang.System#gc()
	*/
	@:overload public function gc() : Void;
	
	
}
