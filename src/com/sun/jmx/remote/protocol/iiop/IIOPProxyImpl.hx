package com.sun.jmx.remote.protocol.iiop;
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
extern class IIOPProxyImpl implements com.sun.jmx.remote.internal.IIOPProxy
{
	/**
	* An implementatin of IIOPProxy that simply delegates to the appropriate
	* RMI-IIOP and CORBA APIs.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function isStub(obj : Dynamic) : Bool;
	
	@:overload @:public public function getDelegate(stub : Dynamic) : Dynamic;
	
	@:overload @:public public function setDelegate(stub : Dynamic, delegate : Dynamic) : Void;
	
	@:overload @:public public function getOrb(stub : Dynamic) : Dynamic;
	
	@:overload @:public public function connect(stub : Dynamic, orb : Dynamic) : Void;
	
	@:overload @:public public function isOrb(obj : Dynamic) : Bool;
	
	@:overload @:public public function createOrb(args : java.NativeArray<String>, props : java.util.Properties) : Dynamic;
	
	@:overload @:public public function stringToObject(orb : Dynamic, str : String) : Dynamic;
	
	@:overload @:public public function objectToString(orb : Dynamic, obj : Dynamic) : String;
	
	@:overload @:public public function narrow<T>(narrowFrom : Dynamic, narrowTo : Class<T>) : T;
	
	@:overload @:public public function exportObject(obj : java.rmi.Remote) : Void;
	
	@:overload @:public public function unexportObject(obj : java.rmi.Remote) : Void;
	
	@:overload @:public public function toStub(obj : java.rmi.Remote) : java.rmi.Remote;
	
	
}
