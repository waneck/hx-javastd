package org.omg.PortableServer.ServantLocatorPackage;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
* The native type PortableServer::ServantLocator::Cookie is mapped
* to java.lang.Object. A CookieHolder class is provided for passing
* the Cookie type as an out parameter. The CookieHolder class
* follows exactly the same pattern as the other holder classes
* for basic types.
*/
extern class CookieHolder implements org.omg.CORBA.portable.Streamable
{
	@:public public var value : Dynamic;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(initial : Dynamic) : Void;
	
	@:overload @:public public function _read(is : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function _write(os : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
