package java.lang;
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
/**
* Thrown to indicate that an {@code invokedynamic} instruction has
* failed to find its bootstrap method,
* or the bootstrap method has failed to provide a
* {@linkplain java.lang.invoke.CallSite call site} with a {@linkplain java.lang.invoke.CallSite#getTarget target}
* of the correct {@linkplain java.lang.invoke.MethodHandle#type method type}.
*
* @author John Rose, JSR 292 EG
* @since 1.7
*/
@:require(java7) extern class BootstrapMethodError extends java.lang.LinkageError
{
	/**
	* Constructs a {@code BootstrapMethodError} with no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a {@code BootstrapMethodError} with the specified
	* detail message.
	*
	* @param s the detail message.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Constructs a {@code BootstrapMethodError} with the specified
	* detail message and cause.
	*
	* @param s the detail message.
	* @param cause the cause, may be {@code null}.
	*/
	@:overload public function new(s : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a {@code BootstrapMethodError} with the specified
	* cause.
	*
	* @param cause the cause, may be {@code null}.
	*/
	@:overload public function new(cause : java.lang.Throwable) : Void;
	
	
}
