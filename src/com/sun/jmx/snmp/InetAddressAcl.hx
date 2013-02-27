package com.sun.jmx.snmp;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
/**
* Defines the IP address based ACL used by the SNMP protocol adaptor.
* <p>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface InetAddressAcl
{
	/**
	* Returns the name of the ACL.
	*
	* @return The name of the ACL.
	*/
	@:overload public function getName() : java.lang.String.String;
	
	/**
	* Checks whether or not the specified host has <CODE>READ</CODE> access.
	*
	* @param address The host address to check.
	*
	* @return <CODE>true</CODE> if the host has read permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkReadPermission(address : java.net.InetAddress.InetAddress) : Bool;
	
	/**
	* Checks whether or not the specified host and community have <CODE>READ</CODE> access.
	*
	* @param address The host address to check.
	* @param community The community associated with the host.
	*
	* @return <CODE>true</CODE> if the pair (host, community) has read permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkReadPermission(address : java.net.InetAddress.InetAddress, community : java.lang.String.String) : Bool;
	
	/**
	* Checks whether or not a community string is defined.
	*
	* @param community The community to check.
	*
	* @return <CODE>true</CODE> if the community is known, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkCommunity(community : java.lang.String.String) : Bool;
	
	/**
	* Checks whether or not the specified host has <CODE>WRITE</CODE> access.
	*
	* @param address The host address to check.
	*
	* @return <CODE>true</CODE> if the host has write permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkWritePermission(address : java.net.InetAddress.InetAddress) : Bool;
	
	/**
	* Checks whether or not the specified host and community have <CODE>WRITE</CODE> access.
	*
	* @param address The host address to check.
	* @param community The community associated with the host.
	*
	* @return <CODE>true</CODE> if the pair (host, community) has write permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkWritePermission(address : java.net.InetAddress.InetAddress, community : java.lang.String.String) : Bool;
	
	/**
	* Returns an enumeration of trap destinations.
	*
	* @return An enumeration of the trap destinations (enumeration of <CODE>InetAddress</CODE>).
	*/
	@:overload public function getTrapDestinations() : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of trap communities for a given host.
	*
	* @param address The address of the host.
	*
	* @return An enumeration of trap communities for a given host (enumeration of <CODE>String</CODE>).
	*/
	@:overload public function getTrapCommunities(address : java.net.InetAddress.InetAddress) : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of inform destinations.
	*
	* @return An enumeration of the inform destinations (enumeration of <CODE>InetAddress</CODE>).
	*/
	@:overload public function getInformDestinations() : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of inform communities for a given host.
	*
	* @param address The address of the host.
	*
	* @return An enumeration of inform communities for a given host (enumeration of <CODE>String</CODE>).
	*/
	@:overload public function getInformCommunities(address : java.net.InetAddress.InetAddress) : java.util.Enumeration.Enumeration<Dynamic>;
	
	
}
