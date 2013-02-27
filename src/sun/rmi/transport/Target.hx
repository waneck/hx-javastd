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
extern class Target
{
	/**
	* Construct a Target for a remote object "impl" with
	* a specific object id.
	*
	* If "permanent" is true, then the impl is pinned permanently
	* (the impl will not be collected via distributed and/or local
	* GC).  If "on" is false, than the impl is subject to
	* collection. Permanent objects do not keep a server from
	* exiting.
	*/
	@:overload public function new(impl : java.rmi.Remote, disp : sun.rmi.server.Dispatcher, stub : java.rmi.Remote, id : java.rmi.server.ObjID, permanent : Bool) : Void;
	
	/** Get the stub (proxy) object for this target
	*/
	@:overload public function getStub() : java.rmi.Remote;
	
	/**
	* This method is called if the address space associated with the
	* vmid dies.  In that case, the vmid should be removed
	* from the reference set.
	*/
	@:overload @:synchronized public function vmidDead(vmid : java.rmi.dgc.VMID) : Void;
	
	
}
@:internal extern class SequenceEntry
{
	
}
