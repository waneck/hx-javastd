package sun.rmi.server;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class UnicastServerRef extends sun.rmi.server.UnicastRef implements java.rmi.server.ServerRef implements sun.rmi.server.Dispatcher
{
	/** value of server call log property */
	public static var logCalls(default, null) : Bool;
	
	/** server call log */
	public static var callLog(default, null) : sun.rmi.runtime.Log;
	
	/**
	* Create a new (empty) Unicast server remote reference.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a Unicast server remote reference for a specified
	* liveRef.
	*/
	@:overload public function new(ref : sun.rmi.transport.LiveRef) : Void;
	
	/**
	* Construct a Unicast server remote reference to be exported
	* on the specified port.
	*/
	@:overload public function new(port : Int) : Void;
	
	/**
	* Constructs a UnicastServerRef to be exported on an
	* anonymous port (i.e., 0) and that uses a pregenerated stub class
	* (NOT a dynamic proxy instance) if 'forceStubUse' is 'true'.
	*
	* This constructor is only called by the method
	* UnicastRemoteObject.exportObject(Remote) passing 'true' for
	* 'forceStubUse'.  The UnicastRemoteObject.exportObject(Remote) method
	* returns RemoteStub, so it must ensure that the stub for the
	* exported object is an instance of a pregenerated stub class that
	* extends RemoteStub (instead of an instance of a dynamic proxy class
	* which is not an instance of RemoteStub).
	**/
	@:overload public function new(forceStubUse : Bool) : Void;
	
	/**
	* With the addition of support for dynamic proxies as stubs, this
	* method is obsolete because it returns RemoteStub instead of the more
	* general Remote.  It should not be called.  It sets the
	* 'forceStubUse' flag to true so that the stub for the exported object
	* is forced to be an instance of the pregenerated stub class, which
	* extends RemoteStub.
	*
	* Export this object, create the skeleton and stubs for this
	* dispatcher.  Create a stub based on the type of the impl,
	* initialize it with the appropriate remote reference. Create the
	* target defined by the impl, dispatcher (this) and stub.
	* Export that target via the Ref.
	**/
	@:overload public function exportObject(impl : java.rmi.Remote, data : Dynamic) : java.rmi.server.RemoteStub;
	
	/**
	* Export this object, create the skeleton and stubs for this
	* dispatcher.  Create a stub based on the type of the impl,
	* initialize it with the appropriate remote reference. Create the
	* target defined by the impl, dispatcher (this) and stub.
	* Export that target via the Ref.
	*/
	@:overload public function exportObject(impl : java.rmi.Remote, data : Dynamic, permanent : Bool) : java.rmi.Remote;
	
	/**
	* Return the hostname of the current client.  When called from a
	* thread actively handling a remote method invocation the
	* hostname of the client is returned.
	* @exception ServerNotActiveException If called outside of servicing
	* a remote method invocation.
	*/
	@:overload public function getClientHost() : String;
	
	/**
	* Discovers and sets the appropriate skeleton for the impl.
	*/
	@:overload public function setSkeleton(impl : java.rmi.Remote) : Void;
	
	/**
	* Call to dispatch to the remote object (on the server side).
	* The up-call to the server and the marshalling of return result
	* (or exception) should be handled before returning from this
	* method.
	* @param obj the target remote object for the call
	* @param call the "remote call" from which operation and
	* method arguments can be obtained.
	* @exception IOException If unable to marshal return result or
	* release input or output streams
	*/
	@:overload public function dispatch(obj : java.rmi.Remote, call : java.rmi.server.RemoteCall) : Void;
	
	@:overload private function unmarshalCustomCallData(_in : java.io.ObjectInput) : Void;
	
	/**
	* Handle server-side dispatch using the RMI 1.1 stub/skeleton
	* protocol, given a non-negative operation number that has
	* already been read from the call stream.
	*
	* @param obj the target remote object for the call
	* @param call the "remote call" from which operation and
	* method arguments can be obtained.
	* @param op the operation number
	* @exception IOException if unable to marshal return result or
	* release input or output streams
	*/
	@:overload public function oldDispatch(obj : java.rmi.Remote, call : java.rmi.server.RemoteCall, op : Int) : Void;
	
	/**
	* Clear the stack trace of the given Throwable by replacing it with
	* an empty StackTraceElement array, and do the same for all of its
	* chained causative exceptions.
	*/
	@:overload public static function clearStackTraces(t : java.lang.Throwable) : Void;
	
	/**
	* Returns the class of the ref type to be serialized.
	*/
	@:overload override public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* Return the client remote reference for this remoteRef.
	* In the case of a client RemoteRef "this" is the answer.
	* For a server remote reference, a client side one will have to
	* found or created.
	*/
	@:overload private function getClientRef() : java.rmi.server.RemoteRef;
	
	/**
	* Write out external representation for remote ref.
	*/
	@:overload override public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* Read in external representation for remote ref.
	* @exception ClassNotFoundException If the class for an object
	* being restored cannot be found.
	*/
	@:overload override public function readExternal(_in : java.io.ObjectInput) : Void;
	
	
}
/**
* A weak hash map, mapping classes to hash maps that map method
* hashes to method objects.
**/
@:native('sun$rmi$server$UnicastServerRef$HashToMethod_Maps') @:internal extern class UnicastServerRef_HashToMethod_Maps extends sun.rmi.server.WeakClassHashMap<java.util.Map<Null<haxe.Int64>, java.lang.reflect.Method>>
{
	@:overload override private function computeValue(remoteClass : Class<Dynamic>) : java.util.Map<Null<haxe.Int64>, java.lang.reflect.Method>;
	
	
}
