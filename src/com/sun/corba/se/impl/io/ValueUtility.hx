package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ValueUtility
{
	/**
	* Holds utility methods for converting from ObjectStreamClass to
	* FullValueDescription and generating typecodes from ObjectStreamClass.
	**/
	public static var PRIVATE_MEMBER(default, null) : java.StdTypes.Int16;
	
	public static var PUBLIC_MEMBER(default, null) : java.StdTypes.Int16;
	
	@:overload public static function getSignature(member : org.omg.CORBA.ValueMember) : String;
	
	@:overload public static function translate(orb : org.omg.CORBA.ORB, osc : com.sun.corba.se.impl.io.ObjectStreamClass, vh : javax.rmi.CORBA.ValueHandler) : com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription;
	
	@:overload public static function isAssignableFrom(clzRepositoryId : String, type : com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription, sender : com.sun.org.omg.SendingContext.CodeBase) : Bool;
	
	@:overload public static function createTypeCodeForClass(orb : org.omg.CORBA.ORB, c : Class<Dynamic>, vh : javax.rmi.CORBA.ValueHandler) : org.omg.CORBA.TypeCode;
	
	@:overload public static function getPrimitiveTypeCodeForClass(orb : org.omg.CORBA.ORB, c : Class<Dynamic>, vh : javax.rmi.CORBA.ValueHandler) : org.omg.CORBA.TypeCode;
	
	
}
@:native('com$sun$corba$se$impl$io$ValueUtility$IdentityKeyValueStack') @:internal extern class ValueUtility_IdentityKeyValueStack
{
	
}
@:native('com$sun$corba$se$impl$io$ValueUtility$IdentityKeyValueStack$KeyValuePair') @:internal extern class ValueUtility_IdentityKeyValueStack_KeyValuePair
{
	
}
