package org.omg.PortableServer;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
* org/omg/PortableServer/POAHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.1"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Tuesday, October 23, 2001 1:16:58 PM PDT
*/
/**
* A POA object manages the implementation of a
* collection of objects. The POA supports a name space
* for the objects, which are identified by Object Ids.
* A POA also provides a name space for POAs. A POA is
* created as a child of an existing POA, which forms a
* hierarchy starting with the root POA. A POA object
* must not be exported to other processes, or
* externalized with ORB::object_to_string.
*/
extern class POAHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableServer.POA) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableServer.POA;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableServer.POA;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableServer.POA) : Void;
	
	@:overload public static function narrow(obj : org.omg.CORBA.Object) : org.omg.PortableServer.POA;
	
	
}
