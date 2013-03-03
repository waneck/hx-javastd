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
extern interface ThreadMXBean extends java.lang.management.PlatformManagedObject
{
	/**
	* Returns the current number of live threads including both
	* daemon and non-daemon threads.
	*
	* @return the current number of live threads.
	*/
	@:overload @:public public function getThreadCount() : Int;
	
	/**
	* Returns the peak live thread count since the Java virtual machine
	* started or peak was reset.
	*
	* @return the peak live thread count.
	*/
	@:overload @:public public function getPeakThreadCount() : Int;
	
	/**
	* Returns the total number of threads created and also started
	* since the Java virtual machine started.
	*
	* @return the total number of threads started.
	*/
	@:overload @:public public function getTotalStartedThreadCount() : haxe.Int64;
	
	/**
	* Returns the current number of live daemon threads.
	*
	* @return the current number of live daemon threads.
	*/
	@:overload @:public public function getDaemonThreadCount() : Int;
	
	/**
	* Returns all live thread IDs.
	* Some threads included in the returned array
	* may have been terminated when this method returns.
	*
	* @return an array of <tt>long</tt>, each is a thread ID.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*/
	@:overload @:public public function getAllThreadIds() : java.NativeArray<haxe.Int64>;
	
	/**
	* Returns the thread info for a thread of the specified
	* <tt>id</tt> with no stack trace.
	* This method is equivalent to calling:
	* <blockquote>
	*   {@link #getThreadInfo(long, int) getThreadInfo(id, 0);}
	* </blockquote>
	*
	* <p>
	* This method returns a <tt>ThreadInfo</tt> object representing
	* the thread information for the thread of the specified ID.
	* The stack trace, locked monitors, and locked synchronizers
	* in the returned <tt>ThreadInfo</tt> object will
	* be empty.
	*
	* If a thread of the given ID is not alive or does not exist,
	* this method will return <tt>null</tt>.  A thread is alive if
	* it has been started and has not yet died.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>ThreadInfo</tt> is
	* <tt>CompositeData</tt> with attributes as specified in the
	* {@link ThreadInfo#from ThreadInfo.from} method.
	*
	* @param id the thread ID of the thread. Must be positive.
	*
	* @return a {@link ThreadInfo} object for the thread of the given ID
	* with no stack trace, no locked monitor and no synchronizer info;
	* <tt>null</tt> if the thread of the given ID is not alive or
	* it does not exist.
	*
	* @throws IllegalArgumentException if <tt>id &lt= 0</tt>.
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*/
	@:overload @:public public function getThreadInfo(id : haxe.Int64) : java.lang.management.ThreadInfo;
	
	/**
	* Returns the thread info for each thread
	* whose ID is in the input array <tt>ids</tt> with no stack trace.
	* This method is equivalent to calling:
	* <blockquote><pre>
	*   {@link #getThreadInfo(long[], int) getThreadInfo}(ids, 0);
	* </pre></blockquote>
	*
	* <p>
	* This method returns an array of the <tt>ThreadInfo</tt> objects.
	* The stack trace, locked monitors, and locked synchronizers
	* in each <tt>ThreadInfo</tt> object will be empty.
	*
	* If a thread of a given ID is not alive or does not exist,
	* the corresponding element in the returned array will
	* contain <tt>null</tt>.  A thread is alive if
	* it has been started and has not yet died.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>ThreadInfo</tt> is
	* <tt>CompositeData</tt> with attributes as specified in the
	* {@link ThreadInfo#from ThreadInfo.from} method.
	*
	* @param ids an array of thread IDs.
	* @return an array of the {@link ThreadInfo} objects, each containing
	* information about a thread whose ID is in the corresponding
	* element of the input array of IDs
	* with no stack trace, no locked monitor and no synchronizer info.
	*
	* @throws IllegalArgumentException if any element in the input array
	*      <tt>ids</tt> is <tt>&lt= 0</tt>.
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*/
	@:overload @:public public function getThreadInfo(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	/**
	* Returns a thread info for a thread of the specified <tt>id</tt>,
	* with stack trace of a specified number of stack trace elements.
	* The <tt>maxDepth</tt> parameter indicates the maximum number of
	* {@link StackTraceElement} to be retrieved from the stack trace.
	* If <tt>maxDepth == Integer.MAX_VALUE</tt>, the entire stack trace of
	* the thread will be dumped.
	* If <tt>maxDepth == 0</tt>, no stack trace of the thread
	* will be dumped.
	* This method does not obtain the locked monitors and locked
	* synchronizers of the thread.
	* <p>
	* When the Java virtual machine has no stack trace information
	* about a thread or <tt>maxDepth == 0</tt>,
	* the stack trace in the
	* <tt>ThreadInfo</tt> object will be an empty array of
	* <tt>StackTraceElement</tt>.
	*
	* <p>
	* If a thread of the given ID is not alive or does not exist,
	* this method will return <tt>null</tt>.  A thread is alive if
	* it has been started and has not yet died.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>ThreadInfo</tt> is
	* <tt>CompositeData</tt> with attributes as specified in the
	* {@link ThreadInfo#from ThreadInfo.from} method.
	*
	* @param id the thread ID of the thread. Must be positive.
	* @param maxDepth the maximum number of entries in the stack trace
	* to be dumped. <tt>Integer.MAX_VALUE</tt> could be used to request
	* the entire stack to be dumped.
	*
	* @return a {@link ThreadInfo} of the thread of the given ID
	* with no locked monitor and synchronizer info.
	* <tt>null</tt> if the thread of the given ID is not alive or
	* it does not exist.
	*
	* @throws IllegalArgumentException if <tt>id &lt= 0</tt>.
	* @throws IllegalArgumentException if <tt>maxDepth is negative</tt>.
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*
	*/
	@:overload @:public public function getThreadInfo(id : haxe.Int64, maxDepth : Int) : java.lang.management.ThreadInfo;
	
	/**
	* Returns the thread info for each thread
	* whose ID is in the input array <tt>ids</tt>,
	* with stack trace of a specified number of stack trace elements.
	* The <tt>maxDepth</tt> parameter indicates the maximum number of
	* {@link StackTraceElement} to be retrieved from the stack trace.
	* If <tt>maxDepth == Integer.MAX_VALUE</tt>, the entire stack trace of
	* the thread will be dumped.
	* If <tt>maxDepth == 0</tt>, no stack trace of the thread
	* will be dumped.
	* This method does not obtain the locked monitors and locked
	* synchronizers of the threads.
	* <p>
	* When the Java virtual machine has no stack trace information
	* about a thread or <tt>maxDepth == 0</tt>,
	* the stack trace in the
	* <tt>ThreadInfo</tt> object will be an empty array of
	* <tt>StackTraceElement</tt>.
	* <p>
	* This method returns an array of the <tt>ThreadInfo</tt> objects,
	* each is the thread information about the thread with the same index
	* as in the <tt>ids</tt> array.
	* If a thread of the given ID is not alive or does not exist,
	* <tt>null</tt> will be set in the corresponding element
	* in the returned array.  A thread is alive if
	* it has been started and has not yet died.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>ThreadInfo</tt> is
	* <tt>CompositeData</tt> with attributes as specified in the
	* {@link ThreadInfo#from ThreadInfo.from} method.
	*
	* @param ids an array of thread IDs
	* @param maxDepth the maximum number of entries in the stack trace
	* to be dumped. <tt>Integer.MAX_VALUE</tt> could be used to request
	* the entire stack to be dumped.
	*
	* @return an array of the {@link ThreadInfo} objects, each containing
	* information about a thread whose ID is in the corresponding
	* element of the input array of IDs with no locked monitor and
	* synchronizer info.
	*
	* @throws IllegalArgumentException if <tt>maxDepth is negative</tt>.
	* @throws IllegalArgumentException if any element in the input array
	*      <tt>ids</tt> is <tt>&lt= 0</tt>.
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*
	*/
	@:overload @:public public function getThreadInfo(ids : java.NativeArray<haxe.Int64>, maxDepth : Int) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	/**
	* Tests if the Java virtual machine supports thread contention monitoring.
	*
	* @return
	*   <tt>true</tt>
	*     if the Java virtual machine supports thread contention monitoring;
	*   <tt>false</tt> otherwise.
	*/
	@:overload @:public public function isThreadContentionMonitoringSupported() : Bool;
	
	/**
	* Tests if thread contention monitoring is enabled.
	*
	* @return <tt>true</tt> if thread contention monitoring is enabled;
	*         <tt>false</tt> otherwise.
	*
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	* machine does not support thread contention monitoring.
	*
	* @see #isThreadContentionMonitoringSupported
	*/
	@:overload @:public public function isThreadContentionMonitoringEnabled() : Bool;
	
	/**
	* Enables or disables thread contention monitoring.
	* Thread contention monitoring is disabled by default.
	*
	* @param enable <tt>true</tt> to enable;
	*               <tt>false</tt> to disable.
	*
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support thread contention monitoring.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("control").
	*
	* @see #isThreadContentionMonitoringSupported
	*/
	@:overload @:public public function setThreadContentionMonitoringEnabled(enable : Bool) : Void;
	
	/**
	* Returns the total CPU time for the current thread in nanoseconds.
	* The returned value is of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	* If the implementation distinguishes between user mode time and system
	* mode time, the returned CPU time is the amount of time that
	* the current thread has executed in user mode or system mode.
	*
	* <p>
	* This is a convenient method for local management use and is
	* equivalent to calling:
	* <blockquote><pre>
	*   {@link #getThreadCpuTime getThreadCpuTime}(Thread.currentThread().getId());
	* </pre></blockquote>
	*
	* @return the total CPU time for the current thread if CPU time
	* measurement is enabled; <tt>-1</tt> otherwise.
	*
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support CPU time measurement for
	* the current thread.
	*
	* @see #getCurrentThreadUserTime
	* @see #isCurrentThreadCpuTimeSupported
	* @see #isThreadCpuTimeEnabled
	* @see #setThreadCpuTimeEnabled
	*/
	@:overload @:public public function getCurrentThreadCpuTime() : haxe.Int64;
	
	/**
	* Returns the CPU time that the current thread has executed
	* in user mode in nanoseconds.
	* The returned value is of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	*
	* <p>
	* This is a convenient method for local management use and is
	* equivalent to calling:
	* <blockquote><pre>
	*   {@link #getThreadUserTime getThreadUserTime}(Thread.currentThread().getId());
	* </pre></blockquote>
	*
	* @return the user-level CPU time for the current thread if CPU time
	* measurement is enabled; <tt>-1</tt> otherwise.
	*
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support CPU time measurement for
	* the current thread.
	*
	* @see #getCurrentThreadCpuTime
	* @see #isCurrentThreadCpuTimeSupported
	* @see #isThreadCpuTimeEnabled
	* @see #setThreadCpuTimeEnabled
	*/
	@:overload @:public public function getCurrentThreadUserTime() : haxe.Int64;
	
	/**
	* Returns the total CPU time for a thread of the specified ID in nanoseconds.
	* The returned value is of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	* If the implementation distinguishes between user mode time and system
	* mode time, the returned CPU time is the amount of time that
	* the thread has executed in user mode or system mode.
	*
	* <p>
	* If the thread of the specified ID is not alive or does not exist,
	* this method returns <tt>-1</tt>. If CPU time measurement
	* is disabled, this method returns <tt>-1</tt>.
	* A thread is alive if it has been started and has not yet died.
	* <p>
	* If CPU time measurement is enabled after the thread has started,
	* the Java virtual machine implementation may choose any time up to
	* and including the time that the capability is enabled as the point
	* where CPU time measurement starts.
	*
	* @param id the thread ID of a thread
	* @return the total CPU time for a thread of the specified ID
	* if the thread of the specified ID exists, the thread is alive,
	* and CPU time measurement is enabled;
	* <tt>-1</tt> otherwise.
	*
	* @throws IllegalArgumentException if <tt>id &lt= 0 </tt>.
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support CPU time measurement for
	* other threads.
	*
	* @see #getThreadUserTime
	* @see #isThreadCpuTimeSupported
	* @see #isThreadCpuTimeEnabled
	* @see #setThreadCpuTimeEnabled
	*/
	@:overload @:public public function getThreadCpuTime(id : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the CPU time that a thread of the specified ID
	* has executed in user mode in nanoseconds.
	* The returned value is of nanoseconds precision but
	* not necessarily nanoseconds accuracy.
	*
	* <p>
	* If the thread of the specified ID is not alive or does not exist,
	* this method returns <tt>-1</tt>. If CPU time measurement
	* is disabled, this method returns <tt>-1</tt>.
	* A thread is alive if it has been started and has not yet died.
	* <p>
	* If CPU time measurement is enabled after the thread has started,
	* the Java virtual machine implementation may choose any time up to
	* and including the time that the capability is enabled as the point
	* where CPU time measurement starts.
	*
	* @param id the thread ID of a thread
	* @return the user-level CPU time for a thread of the specified ID
	* if the thread of the specified ID exists, the thread is alive,
	* and CPU time measurement is enabled;
	* <tt>-1</tt> otherwise.
	*
	* @throws IllegalArgumentException if <tt>id &lt= 0 </tt>.
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support CPU time measurement for
	* other threads.
	*
	* @see #getThreadCpuTime
	* @see #isThreadCpuTimeSupported
	* @see #isThreadCpuTimeEnabled
	* @see #setThreadCpuTimeEnabled
	*/
	@:overload @:public public function getThreadUserTime(id : haxe.Int64) : haxe.Int64;
	
	/**
	* Tests if the Java virtual machine implementation supports CPU time
	* measurement for any thread.
	* A Java virtual machine implementation that supports CPU time
	* measurement for any thread will also support CPU time
	* measurement for the current thread.
	*
	* @return
	*   <tt>true</tt>
	*     if the Java virtual machine supports CPU time
	*     measurement for any thread;
	*   <tt>false</tt> otherwise.
	*/
	@:overload @:public public function isThreadCpuTimeSupported() : Bool;
	
	/**
	* Tests if the Java virtual machine supports CPU time
	* measurement for the current thread.
	* This method returns <tt>true</tt> if {@link #isThreadCpuTimeSupported}
	* returns <tt>true</tt>.
	*
	* @return
	*   <tt>true</tt>
	*     if the Java virtual machine supports CPU time
	*     measurement for current thread;
	*   <tt>false</tt> otherwise.
	*/
	@:overload @:public public function isCurrentThreadCpuTimeSupported() : Bool;
	
	/**
	* Tests if thread CPU time measurement is enabled.
	*
	* @return <tt>true</tt> if thread CPU time measurement is enabled;
	*         <tt>false</tt> otherwise.
	*
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	* machine does not support CPU time measurement for other threads
	* nor for the current thread.
	*
	* @see #isThreadCpuTimeSupported
	* @see #isCurrentThreadCpuTimeSupported
	*/
	@:overload @:public public function isThreadCpuTimeEnabled() : Bool;
	
	/**
	* Enables or disables thread CPU time measurement.  The default
	* is platform dependent.
	*
	* @param enable <tt>true</tt> to enable;
	*               <tt>false</tt> to disable.
	*
	* @throws java.lang.UnsupportedOperationException if the Java
	* virtual machine does not support CPU time measurement for
	* any threads nor for the current thread.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("control").
	*
	* @see #isThreadCpuTimeSupported
	* @see #isCurrentThreadCpuTimeSupported
	*/
	@:overload @:public public function setThreadCpuTimeEnabled(enable : Bool) : Void;
	
	/**
	* Finds cycles of threads that are in deadlock waiting to acquire
	* object monitors. That is, threads that are blocked waiting to enter a
	* synchronization block or waiting to reenter a synchronization block
	* after an {@link Object#wait Object.wait} call,
	* where each thread owns one monitor while
	* trying to obtain another monitor already held by another thread
	* in a cycle.
	* <p>
	* More formally, a thread is <em>monitor deadlocked</em> if it is
	* part of a cycle in the relation "is waiting for an object monitor
	* owned by".  In the simplest case, thread A is blocked waiting
	* for a monitor owned by thread B, and thread B is blocked waiting
	* for a monitor owned by thread A.
	* <p>
	* This method is designed for troubleshooting use, but not for
	* synchronization control.  It might be an expensive operation.
	* <p>
	* This method finds deadlocks involving only object monitors.
	* To find deadlocks involving both object monitors and
	* <a href="LockInfo.html#OwnableSynchronizer">ownable synchronizers</a>,
	* the {@link #findDeadlockedThreads findDeadlockedThreads} method
	* should be used.
	*
	* @return an array of IDs of the threads that are monitor
	* deadlocked, if any; <tt>null</tt> otherwise.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	*
	* @see #findDeadlockedThreads
	*/
	@:overload @:public public function findMonitorDeadlockedThreads() : java.NativeArray<haxe.Int64>;
	
	/**
	* Resets the peak thread count to the current number of
	* live threads.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("control").
	*
	* @see #getPeakThreadCount
	* @see #getThreadCount
	*/
	@:overload @:public public function resetPeakThreadCount() : Void;
	
	/**
	* Finds cycles of threads that are in deadlock waiting to acquire
	* object monitors or
	* <a href="LockInfo.html#OwnableSynchronizer">ownable synchronizers</a>.
	*
	* Threads are <em>deadlocked</em> in a cycle waiting for a lock of
	* these two types if each thread owns one lock while
	* trying to acquire another lock already held
	* by another thread in the cycle.
	* <p>
	* This method is designed for troubleshooting use, but not for
	* synchronization control.  It might be an expensive operation.
	*
	* @return an array of IDs of the threads that are
	* deadlocked waiting for object monitors or ownable synchronizers, if any;
	* <tt>null</tt> otherwise.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	* @throws java.lang.UnsupportedOperationException if the Java virtual
	* machine does not support monitoriing of ownable synchronizer usage.
	*
	* @see #isSynchronizerUsageSupported
	* @see #findMonitorDeadlockedThreads
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function findDeadlockedThreads() : java.NativeArray<haxe.Int64>;
	
	/**
	* Tests if the Java virtual machine supports monitoring of
	* object monitor usage.
	*
	* @return
	*   <tt>true</tt>
	*     if the Java virtual machine supports monitoring of
	*     object monitor usage;
	*   <tt>false</tt> otherwise.
	*
	* @see #dumpAllThreads
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isObjectMonitorUsageSupported() : Bool;
	
	/**
	* Tests if the Java virtual machine supports monitoring of
	* <a href="LockInfo.html#OwnableSynchronizer">
	* ownable synchronizer</a> usage.
	*
	* @return
	*   <tt>true</tt>
	*     if the Java virtual machine supports monitoring of ownable
	*     synchronizer usage;
	*   <tt>false</tt> otherwise.
	*
	* @see #dumpAllThreads
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isSynchronizerUsageSupported() : Bool;
	
	/**
	* Returns the thread info for each thread
	* whose ID is in the input array <tt>ids</tt>, with stack trace
	* and synchronization information.
	*
	* <p>
	* This method obtains a snapshot of the thread information
	* for each thread including:
	* <ul>
	*    <li>the entire stack trace,</li>
	*    <li>the object monitors currently locked by the thread
	*        if <tt>lockedMonitors</tt> is <tt>true</tt>, and</li>
	*    <li>the <a href="LockInfo.html#OwnableSynchronizer">
	*        ownable synchronizers</a> currently locked by the thread
	*        if <tt>lockedSynchronizers</tt> is <tt>true</tt>.</li>
	* </ul>
	* <p>
	* This method returns an array of the <tt>ThreadInfo</tt> objects,
	* each is the thread information about the thread with the same index
	* as in the <tt>ids</tt> array.
	* If a thread of the given ID is not alive or does not exist,
	* <tt>null</tt> will be set in the corresponding element
	* in the returned array.  A thread is alive if
	* it has been started and has not yet died.
	* <p>
	* If a thread does not lock any object monitor or <tt>lockedMonitors</tt>
	* is <tt>false</tt>, the returned <tt>ThreadInfo</tt> object will have an
	* empty <tt>MonitorInfo</tt> array.  Similarly, if a thread does not
	* lock any synchronizer or <tt>lockedSynchronizers</tt> is <tt>false</tt>,
	* the returned <tt>ThreadInfo</tt> object
	* will have an empty <tt>LockInfo</tt> array.
	*
	* <p>
	* When both <tt>lockedMonitors</tt> and <tt>lockedSynchronizers</tt>
	* parameters are <tt>false</tt>, it is equivalent to calling:
	* <blockquote><pre>
	*     {@link #getThreadInfo(long[], int)  getThreadInfo(ids, Integer.MAX_VALUE)}
	* </pre></blockquote>
	*
	* <p>
	* This method is designed for troubleshooting use, but not for
	* synchronization control.  It might be an expensive operation.
	*
	* <p>
	* <b>MBeanServer access</b>:<br>
	* The mapped type of <tt>ThreadInfo</tt> is
	* <tt>CompositeData</tt> with attributes as specified in the
	* {@link ThreadInfo#from ThreadInfo.from} method.
	*
	* @param  ids an array of thread IDs.
	* @param  lockedMonitors if <tt>true</tt>, retrieves all locked monitors.
	* @param  lockedSynchronizers if <tt>true</tt>, retrieves all locked
	*             ownable synchronizers.
	*
	* @return an array of the {@link ThreadInfo} objects, each containing
	* information about a thread whose ID is in the corresponding
	* element of the input array of IDs.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	* @throws java.lang.UnsupportedOperationException
	*         <ul>
	*           <li>if <tt>lockedMonitors</tt> is <tt>true</tt> but
	*               the Java virtual machine does not support monitoring
	*               of {@linkplain #isObjectMonitorUsageSupported
	*               object monitor usage}; or</li>
	*           <li>if <tt>lockedSynchronizers</tt> is <tt>true</tt> but
	*               the Java virtual machine does not support monitoring
	*               of {@linkplain #isSynchronizerUsageSupported
	*               ownable synchronizer usage}.</li>
	*         </ul>
	*
	* @see #isObjectMonitorUsageSupported
	* @see #isSynchronizerUsageSupported
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getThreadInfo(ids : java.NativeArray<haxe.Int64>, lockedMonitors : Bool, lockedSynchronizers : Bool) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	/**
	* Returns the thread info for all live threads with stack trace
	* and synchronization information.
	* Some threads included in the returned array
	* may have been terminated when this method returns.
	*
	* <p>
	* This method returns an array of {@link ThreadInfo} objects
	* as specified in the {@link #getThreadInfo(long[], boolean, boolean)}
	* method.
	*
	* @param  lockedMonitors if <tt>true</tt>, dump all locked monitors.
	* @param  lockedSynchronizers if <tt>true</tt>, dump all locked
	*             ownable synchronizers.
	*
	* @return an array of {@link ThreadInfo} for all live threads.
	*
	* @throws java.lang.SecurityException if a security manager
	*         exists and the caller does not have
	*         ManagementPermission("monitor").
	* @throws java.lang.UnsupportedOperationException
	*         <ul>
	*           <li>if <tt>lockedMonitors</tt> is <tt>true</tt> but
	*               the Java virtual machine does not support monitoring
	*               of {@linkplain #isObjectMonitorUsageSupported
	*               object monitor usage}; or</li>
	*           <li>if <tt>lockedSynchronizers</tt> is <tt>true</tt> but
	*               the Java virtual machine does not support monitoring
	*               of {@linkplain #isSynchronizerUsageSupported
	*               ownable synchronizer usage}.</li>
	*         </ul>
	*
	* @see #isObjectMonitorUsageSupported
	* @see #isSynchronizerUsageSupported
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function dumpAllThreads(lockedMonitors : Bool, lockedSynchronizers : Bool) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	
}
