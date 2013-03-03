package sun.rmi.server;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivatableRef implements java.rmi.server.RemoteRef
{
	@:protected private var id : java.rmi.activation.ActivationID;
	
	@:protected private var ref : java.rmi.server.RemoteRef;
	
	/**
	* Create a new (empty) ActivatableRef
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a ActivatableRef with the specified id
	*/
	@:overload @:public public function new(id : java.rmi.activation.ActivationID, ref : java.rmi.server.RemoteRef) : Void;
	
	/**
	* Returns the stub for the remote object whose class is
	* specified in the activation descriptor. The ActivatableRef
	* in the resulting stub has its activation id set to the
	* activation id supplied as the second argument.
	*/
	@:overload @:public @:static public static function getStub(desc : java.rmi.activation.ActivationDesc, id : java.rmi.activation.ActivationID) : java.rmi.Remote;
	
	/**
	* Invoke method on remote object. This method delegates remote
	* method invocation to the underlying ref type.  If the
	* underlying reference is not known (is null), then the object
	* must be activated first.  If an attempt at method invocation
	* fails, the object should force reactivation.  Method invocation
	* must preserve "at most once" call semantics.  In RMI, "at most
	* once" applies to parameter deserialization at the remote site
	* and the remote object's method execution.  "At most once" does
	* not apply to parameter serialization at the client so the
	* parameters of a call don't need to be buffered in anticipation
	* of call retry. Thus, a method call is only be retried if the
	* initial method invocation does not execute at all at the server
	* (including parameter deserialization).
	*/
	@:overload @:public public function invoke(obj : java.rmi.Remote, method : java.lang.reflect.Method, params : java.NativeArray<Dynamic>, opnum : haxe.Int64) : Dynamic;
	
	/**
	* This call is used by the old 1.1 stub protocol and is
	* unsupported since activation requires 1.2 stubs.
	*/
	@:overload @:public @:synchronized public function newCall(obj : java.rmi.server.RemoteObject, ops : java.NativeArray<java.rmi.server.Operation>, opnum : Int, hash : haxe.Int64) : java.rmi.server.RemoteCall;
	
	/**
	* This call is used by the old 1.1 stub protocol and is
	* unsupported since activation requires 1.2 stubs.
	*/
	@:overload @:public public function invoke(call : java.rmi.server.RemoteCall) : Void;
	
	/**
	* This call is used by the old 1.1 stub protocol and is
	* unsupported since activation requires 1.2 stubs.
	*/
	@:overload @:public public function done(call : java.rmi.server.RemoteCall) : Void;
	
	/**
	* Returns the class of the ref type to be serialized
	*/
	@:overload @:public public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* Write out external representation for remote ref.
	*/
	@:overload @:public public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* Read in external representation for remote ref.
	* @exception ClassNotFoundException If the class for an object
	* being restored cannot be found.
	*/
	@:overload @:public public function readExternal(_in : java.io.ObjectInput) : Void;
	
	/**
	* Method from object, forward from RemoteObject
	*/
	@:overload @:public public function remoteToString() : String;
	
	/**
	* default implementation of hashCode for remote objects
	*/
	@:overload @:public public function remoteHashCode() : Int;
	
	/** default implementation of equals for remote objects
	*/
	@:overload @:public public function remoteEquals(ref : java.rmi.server.RemoteRef) : Bool;
	
	
}
