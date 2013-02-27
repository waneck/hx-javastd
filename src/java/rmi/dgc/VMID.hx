package java.rmi.dgc;
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
/**
* A VMID is a identifier that is unique across all Java virtual
* machines.  VMIDs are used by the distributed garbage collector
* to identify client VMs.
*
* @author      Ann Wollrath
* @author      Peter Jones
*/
extern class VMID implements java.io.Serializable
{
	/**
	* Create a new VMID.  Each new VMID returned from this constructor
	* is unique for all Java virtual machines under the following
	* conditions: a) the conditions for uniqueness for objects of
	* the class <code>java.rmi.server.UID</code> are satisfied, and b) an
	* address can be obtained for this host that is unique and constant
	* for the lifetime of this object.  <p>
	*/
	@:overload public function new() : Void;
	
	/**
	* Return true if an accurate address can be determined for this
	* host.  If false, reliable VMID cannot be generated from this host
	* @return true if host address can be determined, false otherwise
	* @deprecated
	*/
	@:overload public static function isUnique() : Bool;
	
	/**
	* Compute hash code for this VMID.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compare this VMID to another, and return true if they are the
	* same identifier.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return string representation of this VMID.
	*/
	@:overload public function toString() : String;
	
	
}
