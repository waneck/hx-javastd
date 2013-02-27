package java.net;
/*
* Copyright (c) 2002, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Inet6AddressImpl implements java.net.InetAddressImpl
{
	/*
	* Package private implementation of InetAddressImpl for dual
	* IPv4/IPv6 stack.
	* <p>
	* If InetAddress.preferIPv6Address is true then anyLocalAddress(),
	* loopbackAddress(), and localHost() will return IPv6 addresses,
	* otherwise IPv4 addresses.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:native public function getLocalHostName() : String;
	
	@:overload @:native public function lookupAllHostAddr(hostname : String) : java.NativeArray<java.net.InetAddress>;
	
	@:overload @:native public function getHostByAddr(addr : java.NativeArray<java.StdTypes.Int8>) : String;
	
	@:overload public function isReachable(addr : java.net.InetAddress, timeout : Int, netif : java.net.NetworkInterface, ttl : Int) : Bool;
	
	@:overload @:synchronized public function anyLocalAddress() : java.net.InetAddress;
	
	@:overload @:synchronized public function loopbackAddress() : java.net.InetAddress;
	
	
}
