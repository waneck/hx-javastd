package com.sun.corba.se.impl.presentation.rmi;
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
extern class DynamicMethodMarshallerImpl implements com.sun.corba.se.spi.presentation.rmi.DynamicMethodMarshaller
{
	@:overload public static function makeReaderWriter(cls : Class<Dynamic>) : DynamicMethodMarshallerImpl_ReaderWriter;
	
	@:overload public function new(method : java.lang.reflect.Method) : Void;
	
	@:overload public function getMethod() : java.lang.reflect.Method;
	
	@:overload public function copyArguments(args : java.NativeArray<Dynamic>, orb : com.sun.corba.se.spi.orb.ORB) : java.NativeArray<Dynamic>;
	
	@:overload public function readArguments(is : org.omg.CORBA_2_3.portable.InputStream) : java.NativeArray<Dynamic>;
	
	@:overload public function writeArguments(os : org.omg.CORBA_2_3.portable.OutputStream, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function copyResult(result : Dynamic, orb : com.sun.corba.se.spi.orb.ORB) : Dynamic;
	
	@:overload public function readResult(is : org.omg.CORBA_2_3.portable.InputStream) : Dynamic;
	
	@:overload public function writeResult(os : org.omg.CORBA_2_3.portable.OutputStream, result : Dynamic) : Void;
	
	@:overload public function isDeclaredException(thr : java.lang.Throwable) : Bool;
	
	@:overload public function writeException(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	@:overload public function readException(ae : org.omg.CORBA.portable.ApplicationException) : java.lang.Exception;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$DynamicMethodMarshallerImpl$ReaderWriter') extern interface DynamicMethodMarshallerImpl_ReaderWriter
{
	@:overload public function read(is : org.omg.CORBA_2_3.portable.InputStream) : Dynamic;
	
	@:overload public function write(os : org.omg.CORBA_2_3.portable.OutputStream, value : Dynamic) : Void;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$DynamicMethodMarshallerImpl$ReaderWriterBase') @:internal extern class DynamicMethodMarshallerImpl_ReaderWriterBase implements DynamicMethodMarshallerImpl_ReaderWriter
{
	@:overload public function new(name : String) : Void;
	
	@:overload public function toString() : String;
	
	
}