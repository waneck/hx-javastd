package sun.management.snmp.jvminstr;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* Notification Target data.
*/
extern class NotificationTargetImpl implements sun.management.snmp.jvminstr.NotificationTarget.NotificationTarget
{
	/**
	* Target parameter is a <CODE>java.lang.String</CODE>
	* target synctax is <host>:<port>:community. Eg: "localhost:163:private".
	* <p>The <code><em>host</em></code> is a host name, an IPv4 numeric
	* host address, or an IPv6 numeric address enclosed in square
	* brackets.</p>
	* @throws IllegalArgumentException In case the target is malformed
	*/
	@:overload public function new(target : java.lang.String.String) : Void;
	
	@:overload public function new(address : java.lang.String.String, port : Int, community : java.lang.String.String) : Void;
	
	@:overload public function new(address : java.net.InetAddress.InetAddress, port : Int, community : java.lang.String.String) : Void;
	
	@:overload public function getCommunity() : java.lang.String.String;
	
	@:overload public function getAddress() : java.net.InetAddress.InetAddress;
	
	@:overload public function getPort() : Int;
	
	@:overload public function toString() : java.lang.String.String;
	
	
}
