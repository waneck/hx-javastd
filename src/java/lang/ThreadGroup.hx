package java.lang;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ThreadGroup implements java.lang.Thread.Thread_UncaughtExceptionHandler
{
	/**
	* Constructs a new thread group. The parent of this new group is
	* the thread group of the currently running thread.
	* <p>
	* The <code>checkAccess</code> method of the parent thread group is
	* called with no arguments; this may result in a security exception.
	*
	* @param   name   the name of the new thread group.
	* @exception  SecurityException  if the current thread cannot create a
	*               thread in the specified thread group.
	* @see     java.lang.ThreadGroup#checkAccess()
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function new(name : String) : Void;
	
	/**
	* Creates a new thread group. The parent of this new group is the
	* specified thread group.
	* <p>
	* The <code>checkAccess</code> method of the parent thread group is
	* called with no arguments; this may result in a security exception.
	*
	* @param     parent   the parent thread group.
	* @param     name     the name of the new thread group.
	* @exception  NullPointerException  if the thread group argument is
	*               <code>null</code>.
	* @exception  SecurityException  if the current thread cannot create a
	*               thread in the specified thread group.
	* @see     java.lang.SecurityException
	* @see     java.lang.ThreadGroup#checkAccess()
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function new(parent : java.lang.ThreadGroup, name : String) : Void;
	
	/**
	* Returns the name of this thread group.
	*
	* @return  the name of this thread group.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:final public function getName() : String;
	
	/**
	* Returns the parent of this thread group.
	* <p>
	* First, if the parent is not <code>null</code>, the
	* <code>checkAccess</code> method of the parent thread group is
	* called with no arguments; this may result in a security exception.
	*
	* @return  the parent of this thread group. The top-level thread group
	*          is the only thread group whose parent is <code>null</code>.
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread group.
	* @see        java.lang.ThreadGroup#checkAccess()
	* @see        java.lang.SecurityException
	* @see        java.lang.RuntimePermission
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:final public function getParent() : java.lang.ThreadGroup;
	
	/**
	* Returns the maximum priority of this thread group. Threads that are
	* part of this group cannot have a higher priority than the maximum
	* priority.
	*
	* @return  the maximum priority that a thread in this thread group
	*          can have.
	* @see     #setMaxPriority
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:final public function getMaxPriority() : Int;
	
	/**
	* Tests if this thread group is a daemon thread group. A
	* daemon thread group is automatically destroyed when its last
	* thread is stopped or its last thread group is destroyed.
	*
	* @return  <code>true</code> if this thread group is a daemon thread group;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:final public function isDaemon() : Bool;
	
	/**
	* Tests if this thread group has been destroyed.
	*
	* @return  true if this object is destroyed
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function isDestroyed() : Bool;
	
	/**
	* Changes the daemon status of this thread group.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* A daemon thread group is automatically destroyed when its last
	* thread is stopped or its last thread group is destroyed.
	*
	* @param      daemon   if <code>true</code>, marks this thread group as
	*                      a daemon thread group; otherwise, marks this
	*                      thread group as normal.
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread group.
	* @see        java.lang.SecurityException
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:final public function setDaemon(daemon : Bool) : Void;
	
	/**
	* Sets the maximum priority of the group. Threads in the thread
	* group that already have a higher priority are not affected.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* If the <code>pri</code> argument is less than
	* {@link Thread#MIN_PRIORITY} or greater than
	* {@link Thread#MAX_PRIORITY}, the maximum priority of the group
	* remains unchanged.
	* <p>
	* Otherwise, the priority of this ThreadGroup object is set to the
	* smaller of the specified <code>pri</code> and the maximum permitted
	* priority of the parent of this thread group. (If this thread group
	* is the system thread group, which has no parent, then its maximum
	* priority is simply set to <code>pri</code>.) Then this method is
	* called recursively, with <code>pri</code> as its argument, for
	* every thread group that belongs to this thread group.
	*
	* @param      pri   the new priority of the thread group.
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread group.
	* @see        #getMaxPriority
	* @see        java.lang.SecurityException
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:final public function setMaxPriority(pri : Int) : Void;
	
	/**
	* Tests if this thread group is either the thread group
	* argument or one of its ancestor thread groups.
	*
	* @param   g   a thread group.
	* @return  <code>true</code> if this thread group is the thread group
	*          argument or one of its ancestor thread groups;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:final public function parentOf(g : java.lang.ThreadGroup) : Bool;
	
	/**
	* Determines if the currently running thread has permission to
	* modify this thread group.
	* <p>
	* If there is a security manager, its <code>checkAccess</code> method
	* is called with this thread group as its argument. This may result
	* in throwing a <code>SecurityException</code>.
	*
	* @exception  SecurityException  if the current thread is not allowed to
	*               access this thread group.
	* @see        java.lang.SecurityManager#checkAccess(java.lang.ThreadGroup)
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:final public function checkAccess() : Void;
	
	/**
	* Returns an estimate of the number of active threads in this thread
	* group and its subgroups. Recursively iterates over all subgroups in
	* this thread group.
	*
	* <p> The value returned is only an estimate because the number of
	* threads may change dynamically while this method traverses internal
	* data structures, and might be affected by the presence of certain
	* system threads. This method is intended primarily for debugging
	* and monitoring purposes.
	*
	* @return  an estimate of the number of active threads in this thread
	*          group and in any other thread group that has this thread
	*          group as an ancestor
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function activeCount() : Int;
	
	/**
	* Copies into the specified array every active thread in this
	* thread group and its subgroups.
	*
	* <p> An invocation of this method behaves in exactly the same
	* way as the invocation
	*
	* <blockquote>
	* {@linkplain #enumerate(Thread[], boolean) enumerate}{@code (list, true)}
	* </blockquote>
	*
	* @param  list
	*         an array into which to put the list of threads
	*
	* @return  the number of threads put into the array
	*
	* @throws  SecurityException
	*          if {@linkplain #checkAccess checkAccess} determines that
	*          the current thread cannot access this thread group
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function enumerate(list : java.NativeArray<java.lang.Thread>) : Int;
	
	/**
	* Copies into the specified array every active thread in this
	* thread group. If {@code recurse} is {@code true},
	* this method recursively enumerates all subgroups of this
	* thread group and references to every active thread in these
	* subgroups are also included. If the array is too short to
	* hold all the threads, the extra threads are silently ignored.
	*
	* <p> An application might use the {@linkplain #activeCount activeCount}
	* method to get an estimate of how big the array should be, however
	* <i>if the array is too short to hold all the threads, the extra threads
	* are silently ignored.</i>  If it is critical to obtain every active
	* thread in this thread group, the caller should verify that the returned
	* int value is strictly less than the length of {@code list}.
	*
	* <p> Due to the inherent race condition in this method, it is recommended
	* that the method only be used for debugging and monitoring purposes.
	*
	* @param  list
	*         an array into which to put the list of threads
	*
	* @param  recurse
	*         if {@code true}, recursively enumerate all subgroups of this
	*         thread group
	*
	* @return  the number of threads put into the array
	*
	* @throws  SecurityException
	*          if {@linkplain #checkAccess checkAccess} determines that
	*          the current thread cannot access this thread group
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function enumerate(list : java.NativeArray<java.lang.Thread>, recurse : Bool) : Int;
	
	/**
	* Returns an estimate of the number of active groups in this
	* thread group and its subgroups. Recursively iterates over
	* all subgroups in this thread group.
	*
	* <p> The value returned is only an estimate because the number of
	* thread groups may change dynamically while this method traverses
	* internal data structures. This method is intended primarily for
	* debugging and monitoring purposes.
	*
	* @return  the number of active thread groups with this thread group as
	*          an ancestor
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function activeGroupCount() : Int;
	
	/**
	* Copies into the specified array references to every active
	* subgroup in this thread group and its subgroups.
	*
	* <p> An invocation of this method behaves in exactly the same
	* way as the invocation
	*
	* <blockquote>
	* {@linkplain #enumerate(ThreadGroup[], boolean) enumerate}{@code (list, true)}
	* </blockquote>
	*
	* @param  list
	*         an array into which to put the list of thread groups
	*
	* @return  the number of thread groups put into the array
	*
	* @throws  SecurityException
	*          if {@linkplain #checkAccess checkAccess} determines that
	*          the current thread cannot access this thread group
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function enumerate(list : java.NativeArray<java.lang.ThreadGroup>) : Int;
	
	/**
	* Copies into the specified array references to every active
	* subgroup in this thread group. If {@code recurse} is
	* {@code true}, this method recursively enumerates all subgroups of this
	* thread group and references to every active thread group in these
	* subgroups are also included.
	*
	* <p> An application might use the
	* {@linkplain #activeGroupCount activeGroupCount} method to
	* get an estimate of how big the array should be, however <i>if the
	* array is too short to hold all the thread groups, the extra thread
	* groups are silently ignored.</i>  If it is critical to obtain every
	* active subgroup in this thread group, the caller should verify that
	* the returned int value is strictly less than the length of
	* {@code list}.
	*
	* <p> Due to the inherent race condition in this method, it is recommended
	* that the method only be used for debugging and monitoring purposes.
	*
	* @param  list
	*         an array into which to put the list of thread groups
	*
	* @param  recurse
	*         if {@code true}, recursively enumerate all subgroups
	*
	* @return  the number of thread groups put into the array
	*
	* @throws  SecurityException
	*          if {@linkplain #checkAccess checkAccess} determines that
	*          the current thread cannot access this thread group
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function enumerate(list : java.NativeArray<java.lang.ThreadGroup>, recurse : Bool) : Int;
	
	/**
	* Stops all threads in this thread group.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* This method then calls the <code>stop</code> method on all the
	* threads in this thread group and in all of its subgroups.
	*
	* @exception  SecurityException  if the current thread is not allowed
	*               to access this thread group or any of the threads in
	*               the thread group.
	* @see        java.lang.SecurityException
	* @see        java.lang.Thread#stop()
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	* @deprecated    This method is inherently unsafe.  See
	*     {@link Thread#stop} for details.
	*/
	@:require(java0) @:overload @:final public function stop() : Void;
	
	/**
	* Interrupts all threads in this thread group.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* This method then calls the <code>interrupt</code> method on all the
	* threads in this thread group and in all of its subgroups.
	*
	* @exception  SecurityException  if the current thread is not allowed
	*               to access this thread group or any of the threads in
	*               the thread group.
	* @see        java.lang.Thread#interrupt()
	* @see        java.lang.SecurityException
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      1.2
	*/
	@:require(java2) @:overload @:final public function interrupt() : Void;
	
	/**
	* Suspends all threads in this thread group.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* This method then calls the <code>suspend</code> method on all the
	* threads in this thread group and in all of its subgroups.
	*
	* @exception  SecurityException  if the current thread is not allowed
	*               to access this thread group or any of the threads in
	*               the thread group.
	* @see        java.lang.Thread#suspend()
	* @see        java.lang.SecurityException
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	* @deprecated    This method is inherently deadlock-prone.  See
	*     {@link Thread#suspend} for details.
	*/
	@:require(java0) @:overload @:final public function suspend() : Void;
	
	/**
	* Resumes all threads in this thread group.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	* <p>
	* This method then calls the <code>resume</code> method on all the
	* threads in this thread group and in all of its sub groups.
	*
	* @exception  SecurityException  if the current thread is not allowed to
	*               access this thread group or any of the threads in the
	*               thread group.
	* @see        java.lang.SecurityException
	* @see        java.lang.Thread#resume()
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	* @deprecated    This method is used solely in conjunction with
	*      <tt>Thread.suspend</tt> and <tt>ThreadGroup.suspend</tt>,
	*       both of which have been deprecated, as they are inherently
	*       deadlock-prone.  See {@link Thread#suspend} for details.
	*/
	@:require(java0) @:overload @:final public function resume() : Void;
	
	/**
	* Destroys this thread group and all of its subgroups. This thread
	* group must be empty, indicating that all threads that had been in
	* this thread group have since stopped.
	* <p>
	* First, the <code>checkAccess</code> method of this thread group is
	* called with no arguments; this may result in a security exception.
	*
	* @exception  IllegalThreadStateException  if the thread group is not
	*               empty or if the thread group has already been destroyed.
	* @exception  SecurityException  if the current thread cannot modify this
	*               thread group.
	* @see        java.lang.ThreadGroup#checkAccess()
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:final public function destroy() : Void;
	
	/**
	* Prints information about this thread group to the standard
	* output. This method is useful only for debugging.
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function list() : Void;
	
	/**
	* Called by the Java Virtual Machine when a thread in this
	* thread group stops because of an uncaught exception, and the thread
	* does not have a specific {@link Thread.UncaughtExceptionHandler}
	* installed.
	* <p>
	* The <code>uncaughtException</code> method of
	* <code>ThreadGroup</code> does the following:
	* <ul>
	* <li>If this thread group has a parent thread group, the
	*     <code>uncaughtException</code> method of that parent is called
	*     with the same two arguments.
	* <li>Otherwise, this method checks to see if there is a
	*     {@linkplain Thread#getDefaultUncaughtExceptionHandler default
	*     uncaught exception handler} installed, and if so, its
	*     <code>uncaughtException</code> method is called with the same
	*     two arguments.
	* <li>Otherwise, this method determines if the <code>Throwable</code>
	*     argument is an instance of {@link ThreadDeath}. If so, nothing
	*     special is done. Otherwise, a message containing the
	*     thread's name, as returned from the thread's {@link
	*     Thread#getName getName} method, and a stack backtrace,
	*     using the <code>Throwable</code>'s {@link
	*     Throwable#printStackTrace printStackTrace} method, is
	*     printed to the {@linkplain System#err standard error stream}.
	* </ul>
	* <p>
	* Applications can override this method in subclasses of
	* <code>ThreadGroup</code> to provide alternative handling of
	* uncaught exceptions.
	*
	* @param   t   the thread that is about to exit.
	* @param   e   the uncaught exception.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function uncaughtException(t : java.lang.Thread, e : java.lang.Throwable) : Void;
	
	/**
	* Used by VM to control lowmem implicit suspension.
	*
	* @param b boolean to allow or disallow suspension
	* @return true on success
	* @since   JDK1.1
	* @deprecated The definition of this call depends on {@link #suspend},
	*             which is deprecated.  Further, the behavior of this call
	*             was never specified.
	*/
	@:require(java1) @:overload public function allowThreadSuspension(b : Bool) : Bool;
	
	/**
	* Returns a string representation of this Thread group.
	*
	* @return  a string representation of this thread group.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function toString() : String;
	
	
}
