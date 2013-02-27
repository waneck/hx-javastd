package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ExceptionHandlerImpl implements com.sun.corba.se.impl.presentation.rmi.ExceptionHandler
{
	@:overload public function new(exceptions : java.NativeArray<Class<Dynamic>>) : Void;
	
	@:overload public function isDeclaredException(cls : Class<Dynamic>) : Bool;
	
	@:overload public function writeException(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	@:overload public function readException(ae : org.omg.CORBA.portable.ApplicationException) : java.lang.Exception;
	
	@:overload public function getRMIExceptionRW(cls : Class<Dynamic>) : ExceptionHandlerImpl_ExceptionRW;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$ExceptionHandlerImpl$ExceptionRW') extern interface ExceptionHandlerImpl_ExceptionRW
{
	@:overload public function getExceptionClass() : Class<Dynamic>;
	
	@:overload public function getId() : String;
	
	@:overload public function write(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	@:overload public function read(is : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$ExceptionHandlerImpl$ExceptionRWBase') extern class ExceptionHandlerImpl_ExceptionRWBase implements ExceptionHandlerImpl_ExceptionRW
{
	@:overload public function new(cls : Class<Dynamic>) : Void;
	
	@:overload public function getExceptionClass() : Class<Dynamic>;
	
	@:overload public function getId() : String;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$ExceptionHandlerImpl$ExceptionRWIDLImpl') extern class ExceptionHandlerImpl_ExceptionRWIDLImpl extends ExceptionHandlerImpl_ExceptionRWBase
{
	@:overload public function new(cls : Class<Dynamic>) : Void;
	
	@:overload override public function write(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	@:overload override public function read(is : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$ExceptionHandlerImpl$ExceptionRWRMIImpl') extern class ExceptionHandlerImpl_ExceptionRWRMIImpl extends ExceptionHandlerImpl_ExceptionRWBase
{
	@:overload public function new(cls : Class<Dynamic>) : Void;
	
	@:overload override public function write(os : org.omg.CORBA_2_3.portable.OutputStream, ex : java.lang.Exception) : Void;
	
	@:overload override public function read(is : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	
}
