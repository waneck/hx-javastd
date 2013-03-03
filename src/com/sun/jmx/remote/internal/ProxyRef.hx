package com.sun.jmx.remote.internal;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxyRef implements java.rmi.server.RemoteRef
{
	@:overload @:public public function new(ref : java.rmi.server.RemoteRef) : Void;
	
	@:overload @:public public function readExternal(_in : java.io.ObjectInput) : Void;
	
	@:overload @:public public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* @deprecated
	*/
	@:overload @:public public function invoke(call : java.rmi.server.RemoteCall) : Void;
	
	@:overload @:public public function invoke(obj : java.rmi.Remote, method : java.lang.reflect.Method, params : java.NativeArray<Dynamic>, opnum : haxe.Int64) : Dynamic;
	
	/**
	* @deprecated
	*/
	@:overload @:public public function done(call : java.rmi.server.RemoteCall) : Void;
	
	@:overload @:public public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* @deprecated
	*/
	@:overload @:public public function newCall(obj : java.rmi.server.RemoteObject, op : java.NativeArray<java.rmi.server.Operation>, opnum : Int, hash : haxe.Int64) : java.rmi.server.RemoteCall;
	
	@:overload @:public public function remoteEquals(obj : java.rmi.server.RemoteRef) : Bool;
	
	@:overload @:public public function remoteHashCode() : Int;
	
	@:overload @:public public function remoteToString() : String;
	
	@:protected private var ref : java.rmi.server.RemoteRef;
	
	
}
