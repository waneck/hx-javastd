package sun.rmi.server;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class UnicastRef implements java.rmi.server.RemoteRef
{
	/**
	* Client-side transport log.
	*/
	public static var clientRefLog(default, null) : sun.rmi.runtime.Log;
	
	/**
	* Client-side call log.
	*/
	public static var clientCallLog(default, null) : sun.rmi.runtime.Log;
	
	private var ref : sun.rmi.transport.LiveRef;
	
	/**
	* Create a new (empty) Unicast remote reference.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new Unicast RemoteRef.
	*/
	@:overload public function new(liveRef : sun.rmi.transport.LiveRef) : Void;
	
	/**
	* Returns the current value of this UnicastRef's underlying
	* LiveRef.
	*
	* NOTE: There is a JDK-internal dependency on the existence of
	* this method (as it is inherited by UnicastRef) in the
	* implementation of javax.management.remote.rmi.RMIConnector.
	**/
	@:overload public function getLiveRef() : sun.rmi.transport.LiveRef;
	
	/**
	* Invoke a method. This form of delegating method invocation
	* to the reference allows the reference to take care of
	* setting up the connection to the remote host, marshalling
	* some representation for the method and parameters, then
	* communicating the method invocation to the remote host.
	* This method either returns the result of a method invocation
	* on the remote object which resides on the remote host or
	* throws a RemoteException if the call failed or an
	* application-level exception if the remote invocation throws
	* an exception.
	*
	* @param obj the proxy for the remote object
	* @param method the method to be invoked
	* @param params the parameter list
	* @param opnum  a hash that may be used to represent the method
	* @since 1.2
	*/
	@:require(java2) @:overload public function invoke(obj : java.rmi.Remote, method : java.lang.reflect.Method, params : java.NativeArray<Dynamic>, opnum : haxe.Int64) : Dynamic;
	
	@:overload private function marshalCustomCallData(out : java.io.ObjectOutput) : Void;
	
	/**
	* Marshal value to an ObjectOutput sink using RMI's serialization
	* format for parameters or return values.
	*/
	@:overload private static function marshalValue(type : Class<Dynamic>, value : Dynamic, out : java.io.ObjectOutput) : Void;
	
	/**
	* Unmarshal value from an ObjectInput source using RMI's serialization
	* format for parameters or return values.
	*/
	@:overload private static function unmarshalValue(type : Class<Dynamic>, _in : java.io.ObjectInput) : Dynamic;
	
	/**
	* Create an appropriate call object for a new call on this object.
	* Passing operation array and index, allows the stubs generator to
	* assign the operation indexes and interpret them. The RemoteRef
	* may need the operation to encode in for the call.
	*/
	@:overload public function newCall(obj : java.rmi.server.RemoteObject, ops : java.NativeArray<java.rmi.server.Operation>, opnum : Int, hash : haxe.Int64) : java.rmi.server.RemoteCall;
	
	/**
	* Invoke makes the remote call present in the RemoteCall object.
	*
	* Invoke will raise any "user" exceptions which
	* should pass through and not be caught by the stub.  If any
	* exception is raised during the remote invocation, invoke should
	* take care of cleaning up the connection before raising the
	* "user" or remote exception.
	*/
	@:overload public function invoke(call : java.rmi.server.RemoteCall) : Void;
	
	/**
	* Done should only be called if the invoke returns successfully
	* (non-exceptionally) to the stub. It allows the remote reference to
	* clean up (or reuse) the connection.
	*/
	@:overload public function done(call : java.rmi.server.RemoteCall) : Void;
	
	/**
	* Returns the class of the ref type to be serialized
	*/
	@:overload public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* Write out external representation for remote ref.
	*/
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* Read in external representation for remote ref.
	* @exception ClassNotFoundException If the class for an object
	* being restored cannot be found.
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	/**
	* Method from object, forward from RemoteObject
	*/
	@:overload public function remoteToString() : String;
	
	/**
	* default implementation of hashCode for remote objects
	*/
	@:overload public function remoteHashCode() : Int;
	
	/** default implementation of equals for remote objects
	*/
	@:overload public function remoteEquals(sub : java.rmi.server.RemoteRef) : Bool;
	
	
}
