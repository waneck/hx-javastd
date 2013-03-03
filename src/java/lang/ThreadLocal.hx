package java.lang;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ThreadLocal<T>
{
	/**
	* Returns the current thread's "initial value" for this
	* thread-local variable.  This method will be invoked the first
	* time a thread accesses the variable with the {@link #get}
	* method, unless the thread previously invoked the {@link #set}
	* method, in which case the <tt>initialValue</tt> method will not
	* be invoked for the thread.  Normally, this method is invoked at
	* most once per thread, but it may be invoked again in case of
	* subsequent invocations of {@link #remove} followed by {@link #get}.
	*
	* <p>This implementation simply returns <tt>null</tt>; if the
	* programmer desires thread-local variables to have an initial
	* value other than <tt>null</tt>, <tt>ThreadLocal</tt> must be
	* subclassed, and this method overridden.  Typically, an
	* anonymous inner class will be used.
	*
	* @return the initial value for this thread-local
	*/
	@:overload @:protected private function initialValue() : T;
	
	/**
	* Creates a thread local variable.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the value in the current thread's copy of this
	* thread-local variable.  If the variable has no value for the
	* current thread, it is first initialized to the value returned
	* by an invocation of the {@link #initialValue} method.
	*
	* @return the current thread's value of this thread-local
	*/
	@:overload @:public public function get() : T;
	
	/**
	* Sets the current thread's copy of this thread-local variable
	* to the specified value.  Most subclasses will have no need to
	* override this method, relying solely on the {@link #initialValue}
	* method to set the values of thread-locals.
	*
	* @param value the value to be stored in the current thread's copy of
	*        this thread-local.
	*/
	@:overload @:public public function set(value : T) : Void;
	
	/**
	* Removes the current thread's value for this thread-local
	* variable.  If this thread-local variable is subsequently
	* {@linkplain #get read} by the current thread, its value will be
	* reinitialized by invoking its {@link #initialValue} method,
	* unless its value is {@linkplain #set set} by the current thread
	* in the interim.  This may result in multiple invocations of the
	* <tt>initialValue</tt> method in the current thread.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function remove() : Void;
	
	
}
/**
* ThreadLocalMap is a customized hash map suitable only for
* maintaining thread local values. No operations are exported
* outside of the ThreadLocal class. The class is package private to
* allow declaration of fields in class Thread.  To help deal with
* very large and long-lived usages, the hash table entries use
* WeakReferences for keys. However, since reference queues are not
* used, stale entries are guaranteed to be removed only when
* the table starts running out of space.
*/
@:native('java$lang$ThreadLocal$ThreadLocalMap') @:internal extern class ThreadLocal_ThreadLocalMap
{
	
}
/**
* The entries in this hash map extend WeakReference, using
* its main ref field as the key (which is always a
* ThreadLocal object).  Note that null keys (i.e. entry.get()
* == null) mean that the key is no longer referenced, so the
* entry can be expunged from table.  Such entries are referred to
* as "stale entries" in the code that follows.
*/
@:native('java$lang$ThreadLocal$ThreadLocalMap$Entry') @:internal extern class ThreadLocal_ThreadLocalMap_Entry extends java.lang.ref.WeakReference<java.lang.ThreadLocal<Dynamic>>
{
	
}
