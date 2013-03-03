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
@:internal extern class LegacyHookPutFields extends java.io.ObjectOutputStream.ObjectOutputStream_PutField
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
