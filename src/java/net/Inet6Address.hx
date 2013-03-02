package java.net;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Inet6Address extends java.net.InetAddress
{
	/**
	* Create an Inet6Address in the exact manner of {@link InetAddress#getByAddress(String,byte[])}
	* except that the IPv6 scope_id is set to the value corresponding to the given interface
	* for the address type specified in <code>addr</code>.
	* The call will fail with an UnknownHostException if the given interface does not have a numeric
	* scope_id assigned for the given address type (eg. link-local or site-local).
	* See <a href="Inet6Address.html#scoped">here</a> for a description of IPv6
	* scoped addresses.
	*
	* @param host the specified host
	* @param addr the raw IP address in network byte order
	* @param nif an interface this address must be associated with.
	* @return  an Inet6Address object created from the raw IP address.
	* @exception  UnknownHostException  if IP address is of illegal length, or if the interface
	*          does not have a numeric scope_id assigned for the given address type.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public static function getByAddress(host : String, addr : java.NativeArray<java.StdTypes.Int8>, nif : java.net.NetworkInterface) : java.net.Inet6Address;
	
	/**
	* Create an Inet6Address in the exact manner of {@link InetAddress#getByAddress(String,byte[])}
	* except that the IPv6 scope_id is set to the given numeric value.
	* The scope_id is not checked to determine if it corresponds to any interface on the system.
	* See <a href="Inet6Address.html#scoped">here</a> for a description of IPv6
	* scoped addresses.
	*
	* @param host the specified host
	* @param addr the raw IP address in network byte order
	* @param scope_id the numeric scope_id for the address.
	* @return  an Inet6Address object created from the raw IP address.
	* @exception  UnknownHostException  if IP address is of illegal length.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public static function getByAddress(host : String, addr : java.NativeArray<java.StdTypes.Int8>, scope_id : Int) : java.net.Inet6Address;
	
	/**
	* Utility routine to check if the InetAddress is an IP multicast
	* address. 11111111 at the start of the address identifies the
	* address as being a multicast address.
	*
	* @return a <code>boolean</code> indicating if the InetAddress is
	* an IP multicast address
	* @since JDK1.1
	*/
	@:require(java1) @:overload override public function isMulticastAddress() : Bool;
	
	/**
	* Utility routine to check if the InetAddress in a wildcard address.
	* @return a <code>boolean</code> indicating if the Inetaddress is
	*         a wildcard address.
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isAnyLocalAddress() : Bool;
	
	/**
	* Utility routine to check if the InetAddress is a loopback address.
	*
	* @return a <code>boolean</code> indicating if the InetAddress is
	* a loopback address; or false otherwise.
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isLoopbackAddress() : Bool;
	
	/**
	* Utility routine to check if the InetAddress is an link local address.
	*
	* @return a <code>boolean</code> indicating if the InetAddress is
	* a link local address; or false if address is not a link local unicast address.
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isLinkLocalAddress() : Bool;
	
	/**
	* Utility routine to check if the InetAddress is a site local address.
	*
	* @return a <code>boolean</code> indicating if the InetAddress is
	* a site local address; or false if address is not a site local unicast address.
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isSiteLocalAddress() : Bool;
	
	/**
	* Utility routine to check if the multicast address has global scope.
	*
	* @return a <code>boolean</code> indicating if the address has
	*         is a multicast address of global scope, false if it is not
	*         of global scope or it is not a multicast address
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isMCGlobal() : Bool;
	
	/**
	* Utility routine to check if the multicast address has node scope.
	*
	* @return a <code>boolean</code> indicating if the address has
	*         is a multicast address of node-local scope, false if it is not
	*         of node-local scope or it is not a multicast address
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isMCNodeLocal() : Bool;
	
	/**
	* Utility routine to check if the multicast address has link scope.
	*
	* @return a <code>boolean</code> indicating if the address has
	*         is a multicast address of link-local scope, false if it is not
	*         of link-local scope or it is not a multicast address
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isMCLinkLocal() : Bool;
	
	/**
	* Utility routine to check if the multicast address has site scope.
	*
	* @return a <code>boolean</code> indicating if the address has
	*         is a multicast address of site-local scope, false if it is not
	*         of site-local scope or it is not a multicast address
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isMCSiteLocal() : Bool;
	
	/**
	* Utility routine to check if the multicast address has organization scope.
	*
	* @return a <code>boolean</code> indicating if the address has
	*         is a multicast address of organization-local scope,
	*         false if it is not of organization-local scope
	*         or it is not a multicast address
	* @since 1.4
	*/
	@:require(java4) @:overload override public function isMCOrgLocal() : Bool;
	
	/**
	* Returns the raw IP address of this <code>InetAddress</code>
	* object. The result is in network byte order: the highest order
	* byte of the address is in <code>getAddress()[0]</code>.
	*
	* @return  the raw IP address of this object.
	*/
	@:overload override public function getAddress() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the numeric scopeId, if this instance is associated with
	* an interface. If no scoped_id is set, the returned value is zero.
	*
	* @return the scopeId, or zero if not set.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getScopeId() : Int;
	
	/**
	* Returns the scoped interface, if this instance was created with
	* with a scoped interface.
	*
	* @return the scoped interface, or null if not set.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getScopedInterface() : java.net.NetworkInterface;
	
	/**
	* Returns the IP address string in textual presentation. If the instance was created
	* specifying a scope identifier then the scope id is appended to the IP address preceded by
	* a "%" (per-cent) character. This can be either a numeric value or a string, depending on which
	* was used to createthe instance.
	*
	* @return  the raw IP address in a string format.
	*/
	@:overload override public function getHostAddress() : String;
	
	/**
	* Returns a hashcode for this IP address.
	*
	* @return  a hash code value for this IP address.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Compares this object against the specified object.
	* The result is <code>true</code> if and only if the argument is
	* not <code>null</code> and it represents the same IP address as
	* this object.
	* <p>
	* Two instances of <code>InetAddress</code> represent the same IP
	* address if the length of the byte arrays returned by
	* <code>getAddress</code> is the same for both, and each of the
	* array components is the same for the byte arrays.
	*
	* @param   obj   the object to compare against.
	* @return  <code>true</code> if the objects are the same;
	*          <code>false</code> otherwise.
	* @see     java.net.InetAddress#getAddress()
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Utility routine to check if the InetAddress is an
	* IPv4 compatible IPv6 address.
	*
	* @return a <code>boolean</code> indicating if the InetAddress is
	* an IPv4 compatible IPv6 address; or false if address is IPv4 address.
	* @since 1.4
	*/
	@:require(java4) @:overload public function isIPv4CompatibleAddress() : Bool;
	
	
}
