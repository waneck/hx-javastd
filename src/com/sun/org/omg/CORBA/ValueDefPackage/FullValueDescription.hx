package com.sun.org.omg.CORBA.ValueDefPackage;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* com/sun/org/omg/CORBA/ValueDefPackage/FullValueDescription.java
* Generated by the IDL-to-Java compiler (portable), version "3.0"
* from ir.idl
* Thursday, May 6, 1999 1:51:52 AM PDT
*/
//// This file has been manually _CHANGED_
extern class FullValueDescription implements org.omg.CORBA.portable.IDLEntity
{
	public var name : String;
	
	public var id : String;
	
	public var is_abstract : Bool;
	
	public var is_custom : Bool;
	
	public var defined_in : String;
	
	public var version : String;
	
	public var operations : java.NativeArray<com.sun.org.omg.CORBA.OperationDescription>;
	
	public var attributes : java.NativeArray<com.sun.org.omg.CORBA.AttributeDescription>;
	
	public var members : java.NativeArray<org.omg.CORBA.ValueMember>;
	
	public var initializers : java.NativeArray<com.sun.org.omg.CORBA.Initializer>;
	
	public var supported_interfaces : java.NativeArray<String>;
	
	public var abstract_base_values : java.NativeArray<String>;
	
	public var is_truncatable : Bool;
	
	public var base_value : String;
	
	public var type : org.omg.CORBA.TypeCode;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_name : String, _id : String, _is_abstract : Bool, _is_custom : Bool, _defined_in : String, _version : String, _operations : java.NativeArray<com.sun.org.omg.CORBA.OperationDescription>, _attributes : java.NativeArray<com.sun.org.omg.CORBA.AttributeDescription>, _members : java.NativeArray<org.omg.CORBA.ValueMember>, _initializers : java.NativeArray<com.sun.org.omg.CORBA.Initializer>, _supported_interfaces : java.NativeArray<String>, _abstract_base_values : java.NativeArray<String>, _is_truncatable : Bool, _base_value : String, _type : org.omg.CORBA.TypeCode) : Void;
	
	
}