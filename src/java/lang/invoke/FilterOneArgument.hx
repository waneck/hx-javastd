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
@:internal extern class FilterOneArgument extends java.lang.invoke.BoundMethodHandle
{
	/**
	* Unary function composition, useful for many small plumbing jobs.
	* The invoke method takes a single reference argument, and returns a reference
	* Internally, it first calls the {@code filter} method on the argument,
	* Making up the difference between the raw method type and the
	* final method type is the responsibility of a JVM-level adapter.
	* @author jrose
	*/
	@:protected @:final private var filter(default, null) : java.lang.invoke.MethodHandle;
	
	@:protected @:final private var target(default, null) : java.lang.invoke.MethodHandle;
	
	@:overload @:protected private function invoke(argument : Dynamic) : Dynamic;
	
	@:overload @:protected private function new(filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:public @:static public static function make(filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	
}
