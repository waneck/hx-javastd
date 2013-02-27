package java.lang;
/*
* Copyright (c) 1994, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Thread implements java.lang.Runnable
{
	/**
	* The minimum priority that a thread can have.
	*/
	public static var MIN_PRIORITY(default, null) : Int;
	
	/**
	* The default priority that is assigned to a thread.
	*/
	public static var NORM_PRIORITY(default, null) : Int;
	
	/**
	* The maximum priority that a thread can have.
	*/
	public static var MAX_PRIORITY(default, null) : Int;
	
	/**
	* Returns a reference to the currently executing thread object.
	*
	* @return  the currently executing thread.
	*/
	@:overload @:native public static function currentThread() : Thread;
	
	/**
	* A hint to the scheduler that the current thread is willing to yield
	* its current use of a processor. The scheduler is free to ignore this
	* hint.
	*
	* <p> Yield is a heuristic attempt to improve relative progression
	* between threads that would otherwise over-utilise a CPU. Its use
	* should be combined with detailed profiling and benchmarking to
	* ensure that it actually has the desired effect.
	*
	* <p> It is rarely appropriate to use this method. It may be useful
	* for debugging or testing purposes, where it may help to reproduce
	* bugs due to race conditions. It may also be useful when designing
	* concurrency control constructs such as the ones in the
	* {@link java.util.concurrent.locks} package.
	*/
	@:overload @:native public static function yield() : Void;
	
	/**
	* Causes the currently executing thread to sleep (temporarily cease
	* execution) for the specified number of milliseconds, subject to
	* the precision and accuracy of system timers and schedulers. The thread
	* does not lose ownership of any monitors.
	*
	* @param  millis
	*         the length of time to sleep in milliseconds
	*
	* @throws  IllegalArgumentException
	*          if the value of {@code millis} is negative
	*
	* @throws  InterruptedException
	*          if any thread has interrupted the current thread. The
	*          <i>interrupted status</i> of the current thread is
	*          cleared when this exception is thrown.
	*/
	@:overload @:native public static function sleep(millis : haxe.Int64) : Void;
	
	/**
	* Causes the currently executing thread to sleep (temporarily cease
	* execution) for the specified number of milliseconds plus the specified
	* number of nanoseconds, subject to the precision and accuracy of system
	* timers and schedulers. The thread does not lose ownership of any
	* monitors.
	*
	* @param  millis
	*         the length of time to sleep in milliseconds
	*
	* @param  nanos
	*         {@code 0-999999} additional nanoseconds to sleep
	*
	* @throws  IllegalArgumentException
	*          if the value of {@code millis} is negative, or the value of
	*          {@code nanos} is not in the range {@code 0-999999}
	*
	* @throws  InterruptedException
	*          if any thread has interrupted the current thread. The
	*          <i>interrupted status</i> of the current thread is
	*          cleared when this exception is thrown.
	*/
	@:overload public static function sleep(millis : haxe.Int64, nanos : Int) : Void;
	
	/**
	* Throws CloneNotSupportedException as a Thread can not be meaningfully
	* cloned. Construct a new Thread instead.
	*
	* @throws  CloneNotSupportedException
	*          always
	*/
	@:overload private function clone() : Dynamic;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (null, null, gname)}, where {@code gname} is a newly generated
	* name. Automatically generated names are of the form
	* {@code "Thread-"+}<i>n</i>, where <i>n</i> is an integer.
	*/
	@:overload public function new() : Void;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (null, target, gname)}, where {@code gname} is a newly generated
	* name. Automatically generated names are of the form
	* {@code "Thread-"+}<i>n</i>, where <i>n</i> is an integer.
	*
	* @param  target
	*         the object whose {@code run} method is invoked when this thread
	*         is started. If {@code null}, this classes {@code run} method does
	*         nothing.
	*/
	@:overload public function new(target : java.lang.Runnable) : Void;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (group, target, gname)} ,where {@code gname} is a newly generated
	* name. Automatically generated names are of the form
	* {@code "Thread-"+}<i>n</i>, where <i>n</i> is an integer.
	*
	* @param  group
	*         the thread group. If {@code null} and there is a security
	*         manager, the group is determined by {@linkplain
	*         SecurityManager#getThreadGroup SecurityManager.getThreadGroup()}.
	*         If there is not a security manager or {@code
	*         SecurityManager.getThreadGroup()} returns {@code null}, the group
	*         is set to the current thread's thread group.
	*
	* @param  target
	*         the object whose {@code run} method is invoked when this thread
	*         is started. If {@code null}, this thread's run method is invoked.
	*
	* @throws  SecurityException
	*          if the current thread cannot create a thread in the specified
	*          thread group
	*/
	@:overload public function new(group : java.lang.ThreadGroup, target : java.lang.Runnable) : Void;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (null, null, name)}.
	*
	* @param   name
	*          the name of the new thread
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (group, null, name)}.
	*
	* @param  group
	*         the thread group. If {@code null} and there is a security
	*         manager, the group is determined by {@linkplain
	*         SecurityManager#getThreadGroup SecurityManager.getThreadGroup()}.
	*         If there is not a security manager or {@code
	*         SecurityManager.getThreadGroup()} returns {@code null}, the group
	*         is set to the current thread's thread group.
	*
	* @param  name
	*         the name of the new thread
	*
	* @throws  SecurityException
	*          if the current thread cannot create a thread in the specified
	*          thread group
	*/
	@:overload public function new(group : java.lang.ThreadGroup, name : String) : Void;
	
	/**
	* Allocates a new {@code Thread} object. This constructor has the same
	* effect as {@linkplain #Thread(ThreadGroup,Runnable,String) Thread}
	* {@code (null, target, name)}.
	*
	* @param  target
	*         the object whose {@code run} method is invoked when this thread
	*         is started. If {@code null}, this thread's run method is invoked.
	*
	* @param  name
	*         the name of the new thread
	*/
	@:overload public function new(target : java.lang.Runnable, name : String) : Void;
	
	/**
	* Allocates a new {@code Thread} object so that it has {@code target}
	* as its run object, has the specified {@code name} as its name,
	* and belongs to the thread group referred to by {@code group}.
	*
	* <p>If there is a security manager, its
	* {@link SecurityManager#checkAccess(ThreadGroup) checkAccess}
	* method is invoked with the ThreadGroup as its argument.
	*
	* <p>In addition, its {@code checkPermission} method is invoked with
	* the {@code RuntimePermission("enableContextClassLoaderOverride")}
	* permission when invoked directly or indirectly by the constructor
	* of a subclass which overrides the {@code getContextClassLoader}
	* or {@code setContextClassLoader} methods.
	*
	* <p>The priority of the newly created thread is set equal to the
	* priority of the thread creating it, that is, the currently running
	* thread. The method {@linkplain #setPriority setPriority} may be
	* used to change the priority to a new value.
	*
	* <p>The newly created thread is initially marked as being a daemon
	* thread if and only if the thread creating it is currently marked
	* as a daemon thread. The method {@linkplain #setDaemon setDaemon}
	* may be used to change whether or not a thread is a daemon.
	*
	* @param  group
	*         the thread group. If {@code null} and there is a security
	*         manager, the group is determined by {@linkplain
	*         SecurityManager#getThreadGroup SecurityManager.getThreadGroup()}.
	*         If there is not a security manager or {@code
	*         SecurityManager.getThreadGroup()} returns {@code null}, the group
	*         is set to the current thread's thread group.
	*
	* @param  target
	*         the object whose {@code run} method is invoked when this thread
	*         is started. If {@code null}, this thread's run method is invoked.
	*
	* @param  name
	*         the name of the new thread
	*
	* @throws  SecurityException
	*          if the current thread cannot create a thread in the specified
	*          thread group or cannot override the context class loader methods.
	*/
	@:overload public function new(group : java.lang.ThreadGroup, target : java.lang.Runnable, name : String) : Void;
	
	/**
	* Allocates a new {@code Thread} object so that it has {@code target}
	* as its run object, has the specified {@code name} as its name,
	* and belongs to the thread group referred to by {@code group}, and has
	* the specified <i>stack size</i>.
	*
	* <p>This constructor is identical to {@link
	* #Thread(ThreadGroup,Runnable,String)} with the exception of the fact
	* that it allows the thread stack size to be specified.  The stack size
	* is the approximate number of bytes of address space that the virtual
	* machine is to allocate for this thread's stack.  <b>The effect of the
	* {@code stackSize} parameter, if any, is highly platform dependent.</b>
	*
	* <p>On some platforms, specifying a higher value for the
	* {@code stackSize} parameter may allow a thread to achieve greater
	* recursion depth before throwing a {@link StackOverflowError}.
	* Similarly, specifying a lower value may allow a greater number of
	* threads to exist concurrently without throwing an {@link
	* OutOfMemoryError} (or other internal error).  The details of
	* the relationship between the value of the <tt>stackSize</tt> parameter
	* and the maximum recursion depth and concurrency level are
	* platform-dependent.  <b>On some platforms, the value of the
	* {@code stackSize} parameter may have no effect whatsoever.</b>
	*
	* <p>The virtual machine is free to treat the {@code stackSize}
	* parameter as a suggestion.  If the specified value is unreasonably low
	* for the platform, the virtual machine may instead use some
	* platform-specific minimum value; if the specified value is unreasonably
	* high, the virtual machine may instead use some platform-specific
	* maximum.  Likewise, the virtual machine is free to round the specified
	* value up or down as it sees fit (or to ignore it completely).
	*
	* <p>Specifying a value of zero for the {@code stackSize} parameter will
	* cause this constructor to behave exactly like the
	* {@code Thread(ThreadGroup, Runnable, String)} constructor.
	*
	* <p><i>Due to the platform-dependent nature of the behavior of this
	* constructor, extreme care should be exercised in its use.
	* The thread stack size necessary to perform a given computation will
	* likely vary from one JRE implementation to another.  In light of this
	* variation, careful tuning of the stack size parameter may be required,
	* and the tuning may need to be repeated for each JRE implementation on
	* which an application is to run.</i>
	*
	* <p>Implementation note: Java platform implementers are encouraged to
	* document their implementation's behavior with respect to the
	* {@code stackSize} parameter.
	*
	*
	* @param  group
	*         the thread group. If {@code null} and there is a security
	*         manager, the group is determined by {@linkplain
	*         SecurityManager#getThreadGroup SecurityManager.getThreadGroup()}.
	*         If there is not a security manager or {@code
	*         SecurityManager.getThreadGroup()} returns {@code null}, the group
	*         is set to the current thread's thread group.
	*
	* @param  target
	*         the object whose {@code run} method is invoked when this thread
	*         is started. If {@code null}, this thread's run method is invoked.
	*
	* @param  name
	*         the name of the new thread
	*
	* @param  stackSize
	*         the desired stack size for the new thread, or zero to indicate
	*         that this parameter is to be ignored.
	*
	* @throws  SecurityException
	*          if the current thread cannot create a thread in the specified
	*          thread group
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(group : java.lang.ThreadGroup, target : java.lang.Runnable, name : String, stackSize : haxe.Int64) : Void;
	
	/**
	* Causes this thread to begin execution; the Java Virtual Machine
	* calls the <code>run</code> method of this thread.
	* <p>
	* The result is that two threads are running concurrently: the
	* current thread (which returns from the call to the
	* <code>start</code> method) and the other thread (which executes its
	* <code>run</code> method).
	* <p>
	* It is never legal to start a thread more than once.
	* In particular, a thread may not be restarted once it has completed
	* execution.
	*
	* @exception  IllegalThreadStateException  if the thread was already
	*               started.
	* @see        #run()
	* @see        #stop()
	*/
	@:overload @:synchronized public function start() : Void;
	
	/**
	* If this thread was constructed using a separate
	* <code>Runnable</code> run object, then that
	* <code>Runnable</code> object's <code>run</code> method is called;
	* otherwise, this method does nothing and returns.
	* <p>
	* Subclasses of <code>Thread</code> should override this method.
	*
	* @see     #start()
	* @see     #stop()
	* @see     #Thread(ThreadGroup, Runnable, String)
	*/
	@:overload public function run() : Void;
	
	/**
	* Forces the thread to stop executing.
	* <p>
	* If there is a security manager installed, its <code>checkAccess</code>
	* method is called with <code>this</code>
	* as its argument. This may result in a
	* <code>SecurityException</code> being raised (in the current thread).
	* <p>
	* If this thread is different from the current thread (that is, the current
	* thread is trying to stop a thread other than itself), the
	* security manager's <code>checkPermission</code> method (with a
	* <code>RuntimePermission("stopThread")</code> argument) is called in
	* addition.
	* Again, this may result in throwing a
	* <code>SecurityException</code> (in the current thread).
	* <p>
	* The thread represented by this thread is forced to stop whatever
	* it is doing abnormally and to throw a newly created
	* <code>ThreadDeath</code> object as an exception.
	* <p>
	* It is permitted to stop a thread that has not yet been started.
	* If the thread is eventually started, it immediately terminates.
	* <p>
	* An application should not normally try to catch
	* <code>ThreadDeath</code> unless it must do some extraordinary
	* cleanup operation (note that the throwing of
	* <code>ThreadDeath</code> causes <code>finally</code> clauses of
	* <code>try</code> statements to be executed before the thread
	* officially dies).  If a <code>catch</code> clause catches a
	* <code>ThreadDeath</code> object, it is important to rethrow the
	* object so that the thread actually dies.
	* <p>
	* The top-level error handler that reacts to otherwise uncaught
	* exceptions does not print out a message or otherwise notify the
	* application if the uncaught exception is an instance of
	* <code>ThreadDeath</code>.
	*
	* @exception  SecurityException  if the current thread cannot
	*               modify this thread.
	* @see        #interrupt()
	* @see        #checkAccess()
	* @see        #run()
	* @see        #start()
	* @see        ThreadDeath
	* @see        ThreadGroup#uncaughtException(Thread,Throwable)
	* @see        SecurityManager#checkAccess(Thread)
	* @see        SecurityManager#checkPermission
	* @deprecated This method is inherently unsafe.  Stopping a thread with
	*       Thread.stop causes it to unlock all of the monitors that it
	*       has locked (as a natural consequence of the unchecked
	*       <code>ThreadDeath</code> exception propagating up the stack).  If
	*       any of the objects previously protected by these monitors were in
	*       an inconsistent state, the damaged objects become visible to
	*       other threads, potentially resulting in arbitrary behavior.  Many
	*       uses of <code>stop</code> should be replaced by code that simply
	*       modifies some variable to indicate that the target thread should
	*       stop running.  The target thread should check this variable
	*       regularly, and return from its run method in an orderly fashion
	*       if the variable indicates that it is to stop running.  If the
	*       target thread waits for long periods (on a condition variable,
	*       for example), the <code>interrupt</code> method should be used to
	*       interrupt the wait.
	*       For more information, see
	*       <a href="{@docRoot}/../technotes/guides/concurrency/threadPrimitiveDeprecation.html">Why
	*       are Thread.stop, Thread.suspend and Thread.resume Deprecated?</a>.
	*/
	@:overload @:final public function stop() : Void;
	
	/**
	* Forces the thread to stop executing.
	* <p>
	* If there is a security manager installed, the <code>checkAccess</code>
	* method of this thread is called, which may result in a
	* <code>SecurityException</code> being raised (in the current thread).
	* <p>
	* If this thread is different from the current thread (that is, the current
	* thread is trying to stop a thread other than itself) or
	* <code>obj</code> is not an instance of <code>ThreadDeath</code>, the
	* security manager's <code>checkPermission</code> method (with the
	* <code>RuntimePermission("stopThread")</code> argument) is called in
	* addition.
	* Again, this may result in throwing a
	* <code>SecurityException</code> (in the current thread).
	* <p>
	* If the argument <code>obj</code> is null, a
	* <code>NullPointerException</code> is thrown (in the current thread).
	* <p>
	* The thread represented by this thread is forced to stop
	* whatever it is doing abnormally and to throw the
	* <code>Throwable</code> object <code>obj</code> as an exception. This
	* is an unusual action to take; normally, the <code>stop</code> method
	* that takes no arguments should be used.
	* <p>
	* It is permitted to stop a thread that has not yet been started.
	* If the thread is eventually started, it immediately terminates.
	*
	* @param      obj   the Throwable object to be thrown.
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread.
	* @throws     NullPointerException if obj is <tt>null</tt>.
	* @see        #interrupt()
	* @see        #checkAccess()
	* @see        #run()
	* @see        #start()
	* @see        #stop()
	* @see        SecurityManager#checkAccess(Thread)
	* @see        SecurityManager#checkPermission
	* @deprecated This method is inherently unsafe.  See {@link #stop()}
	*        for details.  An additional danger of this
	*        method is that it may be used to generate exceptions that the
	*        target thread is unprepared to handle (including checked
	*        exceptions that the thread could not possibly throw, were it
	*        not for this method).
	*        For more information, see
	*        <a href="{@docRoot}/../technotes/guides/concurrency/threadPrimitiveDeprecation.html">Why
	*        are Thread.stop, Thread.suspend and Thread.resume Deprecated?</a>.
	*/
	@:overload @:final @:synchronized public function stop(obj : java.lang.Throwable) : Void;
	
	/**
	* Interrupts this thread.
	*
	* <p> Unless the current thread is interrupting itself, which is
	* always permitted, the {@link #checkAccess() checkAccess} method
	* of this thread is invoked, which may cause a {@link
	* SecurityException} to be thrown.
	*
	* <p> If this thread is blocked in an invocation of the {@link
	* Object#wait() wait()}, {@link Object#wait(long) wait(long)}, or {@link
	* Object#wait(long, int) wait(long, int)} methods of the {@link Object}
	* class, or of the {@link #join()}, {@link #join(long)}, {@link
	* #join(long, int)}, {@link #sleep(long)}, or {@link #sleep(long, int)},
	* methods of this class, then its interrupt status will be cleared and it
	* will receive an {@link InterruptedException}.
	*
	* <p> If this thread is blocked in an I/O operation upon an {@link
	* java.nio.channels.InterruptibleChannel </code>interruptible
	* channel<code>} then the channel will be closed, the thread's interrupt
	* status will be set, and the thread will receive a {@link
	* java.nio.channels.ClosedByInterruptException}.
	*
	* <p> If this thread is blocked in a {@link java.nio.channels.Selector}
	* then the thread's interrupt status will be set and it will return
	* immediately from the selection operation, possibly with a non-zero
	* value, just as if the selector's {@link
	* java.nio.channels.Selector#wakeup wakeup} method were invoked.
	*
	* <p> If none of the previous conditions hold then this thread's interrupt
	* status will be set. </p>
	*
	* <p> Interrupting a thread that is not alive need not have any effect.
	*
	* @throws  SecurityException
	*          if the current thread cannot modify this thread
	*
	* @revised 6.0
	* @spec JSR-51
	*/
	@:overload public function interrupt() : Void;
	
	/**
	* Tests whether the current thread has been interrupted.  The
	* <i>interrupted status</i> of the thread is cleared by this method.  In
	* other words, if this method were to be called twice in succession, the
	* second call would return false (unless the current thread were
	* interrupted again, after the first call had cleared its interrupted
	* status and before the second call had examined it).
	*
	* <p>A thread interruption ignored because a thread was not alive
	* at the time of the interrupt will be reflected by this method
	* returning false.
	*
	* @return  <code>true</code> if the current thread has been interrupted;
	*          <code>false</code> otherwise.
	* @see #isInterrupted()
	* @revised 6.0
	*/
	@:overload public static function interrupted() : Bool;
	
	/**
	* Tests whether this thread has been interrupted.  The <i>interrupted
	* status</i> of the thread is unaffected by this method.
	*
	* <p>A thread interruption ignored because a thread was not alive
	* at the time of the interrupt will be reflected by this method
	* returning false.
	*
	* @return  <code>true</code> if this thread has been interrupted;
	*          <code>false</code> otherwise.
	* @see     #interrupted()
	* @revised 6.0
	*/
	@:overload public function isInterrupted() : Bool;
	
	/**
	* Throws {@link NoSuchMethodError}.
	*
	* @deprecated This method was originally designed to destroy this
	*     thread without any cleanup. Any monitors it held would have
	*     remained locked. However, the method was never implemented.
	*     If if were to be implemented, it would be deadlock-prone in
	*     much the manner of {@link #suspend}. If the target thread held
	*     a lock protecting a critical system resource when it was
	*     destroyed, no thread could ever access this resource again.
	*     If another thread ever attempted to lock this resource, deadlock
	*     would result. Such deadlocks typically manifest themselves as
	*     "frozen" processes. For more information, see
	*     <a href="{@docRoot}/../technotes/guides/concurrency/threadPrimitiveDeprecation.html">
	*     Why are Thread.stop, Thread.suspend and Thread.resume Deprecated?</a>.
	* @throws NoSuchMethodError always
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Tests if this thread is alive. A thread is alive if it has
	* been started and has not yet died.
	*
	* @return  <code>true</code> if this thread is alive;
	*          <code>false</code> otherwise.
	*/
	@:overload @:final @:native public function isAlive() : Bool;
	
	/**
	* Suspends this thread.
	* <p>
	* First, the <code>checkAccess</code> method of this thread is called
	* with no arguments. This may result in throwing a
	* <code>SecurityException </code>(in the current thread).
	* <p>
	* If the thread is alive, it is suspended and makes no further
	* progress unless and until it is resumed.
	*
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread.
	* @see #checkAccess
	* @deprecated   This method has been deprecated, as it is
	*   inherently deadlock-prone.  If the target thread holds a lock on the
	*   monitor protecting a critical system resource when it is suspended, no
	*   thread can access this resource until the target thread is resumed. If
	*   the thread that would resume the target thread attempts to lock this
	*   monitor prior to calling <code>resume</code>, deadlock results.  Such
	*   deadlocks typically manifest themselves as "frozen" processes.
	*   For more information, see
	*   <a href="{@docRoot}/../technotes/guides/concurrency/threadPrimitiveDeprecation.html">Why
	*   are Thread.stop, Thread.suspend and Thread.resume Deprecated?</a>.
	*/
	@:overload @:final public function suspend() : Void;
	
	/**
	* Resumes a suspended thread.
	* <p>
	* First, the <code>checkAccess</code> method of this thread is called
	* with no arguments. This may result in throwing a
	* <code>SecurityException</code> (in the current thread).
	* <p>
	* If the thread is alive but suspended, it is resumed and is
	* permitted to make progress in its execution.
	*
	* @exception  SecurityException  if the current thread cannot modify this
	*               thread.
	* @see        #checkAccess
	* @see        #suspend()
	* @deprecated This method exists solely for use with {@link #suspend},
	*     which has been deprecated because it is deadlock-prone.
	*     For more information, see
	*     <a href="{@docRoot}/../technotes/guides/concurrency/threadPrimitiveDeprecation.html">Why
	*     are Thread.stop, Thread.suspend and Thread.resume Deprecated?</a>.
	*/
	@:overload @:final public function resume() : Void;
	
	/**
	* Changes the priority of this thread.
	* <p>
	* First the <code>checkAccess</code> method of this thread is called
	* with no arguments. This may result in throwing a
	* <code>SecurityException</code>.
	* <p>
	* Otherwise, the priority of this thread is set to the smaller of
	* the specified <code>newPriority</code> and the maximum permitted
	* priority of the thread's thread group.
	*
	* @param newPriority priority to set this thread to
	* @exception  IllegalArgumentException  If the priority is not in the
	*               range <code>MIN_PRIORITY</code> to
	*               <code>MAX_PRIORITY</code>.
	* @exception  SecurityException  if the current thread cannot modify
	*               this thread.
	* @see        #getPriority
	* @see        #checkAccess()
	* @see        #getThreadGroup()
	* @see        #MAX_PRIORITY
	* @see        #MIN_PRIORITY
	* @see        ThreadGroup#getMaxPriority()
	*/
	@:overload @:final public function setPriority(newPriority : Int) : Void;
	
	/**
	* Returns this thread's priority.
	*
	* @return  this thread's priority.
	* @see     #setPriority
	*/
	@:overload @:final public function getPriority() : Int;
	
	/**
	* Changes the name of this thread to be equal to the argument
	* <code>name</code>.
	* <p>
	* First the <code>checkAccess</code> method of this thread is called
	* with no arguments. This may result in throwing a
	* <code>SecurityException</code>.
	*
	* @param      name   the new name for this thread.
	* @exception  SecurityException  if the current thread cannot modify this
	*               thread.
	* @see        #getName
	* @see        #checkAccess()
	*/
	@:overload @:final public function setName(name : String) : Void;
	
	/**
	* Returns this thread's name.
	*
	* @return  this thread's name.
	* @see     #setName(String)
	*/
	@:overload @:final public function getName() : String;
	
	/**
	* Returns the thread group to which this thread belongs.
	* This method returns null if this thread has died
	* (been stopped).
	*
	* @return  this thread's thread group.
	*/
	@:overload @:final public function getThreadGroup() : java.lang.ThreadGroup;
	
	/**
	* Returns an estimate of the number of active threads in the current
	* thread's {@linkplain java.lang.ThreadGroup thread group} and its
	* subgroups. Recursively iterates over all subgroups in the current
	* thread's thread group.
	*
	* <p> The value returned is only an estimate because the number of
	* threads may change dynamically while this method traverses internal
	* data structures, and might be affected by the presence of certain
	* system threads. This method is intended primarily for debugging
	* and monitoring purposes.
	*
	* @return  an estimate of the number of active threads in the current
	*          thread's thread group and in any other thread group that
	*          has the current thread's thread group as an ancestor
	*/
	@:overload public static function activeCount() : Int;
	
	/**
	* Copies into the specified array every active thread in the current
	* thread's thread group and its subgroups. This method simply
	* invokes the {@link java.lang.ThreadGroup#enumerate(Thread[])}
	* method of the current thread's thread group.
	*
	* <p> An application might use the {@linkplain #activeCount activeCount}
	* method to get an estimate of how big the array should be, however
	* <i>if the array is too short to hold all the threads, the extra threads
	* are silently ignored.</i>  If it is critical to obtain every active
	* thread in the current thread's thread group and its subgroups, the
	* invoker should verify that the returned int value is strictly less
	* than the length of {@code tarray}.
	*
	* <p> Due to the inherent race condition in this method, it is recommended
	* that the method only be used for debugging and monitoring purposes.
	*
	* @param  tarray
	*         an array into which to put the list of threads
	*
	* @return  the number of threads put into the array
	*
	* @throws  SecurityException
	*          if {@link java.lang.ThreadGroup#checkAccess} determines that
	*          the current thread cannot access its thread group
	*/
	@:overload public static function enumerate(tarray : java.NativeArray<Thread>) : Int;
	
	/**
	* Counts the number of stack frames in this thread. The thread must
	* be suspended.
	*
	* @return     the number of stack frames in this thread.
	* @exception  IllegalThreadStateException  if this thread is not
	*             suspended.
	* @deprecated The definition of this call depends on {@link #suspend},
	*             which is deprecated.  Further, the results of this call
	*             were never well-defined.
	*/
	@:overload @:native public function countStackFrames() : Int;
	
	/**
	* Waits at most {@code millis} milliseconds for this thread to
	* die. A timeout of {@code 0} means to wait forever.
	*
	* <p> This implementation uses a loop of {@code this.wait} calls
	* conditioned on {@code this.isAlive}. As a thread terminates the
	* {@code this.notifyAll} method is invoked. It is recommended that
	* applications not use {@code wait}, {@code notify}, or
	* {@code notifyAll} on {@code Thread} instances.
	*
	* @param  millis
	*         the time to wait in milliseconds
	*
	* @throws  IllegalArgumentException
	*          if the value of {@code millis} is negative
	*
	* @throws  InterruptedException
	*          if any thread has interrupted the current thread. The
	*          <i>interrupted status</i> of the current thread is
	*          cleared when this exception is thrown.
	*/
	@:overload @:final @:synchronized public function join(millis : haxe.Int64) : Void;
	
	/**
	* Waits at most {@code millis} milliseconds plus
	* {@code nanos} nanoseconds for this thread to die.
	*
	* <p> This implementation uses a loop of {@code this.wait} calls
	* conditioned on {@code this.isAlive}. As a thread terminates the
	* {@code this.notifyAll} method is invoked. It is recommended that
	* applications not use {@code wait}, {@code notify}, or
	* {@code notifyAll} on {@code Thread} instances.
	*
	* @param  millis
	*         the time to wait in milliseconds
	*
	* @param  nanos
	*         {@code 0-999999} additional nanoseconds to wait
	*
	* @throws  IllegalArgumentException
	*          if the value of {@code millis} is negative, or the value
	*          of {@code nanos} is not in the range {@code 0-999999}
	*
	* @throws  InterruptedException
	*          if any thread has interrupted the current thread. The
	*          <i>interrupted status</i> of the current thread is
	*          cleared when this exception is thrown.
	*/
	@:overload @:final @:synchronized public function join(millis : haxe.Int64, nanos : Int) : Void;
	
	/**
	* Waits for this thread to die.
	*
	* <p> An invocation of this method behaves in exactly the same
	* way as the invocation
	*
	* <blockquote>
	* {@linkplain #join(long) join}{@code (0)}
	* </blockquote>
	*
	* @throws  InterruptedException
	*          if any thread has interrupted the current thread. The
	*          <i>interrupted status</i> of the current thread is
	*          cleared when this exception is thrown.
	*/
	@:overload @:final public function join() : Void;
	
	/**
	* Prints a stack trace of the current thread to the standard error stream.
	* This method is used only for debugging.
	*
	* @see     Throwable#printStackTrace()
	*/
	@:overload public static function dumpStack() : Void;
	
	/**
	* Marks this thread as either a {@linkplain #isDaemon daemon} thread
	* or a user thread. The Java Virtual Machine exits when the only
	* threads running are all daemon threads.
	*
	* <p> This method must be invoked before the thread is started.
	*
	* @param  on
	*         if {@code true}, marks this thread as a daemon thread
	*
	* @throws  IllegalThreadStateException
	*          if this thread is {@linkplain #isAlive alive}
	*
	* @throws  SecurityException
	*          if {@link #checkAccess} determines that the current
	*          thread cannot modify this thread
	*/
	@:overload @:final public function setDaemon(on : Bool) : Void;
	
	/**
	* Tests if this thread is a daemon thread.
	*
	* @return  <code>true</code> if this thread is a daemon thread;
	*          <code>false</code> otherwise.
	* @see     #setDaemon(boolean)
	*/
	@:overload @:final public function isDaemon() : Bool;
	
	/**
	* Determines if the currently running thread has permission to
	* modify this thread.
	* <p>
	* If there is a security manager, its <code>checkAccess</code> method
	* is called with this thread as its argument. This may result in
	* throwing a <code>SecurityException</code>.
	*
	* @exception  SecurityException  if the current thread is not allowed to
	*               access this thread.
	* @see        SecurityManager#checkAccess(Thread)
	*/
	@:overload @:final public function checkAccess() : Void;
	
	/**
	* Returns a string representation of this thread, including the
	* thread's name, priority, and thread group.
	*
	* @return  a string representation of this thread.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the context ClassLoader for this Thread. The context
	* ClassLoader is provided by the creator of the thread for use
	* by code running in this thread when loading classes and resources.
	* If not {@linkplain #setContextClassLoader set}, the default is the
	* ClassLoader context of the parent Thread. The context ClassLoader of the
	* primordial thread is typically set to the class loader used to load the
	* application.
	*
	* <p>If a security manager is present, and the invoker's class loader is not
	* {@code null} and is not the same as or an ancestor of the context class
	* loader, then this method invokes the security manager's {@link
	* SecurityManager#checkPermission(java.security.Permission) checkPermission}
	* method with a {@link RuntimePermission RuntimePermission}{@code
	* ("getClassLoader")} permission to verify that retrieval of the context
	* class loader is permitted.
	*
	* @return  the context ClassLoader for this Thread, or {@code null}
	*          indicating the system class loader (or, failing that, the
	*          bootstrap class loader)
	*
	* @throws  SecurityException
	*          if the current thread cannot get the context ClassLoader
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function getContextClassLoader() : java.lang.ClassLoader;
	
	/**
	* Sets the context ClassLoader for this Thread. The context
	* ClassLoader can be set when a thread is created, and allows
	* the creator of the thread to provide the appropriate class loader,
	* through {@code getContextClassLoader}, to code running in the thread
	* when loading classes and resources.
	*
	* <p>If a security manager is present, its {@link
	* SecurityManager#checkPermission(java.security.Permission) checkPermission}
	* method is invoked with a {@link RuntimePermission RuntimePermission}{@code
	* ("setContextClassLoader")} permission to see if setting the context
	* ClassLoader is permitted.
	*
	* @param  cl
	*         the context ClassLoader for this Thread, or null  indicating the
	*         system class loader (or, failing that, the bootstrap class loader)
	*
	* @throws  SecurityException
	*          if the current thread cannot set the context ClassLoader
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function setContextClassLoader(cl : java.lang.ClassLoader) : Void;
	
	/**
	* Returns <tt>true</tt> if and only if the current thread holds the
	* monitor lock on the specified object.
	*
	* <p>This method is designed to allow a program to assert that
	* the current thread already holds a specified lock:
	* <pre>
	*     assert Thread.holdsLock(obj);
	* </pre>
	*
	* @param  obj the object on which to test lock ownership
	* @throws NullPointerException if obj is <tt>null</tt>
	* @return <tt>true</tt> if the current thread holds the monitor lock on
	*         the specified object.
	* @since 1.4
	*/
	@:require(java4) @:overload @:native public static function holdsLock(obj : Dynamic) : Bool;
	
	/**
	* Returns an array of stack trace elements representing the stack dump
	* of this thread.  This method will return a zero-length array if
	* this thread has not started, has started but has not yet been
	* scheduled to run by the system, or has terminated.
	* If the returned array is of non-zero length then the first element of
	* the array represents the top of the stack, which is the most recent
	* method invocation in the sequence.  The last element of the array
	* represents the bottom of the stack, which is the least recent method
	* invocation in the sequence.
	*
	* <p>If there is a security manager, and this thread is not
	* the current thread, then the security manager's
	* <tt>checkPermission</tt> method is called with a
	* <tt>RuntimePermission("getStackTrace")</tt> permission
	* to see if it's ok to get the stack trace.
	*
	* <p>Some virtual machines may, under some circumstances, omit one
	* or more stack frames from the stack trace.  In the extreme case,
	* a virtual machine that has no stack trace information concerning
	* this thread is permitted to return a zero-length array from this
	* method.
	*
	* @return an array of <tt>StackTraceElement</tt>,
	* each represents one stack frame.
	*
	* @throws SecurityException
	*        if a security manager exists and its
	*        <tt>checkPermission</tt> method doesn't allow
	*        getting the stack trace of thread.
	* @see SecurityManager#checkPermission
	* @see RuntimePermission
	* @see Throwable#getStackTrace
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getStackTrace() : java.NativeArray<java.lang.StackTraceElement>;
	
	/**
	* Returns a map of stack traces for all live threads.
	* The map keys are threads and each map value is an array of
	* <tt>StackTraceElement</tt> that represents the stack dump
	* of the corresponding <tt>Thread</tt>.
	* The returned stack traces are in the format specified for
	* the {@link #getStackTrace getStackTrace} method.
	*
	* <p>The threads may be executing while this method is called.
	* The stack trace of each thread only represents a snapshot and
	* each stack trace may be obtained at different time.  A zero-length
	* array will be returned in the map value if the virtual machine has
	* no stack trace information about a thread.
	*
	* <p>If there is a security manager, then the security manager's
	* <tt>checkPermission</tt> method is called with a
	* <tt>RuntimePermission("getStackTrace")</tt> permission as well as
	* <tt>RuntimePermission("modifyThreadGroup")</tt> permission
	* to see if it is ok to get the stack trace of all threads.
	*
	* @return a <tt>Map</tt> from <tt>Thread</tt> to an array of
	* <tt>StackTraceElement</tt> that represents the stack trace of
	* the corresponding thread.
	*
	* @throws SecurityException
	*        if a security manager exists and its
	*        <tt>checkPermission</tt> method doesn't allow
	*        getting the stack trace of thread.
	* @see #getStackTrace
	* @see SecurityManager#checkPermission
	* @see RuntimePermission
	* @see Throwable#getStackTrace
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public static function getAllStackTraces() : java.util.Map<Thread, java.NativeArray<java.lang.StackTraceElement>>;
	
	/**
	* Returns the identifier of this Thread.  The thread ID is a positive
	* <tt>long</tt> number generated when this thread was created.
	* The thread ID is unique and remains unchanged during its lifetime.
	* When a thread is terminated, this thread ID may be reused.
	*
	* @return this thread's ID.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getId() : haxe.Int64;
	
	/**
	* Returns the state of this thread.
	* This method is designed for use in monitoring of the system state,
	* not for synchronization control.
	*
	* @return this thread's state.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getState() : Thread_State;
	
	/**
	* Set the default handler invoked when a thread abruptly terminates
	* due to an uncaught exception, and no other handler has been defined
	* for that thread.
	*
	* <p>Uncaught exception handling is controlled first by the thread, then
	* by the thread's {@link ThreadGroup} object and finally by the default
	* uncaught exception handler. If the thread does not have an explicit
	* uncaught exception handler set, and the thread's thread group
	* (including parent thread groups)  does not specialize its
	* <tt>uncaughtException</tt> method, then the default handler's
	* <tt>uncaughtException</tt> method will be invoked.
	* <p>By setting the default uncaught exception handler, an application
	* can change the way in which uncaught exceptions are handled (such as
	* logging to a specific device, or file) for those threads that would
	* already accept whatever &quot;default&quot; behavior the system
	* provided.
	*
	* <p>Note that the default uncaught exception handler should not usually
	* defer to the thread's <tt>ThreadGroup</tt> object, as that could cause
	* infinite recursion.
	*
	* @param eh the object to use as the default uncaught exception handler.
	* If <tt>null</tt> then there is no default handler.
	*
	* @throws SecurityException if a security manager is present and it
	*         denies <tt>{@link RuntimePermission}
	*         (&quot;setDefaultUncaughtExceptionHandler&quot;)</tt>
	*
	* @see #setUncaughtExceptionHandler
	* @see #getUncaughtExceptionHandler
	* @see ThreadGroup#uncaughtException
	* @since 1.5
	*/
	@:require(java5) @:overload public static function setDefaultUncaughtExceptionHandler(eh : Thread_UncaughtExceptionHandler) : Void;
	
	/**
	* Returns the default handler invoked when a thread abruptly terminates
	* due to an uncaught exception. If the returned value is <tt>null</tt>,
	* there is no default.
	* @since 1.5
	* @see #setDefaultUncaughtExceptionHandler
	*/
	@:require(java5) @:overload public static function getDefaultUncaughtExceptionHandler() : Thread_UncaughtExceptionHandler;
	
	/**
	* Returns the handler invoked when this thread abruptly terminates
	* due to an uncaught exception. If this thread has not had an
	* uncaught exception handler explicitly set then this thread's
	* <tt>ThreadGroup</tt> object is returned, unless this thread
	* has terminated, in which case <tt>null</tt> is returned.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getUncaughtExceptionHandler() : Thread_UncaughtExceptionHandler;
	
	/**
	* Set the handler invoked when this thread abruptly terminates
	* due to an uncaught exception.
	* <p>A thread can take full control of how it responds to uncaught
	* exceptions by having its uncaught exception handler explicitly set.
	* If no such handler is set then the thread's <tt>ThreadGroup</tt>
	* object acts as its handler.
	* @param eh the object to use as this thread's uncaught exception
	* handler. If <tt>null</tt> then this thread has no explicit handler.
	* @throws  SecurityException  if the current thread is not allowed to
	*          modify this thread.
	* @see #setDefaultUncaughtExceptionHandler
	* @see ThreadGroup#uncaughtException
	* @since 1.5
	*/
	@:require(java5) @:overload public function setUncaughtExceptionHandler(eh : Thread_UncaughtExceptionHandler) : Void;
	
	
}
/* Replace with ConcurrentReferenceHashMap when/if it appears in a future
* release */
@:native('java$lang$Thread$Caches') @:internal extern class Thread_Caches
{
	
}
/**
* A thread state.  A thread can be in one of the following states:
* <ul>
* <li>{@link #NEW}<br>
*     A thread that has not yet started is in this state.
*     </li>
* <li>{@link #RUNNABLE}<br>
*     A thread executing in the Java virtual machine is in this state.
*     </li>
* <li>{@link #BLOCKED}<br>
*     A thread that is blocked waiting for a monitor lock
*     is in this state.
*     </li>
* <li>{@link #WAITING}<br>
*     A thread that is waiting indefinitely for another thread to
*     perform a particular action is in this state.
*     </li>
* <li>{@link #TIMED_WAITING}<br>
*     A thread that is waiting for another thread to perform an action
*     for up to a specified waiting time is in this state.
*     </li>
* <li>{@link #TERMINATED}<br>
*     A thread that has exited is in this state.
*     </li>
* </ul>
*
* <p>
* A thread can be in only one state at a given point in time.
* These states are virtual machine states which do not reflect
* any operating system thread states.
*
* @since   1.5
* @see #getState
*/
@:require(java5) @:native('java$lang$Thread$State') extern enum Thread_State
{
	/**
	* Thread state for a thread which has not yet started.
	*/
	NEW;
	/**
	* Thread state for a runnable thread.  A thread in the runnable
	* state is executing in the Java virtual machine but it may
	* be waiting for other resources from the operating system
	* such as processor.
	*/
	RUNNABLE;
	/**
	* Thread state for a thread blocked waiting for a monitor lock.
	* A thread in the blocked state is waiting for a monitor lock
	* to enter a synchronized block/method or
	* reenter a synchronized block/method after calling
	* {@link Object#wait() Object.wait}.
	*/
	BLOCKED;
	/**
	* Thread state for a waiting thread.
	* A thread is in the waiting state due to calling one of the
	* following methods:
	* <ul>
	*   <li>{@link Object#wait() Object.wait} with no timeout</li>
	*   <li>{@link #join() Thread.join} with no timeout</li>
	*   <li>{@link LockSupport#park() LockSupport.park}</li>
	* </ul>
	*
	* <p>A thread in the waiting state is waiting for another thread to
	* perform a particular action.
	*
	* For example, a thread that has called <tt>Object.wait()</tt>
	* on an object is waiting for another thread to call
	* <tt>Object.notify()</tt> or <tt>Object.notifyAll()</tt> on
	* that object. A thread that has called <tt>Thread.join()</tt>
	* is waiting for a specified thread to terminate.
	*/
	WAITING;
	/**
	* Thread state for a waiting thread with a specified waiting time.
	* A thread is in the timed waiting state due to calling one of
	* the following methods with a specified positive waiting time:
	* <ul>
	*   <li>{@link #sleep Thread.sleep}</li>
	*   <li>{@link Object#wait(long) Object.wait} with timeout</li>
	*   <li>{@link #join(long) Thread.join} with timeout</li>
	*   <li>{@link LockSupport#parkNanos LockSupport.parkNanos}</li>
	*   <li>{@link LockSupport#parkUntil LockSupport.parkUntil}</li>
	* </ul>
	*/
	TIMED_WAITING;
	/**
	* Thread state for a terminated thread.
	* The thread has completed execution.
	*/
	TERMINATED;
	
}

/**
* Interface for handlers invoked when a <tt>Thread</tt> abruptly
* terminates due to an uncaught exception.
* <p>When a thread is about to terminate due to an uncaught exception
* the Java Virtual Machine will query the thread for its
* <tt>UncaughtExceptionHandler</tt> using
* {@link #getUncaughtExceptionHandler} and will invoke the handler's
* <tt>uncaughtException</tt> method, passing the thread and the
* exception as arguments.
* If a thread has not had its <tt>UncaughtExceptionHandler</tt>
* explicitly set, then its <tt>ThreadGroup</tt> object acts as its
* <tt>UncaughtExceptionHandler</tt>. If the <tt>ThreadGroup</tt> object
* has no
* special requirements for dealing with the exception, it can forward
* the invocation to the {@linkplain #getDefaultUncaughtExceptionHandler
* default uncaught exception handler}.
*
* @see #setDefaultUncaughtExceptionHandler
* @see #setUncaughtExceptionHandler
* @see ThreadGroup#uncaughtException
* @since 1.5
*/
@:require(java5) @:native('java$lang$Thread$UncaughtExceptionHandler') extern interface Thread_UncaughtExceptionHandler
{
	/**
	* Method invoked when the given thread terminates due to the
	* given uncaught exception.
	* <p>Any exception thrown by this method will be ignored by the
	* Java Virtual Machine.
	* @param t the thread
	* @param e the exception
	*/
	@:overload public function uncaughtException(t : Thread, e : java.lang.Throwable) : Void;
	
	
}
/**
*  Weak key for Class objects.
**/
@:native('java$lang$Thread$WeakClassKey') @:internal extern class Thread_WeakClassKey extends java.lang.ref.WeakReference<Class<Dynamic>>
{
	/**
	* Returns the identity hash code of the original referent.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns true if the given object is this identical
	* WeakClassKey instance, or, if this object's referent has not
	* been cleared, if the given object is another WeakClassKey
	* instance with the identical non-null referent as this one.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}