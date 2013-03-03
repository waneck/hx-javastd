package sun.rmi.transport;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DGCClient
{
	
}
/**
* EndpointEntry encapsulates the client-side DGC information specific
* to a particular Endpoint.  Of most significance is the table that
* maps LiveRef value to RefEntry objects and the renew/clean thread
* that handles asynchronous client-side DGC operations.
*/
@:native('sun$rmi$transport$DGCClient$EndpointEntry') @:internal extern class DGCClient_EndpointEntry
{
	/**
	* Look up the EndpointEntry for the given Endpoint.  An entry is
	* created if one does not already exist.
	*/
	@:overload @:public @:static public static function lookup(ep : sun.rmi.transport.Endpoint) : sun.rmi.transport.DGCClient.DGCClient_EndpointEntry;
	
	/**
	* Register the LiveRef instances in the supplied list to participate
	* in distributed garbage collection.
	*
	* This method returns false if this entry was removed from the
	* global endpoint table (because it was empty) before these refs
	* could be registered.  In that case, a new EndpointEntry needs
	* to be looked up.
	*
	* This method must NOT be called while synchronized on this entry.
	*/
	@:overload @:public public function registerRefs(refs : java.util.List<Dynamic>) : Bool;
	
	
}
/**
* RenewCleanThread handles the asynchronous client-side DGC activity
* for this entry: renewing the leases and making clean calls.
*/
@:native('sun$rmi$transport$DGCClient$EndpointEntry$RenewCleanThread') @:internal extern class DGCClient_EndpointEntry_RenewCleanThread implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
/**
* CleanRequest holds the data for the parameters of a clean call
* that needs to be made.
*/
@:native('sun$rmi$transport$DGCClient$EndpointEntry$CleanRequest') @:internal extern class DGCClient_EndpointEntry_CleanRequest
{
	
}
/**
* RefEntry encapsulates the client-side DGC information specific
* to a particular LiveRef value.  In particular, it contains a
* set of phantom references to all of the instances of the LiveRef
* value registered in the system (but not garbage collected
* locally).
*/
@:native('sun$rmi$transport$DGCClient$EndpointEntry$RefEntry') @:internal extern class DGCClient_EndpointEntry_RefEntry
{
	@:overload @:public public function new(ref : sun.rmi.transport.LiveRef) : Void;
	
	/**
	* Return the LiveRef value for this entry (not a registered
	* instance).
	*/
	@:overload @:public public function getRef() : sun.rmi.transport.LiveRef;
	
	/**
	* Add a LiveRef to the set of registered instances for this entry.
	*
	* This method must ONLY be invoked while synchronized on this
	* RefEntry's EndpointEntry.
	*/
	@:overload @:public public function addInstanceToRefSet(ref : sun.rmi.transport.LiveRef) : Void;
	
	/**
	* Remove a PhantomLiveRef from the set of registered instances.
	*
	* This method must ONLY be invoked while synchronized on this
	* RefEntry's EndpointEntry.
	*/
	@:overload @:public public function removeInstanceFromRefSet(phantom : sun.rmi.transport.DGCClient.DGCClient_EndpointEntry_RefEntry_PhantomLiveRef) : Void;
	
	/**
	* Return true if there are no registered LiveRef instances for
	* this entry still reachable in this VM.
	*
	* This method must ONLY be invoked while synchronized on this
	* RefEntry's EndpointEntry.
	*/
	@:overload @:public public function isRefSetEmpty() : Bool;
	
	/**
	* Record that a dirty call that explicitly contained this
	* entry's ref has failed.
	*
	* This method must ONLY be invoked while synchronized on this
	* RefEntry's EndpointEntry.
	*/
	@:overload @:public public function markDirtyFailed() : Void;
	
	/**
	* Return true if a dirty call that explicitly contained this
	* entry's ref has failed (and therefore a clean call for this
	* ref needs to be marked "strong").
	*
	* This method must ONLY be invoked while synchronized on this
	* RefEntry's EndpointEntry.
	*/
	@:overload @:public public function hasDirtyFailed() : Bool;
	
	
}
/**
* PhantomLiveRef is a PhantomReference to a LiveRef instance,
* used to detect when the LiveRef becomes permanently
* unreachable in this VM.
*/
@:native('sun$rmi$transport$DGCClient$EndpointEntry$RefEntry$PhantomLiveRef') @:internal extern class DGCClient_EndpointEntry_RefEntry_PhantomLiveRef extends java.lang.ref.PhantomReference<Dynamic>
{
	@:overload @:public public function new(ref : sun.rmi.transport.LiveRef) : Void;
	
	@:overload @:public public function getRefEntry() : sun.rmi.transport.DGCClient.DGCClient_EndpointEntry_RefEntry;
	
	
}
