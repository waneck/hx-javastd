package sun.rmi.transport;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DGCImpl implements java.rmi.dgc.DGC
{
	/**
	* The dirty call adds the VMID "vmid" to the set of clients
	* that hold references to the object associated with the ObjID
	* id.  The long "sequenceNum" is used to detect late dirty calls.  If
	* the VMID "vmid" is null, a VMID will be generated on the
	* server (for use by the client in subsequent calls) and
	* returned.
	*
	* The client must call the "dirty" method to renew the lease
	* before the "lease" time expires or all references to remote
	* objects in this VM that the client holds are considered
	* "unreferenced".
	*/
	@:overload public function dirty(ids : java.NativeArray<java.rmi.server.ObjID>, sequenceNum : haxe.Int64, lease : java.rmi.dgc.Lease) : java.rmi.dgc.Lease;
	
	/**
	* The clean call removes the VMID from the set of clients
	* that hold references to the object associated with the LiveRef
	* ref.  The sequence number is used to detect late clean calls.  If the
	* argument "strong" is true, then the clean call is a result of a
	* failed "dirty" call, thus the sequence number for the VMID needs
	* to be remembered until the client goes away.
	*/
	@:overload public function clean(ids : java.NativeArray<java.rmi.server.ObjID>, sequenceNum : haxe.Int64, vmid : java.rmi.dgc.VMID, strong : Bool) : Void;
	
	
}
@:native('sun$rmi$transport$DGCImpl$LeaseInfo') @:internal extern class DGCImpl_LeaseInfo
{
	
}
