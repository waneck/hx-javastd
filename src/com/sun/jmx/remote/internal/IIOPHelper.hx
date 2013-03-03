package com.sun.jmx.remote.internal;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOPHelper
{
	/**
	* Returns true if RMI-IIOP and CORBA is available.
	*/
	@:overload @:public @:static public static function isAvailable() : Bool;
	
	/**
	* Returns true if the given object is a Stub.
	*/
	@:overload @:public @:static public static function isStub(obj : Dynamic) : Bool;
	
	/**
	* Returns the Delegate to which the given Stub delegates.
	*/
	@:overload @:public @:static public static function getDelegate(stub : Dynamic) : Dynamic;
	
	/**
	* Sets the Delegate for a given Stub.
	*/
	@:overload @:public @:static public static function setDelegate(stub : Dynamic, delegate : Dynamic) : Void;
	
	/**
	* Returns the ORB associated with the given stub
	*
	* @throws  UnsupportedOperationException
	*          if the object does not support the operation that
	*          was invoked
	*/
	@:overload @:public @:static public static function getOrb(stub : Dynamic) : Dynamic;
	
	/**
	* Connects the Stub to the given ORB.
	*/
	@:overload @:public @:static public static function connect(stub : Dynamic, orb : Dynamic) : Void;
	
	/**
	* Returns true if the given object is an ORB.
	*/
	@:overload @:public @:static public static function isOrb(obj : Dynamic) : Bool;
	
	/**
	* Creates, and returns, a new ORB instance.
	*/
	@:overload @:public @:static public static function createOrb(args : java.NativeArray<String>, props : java.util.Properties) : Dynamic;
	
	/**
	* Converts a string, produced by the object_to_string method, back
	* to a CORBA object reference.
	*/
	@:overload @:public @:static public static function stringToObject(orb : Dynamic, str : String) : Dynamic;
	
	/**
	* Converts the given CORBA object reference to a string.
	*/
	@:overload @:public @:static public static function objectToString(orb : Dynamic, obj : Dynamic) : String;
	
	/**
	* Checks to ensure that an object of a remote or abstract interface
	* type can be cast to a desired type.
	*/
	@:overload @:public @:static public static function narrow<T>(narrowFrom : Dynamic, narrowTo : Class<T>) : T;
	
	/**
	* Makes a server object ready to receive remote calls
	*/
	@:overload @:public @:static public static function exportObject(obj : java.rmi.Remote) : Void;
	
	/**
	* Deregisters a server object from the runtime.
	*/
	@:overload @:public @:static public static function unexportObject(obj : java.rmi.Remote) : Void;
	
	/**
	* Returns a stub for the given server object.
	*/
	@:overload @:public @:static public static function toStub(obj : java.rmi.Remote) : java.rmi.Remote;
	
	
}
