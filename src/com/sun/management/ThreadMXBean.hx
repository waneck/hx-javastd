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
extern interface ThreadMXBean extends java.lang.management.ThreadMXBean
{
	/**
	* Returns the total CPU time for each thread whose ID is
	* in the input array {@code ids} in nanoseconds.
	* The returned values are of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	* <p>
	* This method is equivalent to calling the
	* {@link ThreadMXBean#getThreadCpuTime(long)}
	* method for each thread ID in the input array {@code ids} and setting the
	* returned value in the corresponding element of the returned array.
	*
	* @param ids an array of thread IDs.
	* @return an array of long values, each of which is the amount of CPU
	* time the thread whose ID is in the corresponding element of the input
	* array of IDs has used,
	* if the thread of a specified ID exists, the thread is alive,
	* and CPU time measurement is enabled;
	* {@code -1} otherwise.
	*
	* @throws NullPointerException if {@code ids} is {@code null}
	* @throws IllegalArgumentException if any element in the input array
	*         {@code ids} is {@code <=} {@code 0}.
	* @throws java.lang.UnsupportedOperationException if the Java
	*         virtual machine implementation does not support CPU time
	*         measurement.
	*
	* @see ThreadMXBean#getThreadCpuTime(long)
	* @see #getThreadUserTime
	* @see ThreadMXBean#isThreadCpuTimeSupported
	* @see ThreadMXBean#isThreadCpuTimeEnabled
	* @see ThreadMXBean#setThreadCpuTimeEnabled
	*/
	@:overload public function getThreadCpuTime(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	/**
	* Returns the CPU time that each thread whose ID is in the input array
	* {@code ids} has executed in user mode in nanoseconds.
	* The returned values are of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	* <p>
	* This method is equivalent to calling the
	* {@link ThreadMXBean#getThreadUserTime(long)}
	* method for each thread ID in the input array {@code ids} and setting the
	* returned value in the corresponding element of the returned array.
	*
	* @param ids an array of thread IDs.
	* @return an array of long values, each of which is the amount of user
	* mode CPU time the thread whose ID is in the corresponding element of
	* the input array of IDs has used,
	* if the thread of a specified ID exists, the thread is alive,
	* and CPU time measurement is enabled;
	* {@code -1} otherwise.
	*
	* @throws NullPointerException if {@code ids} is {@code null}
	* @throws IllegalArgumentException if any element in the input array
	*         {@code ids} is {@code <=} {@code 0}.
	* @throws java.lang.UnsupportedOperationException if the Java
	*         virtual machine implementation does not support CPU time
	*         measurement.
	*
	* @see ThreadMXBean#getThreadUserTime(long)
	* @see #getThreadCpuTime
	* @see ThreadMXBean#isThreadCpuTimeSupported
	* @see ThreadMXBean#isThreadCpuTimeEnabled
	* @see ThreadMXBean#setThreadCpuTimeEnabled
	*/
	@:overload public function getThreadUserTime(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	/**
	* Returns an approximation of the total amount of memory, in bytes,
	* allocated in heap memory for the thread of the specified ID.
	* The returned value is an approximation because some Java virtual machine
	* implementations may use object allocation mechanisms that result in a
	* delay between the time an object is allocated and the time its size is
	* recorded.
	* <p>
	* If the thread of the specified ID is not alive or does not exist,
	* this method returns {@code -1}. If thread memory allocation measurement
	* is disabled, this method returns {@code -1}.
	* A thread is alive if it has been started and has not yet died.
	* <p>
	* If thread memory allocation measurement is enabled after the thread has
	* started, the Java virtual machine implementation may choose any time up
	* to and including the time that the capability is enabled as the point
	* where thread memory allocation measurement starts.
	*
	* @param id the thread ID of a thread
	* @return an approximation of the total memory allocated, in bytes, in
	* heap memory for a thread of the specified ID
	* if the thread of the specified ID exists, the thread is alive,
	* and thread memory allocation measurement is enabled;
	* {@code -1} otherwise.
	*
	* @throws IllegalArgumentException if {@code id} {@code <=} {@code 0}.
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	*         machine implementation does not support thread memory allocation
	*         measurement.
	*
	* @see #isThreadAllocatedMemorySupported
	* @see #isThreadAllocatedMemoryEnabled
	* @see #setThreadAllocatedMemoryEnabled
	*/
	@:overload public function getThreadAllocatedBytes(id : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns an approximation of the total amount of memory, in bytes,
	* allocated in heap memory for each thread whose ID is in the input
	* array {@code ids}.
	* The returned values are approximations because some Java virtual machine
	* implementations may use object allocation mechanisms that result in a
	* delay between the time an object is allocated and the time its size is
	* recorded.
	* <p>
	* This method is equivalent to calling the
	* {@link #getThreadAllocatedBytes(long)}
	* method for each thread ID in the input array {@code ids} and setting the
	* returned value in the corresponding element of the returned array.
	*
	* @param ids an array of thread IDs.
	* @return an array of long values, each of which is an approximation of
	* the total memory allocated, in bytes, in heap memory for the thread
	* whose ID is in the corresponding element of the input array of IDs.
	*
	* @throws NullPointerException if {@code ids} is {@code null}
	* @throws IllegalArgumentException if any element in the input array
	*         {@code ids} is {@code <=} {@code 0}.
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	*         machine implementation does not support thread memory allocation
	*         measurement.
	*
	* @see #getThreadAllocatedBytes(long)
	* @see #isThreadAllocatedMemorySupported
	* @see #isThreadAllocatedMemoryEnabled
	* @see #setThreadAllocatedMemoryEnabled
	*/
	@:overload public function getThreadAllocatedBytes(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	/**
	* Tests if the Java virtual machine implementation supports thread memory
	* allocation measurement.
	*
	* @return
	*   {@code true}
	*     if the Java virtual machine implementation supports thread memory
	*     allocation measurement;
	*   {@code false} otherwise.
	*/
	@:overload public function isThreadAllocatedMemorySupported() : Bool;
	
	/**
	* Tests if thread memory allocation measurement is enabled.
	*
	* @return {@code true} if thread memory allocation measurement is enabled;
	*         {@code false} otherwise.
	*
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	*         machine does not support thread memory allocation measurement.
	*
	* @see #isThreadAllocatedMemorySupported
	*/
	@:overload public function isThreadAllocatedMemoryEnabled() : Bool;
	
	/**
	* Enables or disables thread memory allocation measurement.  The default
	* is platform dependent.
	*
	* @param enable {@code true} to enable;
	*               {@code false} to disable.
	*
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	*         machine does not support thread memory allocation measurement.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("control").
	*
	* @see #isThreadAllocatedMemorySupported
	*/
	@:overload public function setThreadAllocatedMemoryEnabled(enable : Bool) : Void;
	
	
}
