package java.lang.invoke;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CallSite
{
	/**
	* Returns the type of this call site's target.
	* Although targets may change, any call site's type is permanent, and can never change to an unequal type.
	* The {@code setTarget} method enforces this invariant by refusing any new target that does
	* not have the previous target's type.
	* @return the type of the current target, which is also the type of any future target
	*/
	@:overload public function type() : java.lang.invoke.MethodType;
	
	/**
	* Returns the target method of the call site, according to the
	* behavior defined by this call site's specific class.
	* The immediate subclasses of {@code CallSite} document the
	* class-specific behaviors of this method.
	*
	* @return the current linkage state of the call site, its target method handle
	* @see ConstantCallSite
	* @see VolatileCallSite
	* @see #setTarget
	* @see ConstantCallSite#getTarget
	* @see MutableCallSite#getTarget
	* @see VolatileCallSite#getTarget
	*/
	@:overload @:abstract public function getTarget() : java.lang.invoke.MethodHandle;
	
	/**
	* Updates the target method of this call site, according to the
	* behavior defined by this call site's specific class.
	* The immediate subclasses of {@code CallSite} document the
	* class-specific behaviors of this method.
	* <p>
	* The type of the new target must be {@linkplain MethodType#equals equal to}
	* the type of the old target.
	*
	* @param newTarget the new target
	* @throws NullPointerException if the proposed new target is null
	* @throws WrongMethodTypeException if the proposed new target
	*         has a method type that differs from the previous target
	* @see CallSite#getTarget
	* @see ConstantCallSite#setTarget
	* @see MutableCallSite#setTarget
	* @see VolatileCallSite#setTarget
	*/
	@:overload @:abstract public function setTarget(newTarget : java.lang.invoke.MethodHandle) : Void;
	
	/**
	* Produces a method handle equivalent to an invokedynamic instruction
	* which has been linked to this call site.
	* <p>
	* This method is equivalent to the following code:
	* <blockquote><pre>
	* MethodHandle getTarget, invoker, result;
	* getTarget = MethodHandles.publicLookup().bind(this, "getTarget", MethodType.methodType(MethodHandle.class));
	* invoker = MethodHandles.exactInvoker(this.type());
	* result = MethodHandles.foldArguments(invoker, getTarget)
	* </pre></blockquote>
	*
	* @return a method handle which always invokes this call site's current target
	*/
	@:overload @:abstract public function dynamicInvoker() : java.lang.invoke.MethodHandle;
	
	
}
