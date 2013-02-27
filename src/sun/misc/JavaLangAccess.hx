package sun.misc;
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
extern interface JavaLangAccess
{
	/** Return the constant pool for a class. */
	@:overload public function getConstantPool(klass : Class<Dynamic>) : sun.reflect.ConstantPool;
	
	/**
	* Set the AnnotationType instance corresponding to this class.
	* (This method only applies to annotation types.)
	*/
	@:overload public function setAnnotationType(klass : Class<Dynamic>, annotationType : sun.reflect.annotation.AnnotationType) : Void;
	
	/**
	* Get the AnnotationType instance corresponding to this class.
	* (This method only applies to annotation types.)
	*/
	@:overload public function getAnnotationType(klass : Class<Dynamic>) : sun.reflect.annotation.AnnotationType;
	
	/**
	* Returns the elements of an enum class or null if the
	* Class object does not represent an enum type;
	* the result is uncloned, cached, and shared by all callers.
	*/
	@:overload public function getEnumConstantsShared<E : java.lang.Enum<E>>(klass : Class<E>) : java.NativeArray<E>;
	
	/** Set thread's blocker field. */
	@:overload public function blockedOn(t : java.lang.Thread, b : sun.nio.ch.Interruptible) : Void;
	
	/**
	* Registers a shutdown hook.
	*
	* It is expected that this method with registerShutdownInProgress=true
	* is only used to register DeleteOnExitHook since the first file
	* may be added to the delete on exit list by the application shutdown
	* hooks.
	*
	* @params slot  the slot in the shutdown hook array, whose element
	*               will be invoked in order during shutdown
	* @params registerShutdownInProgress true to allow the hook
	*               to be registered even if the shutdown is in progress.
	* @params hook  the hook to be registered
	*
	* @throw IllegalStateException if shutdown is in progress and
	*          the slot is not valid to register.
	*/
	@:overload public function registerShutdownHook(slot : Int, registerShutdownInProgress : Bool, hook : java.lang.Runnable) : Void;
	
	/**
	* Returns the number of stack frames represented by the given throwable.
	*/
	@:overload public function getStackTraceDepth(t : java.lang.Throwable) : Int;
	
	/**
	* Returns the ith StackTraceElement for the given throwable.
	*/
	@:overload public function getStackTraceElement(t : java.lang.Throwable, i : Int) : java.lang.StackTraceElement;
	
	/**
	* Returns the murmur hash value for the specified String.
	*/
	@:overload public function getStringHash32(string : String) : Int;
	
	
}
