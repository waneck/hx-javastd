package javax.management.openmbean;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CompositeDataInvocationHandler implements java.lang.reflect.InvocationHandler
{
	/**
	<p>Construct a handler backed by the given {@code
	CompositeData}.</p>

	@param compositeData the {@code CompositeData} that will supply
	information to getters.

	@throws IllegalArgumentException if {@code compositeData}
	is null.
	*/
	@:overload @:public public function new(compositeData : javax.management.openmbean.CompositeData) : Void;
	
	/**
	Return the {@code CompositeData} that was supplied to the
	constructor.
	@return the {@code CompositeData} that this handler is backed
	by.  This is never null.
	*/
	@:overload @:public public function getCompositeData() : javax.management.openmbean.CompositeData;
	
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
