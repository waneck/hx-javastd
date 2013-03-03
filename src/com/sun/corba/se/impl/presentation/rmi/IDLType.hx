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
/**
* Holds information about the OMG IDL mapping of a Java type.
*/
extern class IDLType
{
	@:overload @:public public function new(cl : Class<Dynamic>, modules : java.NativeArray<String>, memberName : String) : Void;
	
	@:overload @:public public function new(cl : Class<Dynamic>, memberName : String) : Void;
	
	@:overload @:public public function getJavaClass() : Class<Dynamic>;
	
	@:overload @:public public function getModules() : java.NativeArray<String>;
	
	@:overload @:public public function makeConcatenatedName(separator : java.StdTypes.Char16, fixIDLKeywords : Bool) : String;
	
	@:overload @:public public function getModuleName() : String;
	
	@:overload @:public public function getExceptionName() : String;
	
	@:overload @:public public function getMemberName() : String;
	
	/**
	* True if this type doesn't have a containing module.  This
	* would be true of a java type defined in the default package
	* or a primitive.
	*/
	@:overload @:public public function hasModule() : Bool;
	
	
}
