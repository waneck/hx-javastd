package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
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
*/
@:internal extern class LegacyHookGetFields extends java.io.ObjectInputStream.ObjectInputStream_GetField
{
	/**
	* Get the ObjectStreamClass that describes the fields in the stream.
	*/
	@:overload @:public override public function getObjectStreamClass() : java.io.ObjectStreamClass;
	
	/**
	* Return true if the named field is defaulted and has no value
	* in this stream.
	*/
	@:overload @:public override public function defaulted(name : String) : Bool;
	
	/**
	* Get the value of the named boolean field from the persistent field.
	*/
	@:overload @:public override public function get(name : String, defvalue : Bool) : Bool;
	
	/**
	* Get the value of the named char field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Get the value of the named byte field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : java.StdTypes.Int8) : java.StdTypes.Int8;
	
	/**
	* Get the value of the named short field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	/**
	* Get the value of the named int field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : Int) : Int;
	
	/**
	* Get the value of the named long field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : haxe.Int64) : haxe.Int64;
	
	/**
	* Get the value of the named float field from the persistent fields.
	*/
	@:overload @:public override public function get(name : String, defvalue : Single) : Single;
	
	/**
	* Get the value of the named double field from the persistent field.
	*/
	@:overload @:public override public function get(name : String, defvalue : Float) : Float;
	
	/**
	* Get the value of the named Object field from the persistent field.
	*/
	@:overload @:public override public function get(name : String, defvalue : Dynamic) : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
