package com.sun.jmx.snmp.IPAcl;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Principal represents a host.
*
*/
@:internal extern class PrincipalImpl implements java.security.Principal implements java.io.Serializable.Serializable
{
	/**
	* Constructs a principal with the local host.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a principal using the specified host.
	* <P>
	* The host can be either:
	* <UL>
	* <LI> a host name
	* <LI> an IP address
	* </UL>
	*
	* @param hostName the host used to make the principal.
	*/
	@:overload public function new(hostName : java.lang.String.String) : Void;
	
	/**
	* Constructs a principal using an Internet Protocol (IP) address.
	*
	* @param address the Internet Protocol (IP) address.
	*/
	@:overload public function new(address : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Returns the name of this principal.
	*
	* @return the name of this principal.
	*/
	@:overload public function getName() : java.lang.String.String;
	
	/**
	* Compares this principal to the specified object. Returns true if the
	* object passed in matches the principal
	* represented by the implementation of this interface.
	*
	* @param a the principal to compare with.
	* @return true if the principal passed in is the same as that encapsulated by this principal, false otherwise.
	*/
	@:overload public function equals(a : java.lang.Object.Object) : Bool;
	
	/**
	* Returns a hashcode for this principal.
	*
	* @return a hashcode for this principal.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of this principal. In case of multiple address, the first one is returned.
	*
	* @return a string representation of this principal.
	*/
	@:overload public function toString() : java.lang.String.String;
	
	/**
	* Returns the Internet Protocol (IP) address for this principal. In case of multiple address, the first one is returned.
	*
	* @return the Internet Protocol (IP) address for this principal.
	*/
	@:overload public function getAddress() : java.net.InetAddress.InetAddress;
	
	/**
	* Returns the Internet Protocol (IP) address for this principal. In case of multiple address, the first one is returned.
	*
	* @return the array of Internet Protocol (IP) addresses for this principal.
	*/
	@:overload public function getAddresses() : java.NativeArray<java.net.InetAddress.InetAddress>;
	
	
}
