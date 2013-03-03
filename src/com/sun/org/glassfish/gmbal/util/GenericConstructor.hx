package com.sun.org.glassfish.gmbal.util;
/*
* Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GenericConstructor<T>
{
	/** Create a generic of type T for the untyped class cls.
	* Generally cls is a class that has been generated and loaded, so
	* no compiled code can depend on the class directly.  However, the
	* generated class probably implements some interface T, represented
	* here by Class<T>.
	* @param type The expected type of a create call.
	* @param className The name of the class to use for a constructor.
	* @param signature The signature of the desired constructor.
	* @throws IllegalArgumentException if cls is not a subclass of type.
	*/
	@:overload @:public public function new(type : Class<T>, className : String, signature : java.NativeArray<Class<Dynamic>>) : Void;
	
	/** Create an instance of type T using the constructor that
	* matches the given arguments if possible.  The constructor
	* is cached, so an instance of GenericClass should always be
	* used for the same types of arguments.  If a call fails,
	* a check is made to see if a different constructor could
	* be used.
	* @param args The constructor arguments.
	* @return A new instance of the object.
	*/
	@:overload @:public @:synchronized public function create(args : java.NativeArray<Dynamic>) : T;
	
	
}
