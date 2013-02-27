package com.sun.corba.se.spi.presentation.rmi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface DynamicMethodMarshaller
{
	/** Returns the method used to create this DynamicMethodMarshaller.
	*/
	@:overload public function getMethod() : java.lang.reflect.Method;
	
	/** Copy the arguments as needed for this particular method.
	* Can be optimized so that as little copying as possible is
	* performed.
	*/
	@:overload public function copyArguments(args : java.NativeArray<Dynamic>, orb : com.sun.corba.se.spi.orb.ORB) : java.NativeArray<Dynamic>;
	
	/** Read the arguments for this method from the InputStream.
	* Returns null if there are no arguments.
	*/
	@:overload public function readArguments(is : org.omg.CORBA_2_3.portable.InputStream) : java.NativeArray<Dynamic>;
	
	/** Write arguments for this method to the OutputStream.
	* Does nothing if there are no arguments.
	*/
	@:overload public function writeArguments(os : org.omg.CORBA_2_3.portable.OutputStream, args : java.NativeArray<Dynamic>) : Void;
	
	/** Copy the result as needed for this particular method.
	* Can be optimized so that as little copying as possible is
	* performed.
	*/
	@:overload public function copyResult(result : Dynamic, orb : com.sun.corba.se.spi.orb.ORB) : Dynamic;
	
	/** Read the result from the InputStream.  Returns null
	* if the result type is null.
	*/
	@:overload public function readResult(is : org.omg.CORBA_2_3.portable.InputStream) : Dynamic;
	
	/** Write the result to the OutputStream.  Does nothing if
	* the result type is null.
	*/
	@:overload public function writeResult(os : org.omg.CORBA_2_3.portable.OutputStream, result : Dynamic) : Void;
	
	/** Returns true iff thr's class is a declared exception (or a subclass of
	* a declared exception) for this DynamicMethodMarshaller's method.
	*/
	@:overload public function isDeclaredException(thr : java.lang.Throwable) : Bool;
	
	/** Write the repository ID of the exception and the value of the
	* exception to the OutputStream.  ex should be a declared exception
	* for this DynamicMethodMarshaller's method.
	*/
	@:overload public function writeException(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	/** Reads an exception ID and the corresponding exception from
	* the input stream.  This should be an exception declared in
	* this method.
	*/
	@:overload public function readException(ae : org.omg.CORBA.portable.ApplicationException) : java.lang.Exception;
	
	
}
