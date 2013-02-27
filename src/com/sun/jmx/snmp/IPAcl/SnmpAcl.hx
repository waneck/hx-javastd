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
//// java import
////
//// SNMP Runtime import
////
/**
* Defines an implementation of the {@link com.sun.jmx.snmp.InetAddressAcl InetAddressAcl} interface.
* <p>
* In this implementation the ACL information is stored on a flat file and
* its default location is "$JRE/lib/snmp.acl" - See
* {@link #getDefaultAclFileName()}
* <p>
* <OL>
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpAcl implements com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl implements java.io.Serializable.Serializable
{
	/**
	* Constructs the Java Dynamic Management(TM) Access Control List
	* based on IP addresses. The ACL will take the given owner name.
	* The current IP address will be the owner of the ACL.
	*
	* @param Owner The name of the ACL Owner.
	*
	* @exception UnknownHostException If the local host is unknown.
	* @exception IllegalArgumentException If the ACL file doesn't exist.
	*/
	@:overload public function new(Owner : java.lang.String.String) : Void;
	
	/**
	* Constructs the Java Dynamic Management(TM) Access Control List
	* based on IP addresses. The ACL will take the given owner name.
	* The current IP address will be the owner of the ACL.
	*
	* @param Owner The name of the ACL Owner.
	* @param aclFileName The name of the ACL File.
	*
	* @exception UnknownHostException If the local host is unknown.
	* @exception IllegalArgumentException If the ACL file doesn't exist.
	*/
	@:overload public function new(Owner : java.lang.String.String, aclFileName : java.lang.String.String) : Void;
	
	/**
	* Returns an enumeration of the entries in this ACL. Each element in the
	* enumeration is of type <CODE>java.security.acl.AclEntry</CODE>.
	*
	* @return An enumeration of the entries in this ACL.
	*/
	@:overload public function entries() : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns ann enumeration of community strings. Community strings are returned as String.
	* @return The enumeration of community strings.
	*/
	@:overload public function communities() : java.util.Enumeration.Enumeration<java.lang.String.String>;
	
	/**
	* Returns the name of the ACL.
	*
	* @return The name of the ACL.
	*/
	@:overload public function getName() : java.lang.String.String;
	
	/**
	* Returns the read permission instance used.
	*
	* @return The read permission instance.
	*/
	@:overload public static function getREAD() : com.sun.jmx.snmp.IPAcl.PermissionImpl.PermissionImpl;
	
	/**
	* Returns the write permission instance used.
	*
	* @return  The write permission instance.
	*/
	@:overload public static function getWRITE() : com.sun.jmx.snmp.IPAcl.PermissionImpl.PermissionImpl;
	
	/**
	* Get the default name for the ACL file.
	* In this implementation this is "$JRE/lib/snmp.acl"
	* @return The default name for the ACL file.
	**/
	@:overload public static function getDefaultAclFileName() : java.lang.String.String;
	
	/**
	* Sets the full path of the file containing the ACL information.
	*
	* @param filename The full path of the file containing the ACL information.
	* @throws IllegalArgumentException If the passed ACL file doesn't exist.
	*/
	@:overload public function setAuthorizedListFile(filename : java.lang.String.String) : Void;
	
	/**
	* Resets this ACL to the values contained in the configuration file.
	*
	* @exception NotOwnerException If the principal attempting the reset is not an owner of this ACL.
	* @exception UnknownHostException If IP addresses for hosts contained in the ACL file couldn't be found.
	*/
	@:overload public function rereadTheFile() : Void;
	
	/**
	* Returns the full path of the file used to get ACL information.
	*
	* @return The full path of the file used to get ACL information.
	*/
	@:overload public function getAuthorizedListFile() : java.lang.String.String;
	
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
	* @param i The address of the host.
	*
	* @return An enumeration of trap communities for a given host (enumeration of <CODE>String</CODE>).
	*/
	@:overload public function getTrapCommunities(i : java.net.InetAddress.InetAddress) : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of inform destinations.
	*
	* @return An enumeration of the inform destinations (enumeration of <CODE>InetAddress</CODE>).
	*/
	@:overload public function getInformDestinations() : java.util.Enumeration.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of inform communities for a given host.
	*
	* @param i The address of the host.
	*
	* @return An enumeration of inform communities for a given host (enumeration of <CODE>String</CODE>).
	*/
	@:overload public function getInformCommunities(i : java.net.InetAddress.InetAddress) : java.util.Enumeration.Enumeration<Dynamic>;
	
	
}
