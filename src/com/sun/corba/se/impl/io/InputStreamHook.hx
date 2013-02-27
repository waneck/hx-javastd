package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class InputStreamHook extends java.io.ObjectInputStream
{
	@:overload public function new() : Void;
	
	@:overload override public function defaultReadObject() : Void;
	
	@:overload @:abstract public function defaultReadObjectDelegate() : Void;
	
	@:overload override public function readFields() : java.io.ObjectInputStream.ObjectInputStream_GetField;
	
	@:overload private function setState(newState : InputStreamHook_ReadObjectState) : Void;
	
	@:overload @:abstract private function getStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload @:abstract private function getOrbStream() : org.omg.CORBA_2_3.portable.InputStream;
	
	private var readObjectState : InputStreamHook_ReadObjectState;
	
	private static var DEFAULT_STATE(default, null) : InputStreamHook_ReadObjectState;
	
	private static var IN_READ_OBJECT_OPT_DATA(default, null) : InputStreamHook_ReadObjectState;
	
	private static var IN_READ_OBJECT_NO_MORE_OPT_DATA(default, null) : InputStreamHook_ReadObjectState;
	
	private static var IN_READ_OBJECT_DEFAULTS_SENT(default, null) : InputStreamHook_ReadObjectState;
	
	private static var NO_READ_OBJECT_DEFAULTS_SENT(default, null) : InputStreamHook_ReadObjectState;
	
	private static var IN_READ_OBJECT_REMOTE_NOT_CUSTOM_MARSHALED(default, null) : InputStreamHook_ReadObjectState;
	
	private static var IN_READ_OBJECT_PAST_DEFAULTS_REMOTE_NOT_CUSTOM(default, null) : InputStreamHook_ReadObjectState;
	
	@:overload private function throwOptionalDataIncompatibleException() : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$HookGetFields') @:internal extern class InputStreamHook_HookGetFields extends java.io.ObjectInputStream.ObjectInputStream_GetField
{
	/**
	* Get the ObjectStreamClass that describes the fields in the stream.
	*
	* REVISIT!  This doesn't work since we have our own ObjectStreamClass.
	*/
	@:overload override public function getObjectStreamClass() : java.io.ObjectStreamClass;
	
	/**
	* Return true if the named field is defaulted and has no value
	* in this stream.
	*/
	@:overload override public function defaulted(name : String) : Bool;
	
	/**
	* Get the value of the named boolean field from the persistent field.
	*/
	@:overload override public function get(name : String, defvalue : Bool) : Bool;
	
	/**
	* Get the value of the named char field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Get the value of the named byte field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : java.StdTypes.Int8) : java.StdTypes.Int8;
	
	/**
	* Get the value of the named short field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	/**
	* Get the value of the named int field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : Int) : Int;
	
	/**
	* Get the value of the named long field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : haxe.Int64) : haxe.Int64;
	
	/**
	* Get the value of the named float field from the persistent fields.
	*/
	@:overload override public function get(name : String, defvalue : Single) : Single;
	
	/**
	* Get the value of the named double field from the persistent field.
	*/
	@:overload override public function get(name : String, defvalue : Float) : Float;
	
	/**
	* Get the value of the named Object field from the persistent field.
	*/
	@:overload override public function get(name : String, defvalue : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$ReadObjectState') extern class InputStreamHook_ReadObjectState
{
	@:overload public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	@:overload public function endUnmarshalCustomValue(stream : InputStreamHook) : Void;
	
	@:overload public function beginDefaultReadObject(stream : InputStreamHook) : Void;
	
	@:overload public function endDefaultReadObject(stream : InputStreamHook) : Void;
	
	@:overload public function readData(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$DefaultState') extern class InputStreamHook_DefaultState extends InputStreamHook_ReadObjectState
{
	@:overload override public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$InReadObjectRemoteDidNotUseWriteObjectState') extern class InputStreamHook_InReadObjectRemoteDidNotUseWriteObjectState extends InputStreamHook_ReadObjectState
{
	@:overload override public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	@:overload override public function endDefaultReadObject(stream : InputStreamHook) : Void;
	
	@:overload override public function readData(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$InReadObjectPastDefaultsRemoteDidNotUseWOState') extern class InputStreamHook_InReadObjectPastDefaultsRemoteDidNotUseWOState extends InputStreamHook_ReadObjectState
{
	@:overload override public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	@:overload override public function beginDefaultReadObject(stream : InputStreamHook) : Void;
	
	@:overload override public function readData(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$InReadObjectDefaultsSentState') extern class InputStreamHook_InReadObjectDefaultsSentState extends InputStreamHook_ReadObjectState
{
	@:overload override public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	@:overload override public function endUnmarshalCustomValue(stream : InputStreamHook) : Void;
	
	@:overload override public function endDefaultReadObject(stream : InputStreamHook) : Void;
	
	@:overload override public function readData(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$InReadObjectOptionalDataState') extern class InputStreamHook_InReadObjectOptionalDataState extends InputStreamHook_ReadObjectState
{
	@:overload override public function beginUnmarshalCustomValue(stream : InputStreamHook, calledDefaultWriteObject : Bool, hasReadObject : Bool) : Void;
	
	@:overload override public function endUnmarshalCustomValue(stream : InputStreamHook) : Void;
	
	@:overload override public function beginDefaultReadObject(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$InReadObjectNoMoreOptionalDataState') extern class InputStreamHook_InReadObjectNoMoreOptionalDataState extends InputStreamHook_InReadObjectOptionalDataState
{
	@:overload override public function readData(stream : InputStreamHook) : Void;
	
	
}
@:native('com$sun$corba$se$impl$io$InputStreamHook$NoReadObjectDefaultsSentState') extern class InputStreamHook_NoReadObjectDefaultsSentState extends InputStreamHook_ReadObjectState
{
	@:overload override public function endUnmarshalCustomValue(stream : InputStreamHook) : Void;
	
	
}
