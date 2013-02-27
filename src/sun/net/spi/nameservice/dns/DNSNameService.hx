package sun.net.spi.nameservice.dns;
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
/*
* A name service provider based on JNDI-DNS.
*/
extern class DNSNameService implements sun.net.spi.nameservice.NameService
{
	@:overload public function new() : Void;
	
	@:overload public function lookupAllHostAddr(host : String) : java.NativeArray<java.net.InetAddress>;
	
	/**
	* Reverse lookup code. I.E: find a host name from an IP address.
	* IPv4 addresses are mapped in the IN-ADDR.ARPA. top domain, while
	* IPv6 addresses can be in IP6.ARPA or IP6.INT.
	* In both cases the address has to be converted into a dotted form.
	*/
	@:overload public function getHostByAddr(addr : java.NativeArray<java.StdTypes.Int8>) : String;
	
	
}
@:native('sun$net$spi$nameservice$dns$DNSNameService$ThreadContext') @:internal extern class DNSNameService_ThreadContext
{
	@:overload public function new(dirCtxt : javax.naming.directory.DirContext, nsList : java.util.List<String>) : Void;
	
	@:overload public function dirContext() : javax.naming.directory.DirContext;
	
	@:overload public function nameservers() : java.util.List<String>;
	
	
}
