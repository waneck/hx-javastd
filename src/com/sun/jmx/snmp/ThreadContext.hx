package com.sun.jmx.snmp;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
/**
* <p><b>Warning: The interface of this class is subject to change.
* Use at your own risk.</b></p>
*
* <p>This class associates a context with each thread that
* references it.  The context is a set of mappings between Strings
* and Objects.  It is managed as a stack, typically with code like
* this:</p>
*
* <pre>
* ThreadContext oldContext = ThreadContext.push(myKey, myObject);
* // plus possibly further calls to ThreadContext.push...
* try {
*      doSomeOperation();
* } finally {
*      ThreadContext.restore(oldContext);
* }
* </pre>
*
* <p>The <code>try</code>...<code>finally</code> block ensures that
* the <code>restore</code> is done even if
* <code>doSomeOperation</code> terminates abnormally (with an
* exception).</p>
*
* <p>A thread can consult its own context using
* <code>ThreadContext.get(myKey)</code>.  The result is the
* value that was most recently pushed with the given key.</p>
*
* <p>A thread cannot read or modify the context of another thread.</p>
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class ThreadContext implements java.lang.Cloneable.Cloneable
{
	/**
	* <p>Get the Object that was most recently pushed with the given key.</p>
	*
	* @param key the key of interest.
	*
	* @return the last Object that was pushed (using
	* <code>push</code>) with that key and not subsequently canceled
	* by a <code>restore</code>; or null if there is no such object.
	* A null return value may also indicate that the last Object
	* pushed was the value <code>null</code>.  Use the
	* <code>contains</code> method to distinguish this case from the
	* case where there is no Object.
	*
	* @exception IllegalArgumentException if <code>key</code> is null.
	*/
	@:overload public static function get(key : java.lang.String.String) : java.lang.Object.Object;
	
	/**
	* <p>Check whether a value with the given key exists in the stack.
	* This means that the <code>push</code> method was called with
	* this key and it was not cancelled by a subsequent
	* <code>restore</code>.  This method is useful when the
	* <code>get</code> method returns null, to distinguish between
	* the case where the key exists in the stack but is associated
	* with a null value, and the case where the key does not exist in
	* the stack.</p>
	*
	* @return true if the key exists in the stack.
	*
	* @exception IllegalArgumentException if <code>key</code> is null.
	*/
	@:overload public static function contains(key : java.lang.String.String) : Bool;
	
	/**
	* <p>Push an object on the context stack with the given key.
	* This operation can subsequently be undone by calling
	* <code>restore</code> with the ThreadContext value returned
	* here.</p>
	*
	* @param key the key that will be used to find the object while it is
	* on the stack.
	* @param value the value to be associated with that key.  It may be null.
	*
	* @return a ThreadContext that can be given to <code>restore</code> to
	* restore the stack to its state before the <code>push</code>.
	*
	* @exception IllegalArgumentException if <code>key</code> is null.
	*/
	@:overload public static function push(key : java.lang.String.String, value : java.lang.Object.Object) : ThreadContext;
	
	/**
	* <p>Return an object that can later be supplied to <code>restore</code>
	* to restore the context stack to its current state.  The object can
	* also be given to <code>setInitialContext</code>.</p>
	*
	* @return a ThreadContext that represents the current context stack.
	*/
	@:overload public static function getThreadContext() : ThreadContext;
	
	/**
	* <p>Restore the context stack to an earlier state.  This typically
	* undoes the effect of one or more <code>push</code> calls.</p>
	*
	* @param oldContext the state to return.  This is usually the return
	* value of an earlier <code>push</code> operation.
	*
	* @exception NullPointerException if <code>oldContext</code> is null.
	* @exception IllegalArgumentException if <code>oldContext</code>
	* does not represent a context from this thread, or if that
	* context was undone by an earlier <code>restore</code>.
	*/
	@:overload public static function restore(oldContext : ThreadContext) : Void;
	
	/* We rely on the fact that ThreadContext objects are immutable.
	This means that we don't have to check that the "context"
	argument is valid.  It necessarily represents the head of a
	valid chain of ThreadContext objects, even if the thread from
	which it was obtained has subsequently been set to a point
	later in that chain using "restore".  */
	@:overload public function setInitialContext(context : ThreadContext) : Void;
	
	
}
