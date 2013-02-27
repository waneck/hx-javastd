package java.rmi.dgc;
/*
* Copyright (c) 1996, 1998, Oracle and/or its affiliates. All rights reserved.
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
/**
* A lease contains a unique VM identifier and a lease duration. A
* Lease object is used to request and grant leases to remote object
* references.
*/
extern class Lease implements java.io.Serializable
{
	/**
	* Constructs a lease with a specific VMID and lease duration. The
	* vmid may be null.
	* @param id VMID associated with this lease
	* @param duration lease duration
	*/
	@:overload public function new(id : java.rmi.dgc.VMID, duration : haxe.Int64) : Void;
	
	/**
	* Returns the client VMID associated with the lease.
	* @return client VMID
	*/
	@:overload public function getVMID() : java.rmi.dgc.VMID;
	
	/**
	* Returns the lease duration.
	* @return lease duration
	*/
	@:overload public function getValue() : haxe.Int64;
	
	
}
