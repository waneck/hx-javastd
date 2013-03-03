package com.sun.corba.se.impl.naming.pcosnaming;
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
extern class ServantManagerImpl extends org.omg.CORBA.LocalObject implements org.omg.PortableServer.ServantLocator
{
	@:overload @:public public function preinvoke(oid : java.NativeArray<java.StdTypes.Int8>, adapter : org.omg.PortableServer.POA, operation : String, cookie : org.omg.PortableServer.ServantLocatorPackage.CookieHolder) : org.omg.PortableServer.Servant;
	
	@:overload @:public public function postinvoke(oid : java.NativeArray<java.StdTypes.Int8>, adapter : org.omg.PortableServer.POA, operation : String, cookie : Dynamic, servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload @:public public function readInContext(objKey : String) : com.sun.corba.se.impl.naming.pcosnaming.NamingContextImpl;
	
	@:overload @:public public function addContext(objKey : String, context : com.sun.corba.se.impl.naming.pcosnaming.NamingContextImpl) : com.sun.corba.se.impl.naming.pcosnaming.NamingContextImpl;
	
	@:overload @:public public function updateContext(objKey : String, context : com.sun.corba.se.impl.naming.pcosnaming.NamingContextImpl) : Void;
	
	@:overload @:public @:static public static function getRootObjectKey() : String;
	
	@:overload @:public public function getNewObjectKey() : String;
	
	
}
@:internal extern class CounterDB implements java.io.Serializable
{
	@:overload @:public @:synchronized public function getNextCounter() : Int;
	
	@:public @:final @:static public static var rootCounter(default, null) : Int;
	
	
}
