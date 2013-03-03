package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class OutputStreamHook extends java.io.ObjectOutputStream
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function defaultWriteObject() : Void;
	
	@:overload @:public @:abstract public function defaultWriteObjectDelegate() : Void;
	
	@:overload @:public override public function putFields() : java.io.ObjectOutputStream.ObjectOutputStream_PutField;
	
	@:protected private var streamFormatVersion : java.StdTypes.Int8;
	
	@:overload @:public public function getStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload @:public override public function writeFields() : Void;
	
	@:overload @:public @:abstract public function getOrbStream() : org.omg.CORBA_2_3.portable.OutputStream;
	
	@:overload @:protected @:abstract private function beginOptionalCustomData() : Void;
	
	@:protected private var writeObjectState : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState;
	
	@:overload @:protected private function setState(newState : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState) : Void;
	
	@:protected @:static @:final private static var NOT_IN_WRITE_OBJECT(default, null) : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState;
	
	@:protected @:static @:final private static var IN_WRITE_OBJECT(default, null) : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState;
	
	@:protected @:static @:final private static var WROTE_DEFAULT_DATA(default, null) : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState;
	
	@:protected @:static @:final private static var WROTE_CUSTOM_DATA(default, null) : com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState;
	
	
}
/**
* Since ObjectOutputStream.PutField methods specify no exceptions,
* we are not checking for null parameters on put methods.
*/
@:native('com$sun$corba$se$impl$io$OutputStreamHook$HookPutFields') @:internal extern class OutputStreamHook_HookPutFields extends java.io.ObjectOutputStream.ObjectOutputStream_PutField
{
	/**
	* Put the value of the named boolean field into the persistent field.
	*/
	@:overload @:public override public function put(name : String, value : Bool) : Void;
	
	/**
	* Put the value of the named char field into the persistent fields.
	*/
	@:overload @:public override public function put(name : String, value : java.StdTypes.Char16) : Void;
	
	/**
	* Put the value of the named byte field into the persistent fields.
	*/
	@:overload @:public override public function put(name : String, value : java.StdTypes.Int8) : Void;
	
	/**
	* Put the value of the named short field into the persistent fields.
	*/
	@:overload @:public override public function put(name : String, value : java.StdTypes.Int16) : Void;
	
	/**
	* Put the value of the named int field into the persistent fields.
	*/
	@:overload @:public override public function put(name : String, value : Int) : Void;
	
	/**
	* Put the value of the named long field into the persistent fields.
	*/
	@:overload @:public override public function put(name : String, value : haxe.Int64) : Void;
	
	/**
	* Put the value of the named float field into the persistent fields.
	*
	*/
	@:overload @:public override public function put(name : String, value : Single) : Void;
	
	/**
	* Put the value of the named double field into the persistent field.
	*/
	@:overload @:public override public function put(name : String, value : Float) : Void;
	
	/**
	* Put the value of the named Object field into the persistent field.
	*/
	@:overload @:public override public function put(name : String, value : Dynamic) : Void;
	
	/**
	* Write the data and fields to the specified ObjectOutput stream.
	*/
	@:overload @:public override public function write(out : java.io.ObjectOutput) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$OutputStreamHook$WriteObjectState') extern class OutputStreamHook_WriteObjectState
{
	@:overload @:public public function enterWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public public function exitWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public public function defaultWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public public function writeData(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$OutputStreamHook$DefaultState') extern class OutputStreamHook_DefaultState extends com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState
{
	@:overload @:public override public function enterWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$OutputStreamHook$InWriteObjectState') extern class OutputStreamHook_InWriteObjectState extends com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_WriteObjectState
{
	@:overload @:public override public function enterWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function exitWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function defaultWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function writeData(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$OutputStreamHook$WroteDefaultDataState') extern class OutputStreamHook_WroteDefaultDataState extends com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_InWriteObjectState
{
	@:overload @:public override public function exitWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function defaultWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function writeData(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$OutputStreamHook$WroteCustomDataState') extern class OutputStreamHook_WroteCustomDataState extends com.sun.corba.se.impl.io.OutputStreamHook.OutputStreamHook_InWriteObjectState
{
	@:overload @:public override public function exitWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function defaultWriteObject(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	@:overload @:public override public function writeData(stream : com.sun.corba.se.impl.io.OutputStreamHook) : Void;
	
	
}
