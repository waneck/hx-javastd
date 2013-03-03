package com.sun.corba.se.spi.presentation.rmi;
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
extern class StubAdapter
{
	@:overload @:public @:static public static function isStubClass(cls : Class<Dynamic>) : Bool;
	
	@:overload @:public @:static public static function isStub(stub : Dynamic) : Bool;
	
	@:overload @:public @:static public static function setDelegate(stub : Dynamic, delegate : org.omg.CORBA.portable.Delegate) : Void;
	
	/** Use implicit activation to get an object reference for the servant.
	*/
	@:overload @:public @:static public static function activateServant(servant : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	/** Given any Tie, return the corresponding object refernce, activating
	* the Servant if necessary.
	*/
	@:overload @:public @:static public static function activateTie(tie : javax.rmi.CORBA.Tie) : org.omg.CORBA.Object;
	
	/** This also gets the delegate from a Servant by
	* using Servant._this_object()
	*/
	@:overload @:public @:static public static function getDelegate(stub : Dynamic) : org.omg.CORBA.portable.Delegate;
	
	@:overload @:public @:static public static function getORB(stub : Dynamic) : org.omg.CORBA.ORB;
	
	@:overload @:public @:static public static function getTypeIds(stub : Dynamic) : java.NativeArray<String>;
	
	@:overload @:public @:static public static function connect(stub : Dynamic, orb : org.omg.CORBA.ORB) : Void;
	
	@:overload @:public @:static public static function isLocal(stub : Dynamic) : Bool;
	
	@:overload @:public @:static public static function request(stub : Dynamic, operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	
}
