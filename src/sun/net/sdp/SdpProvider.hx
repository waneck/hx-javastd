package sun.net.sdp;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SdpProvider extends sun.net.NetHooks.NetHooks_Provider
{
	@:overload public function new() : Void;
	
	@:overload override public function implBeforeTcpBind(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	@:overload override public function implBeforeTcpConnect(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	
}
@:native('sun$net$sdp$SdpProvider$Action') privateextern enum SdpProvider_Action
{
	BIND;
	CONNECT;
	
}

@:native('sun$net$sdp$SdpProvider$Rule') @:internal extern interface SdpProvider_Rule
{
	@:overload public function match(action : SdpProvider_Action, address : java.net.InetAddress, port : Int) : Bool;
	
	
}
@:native('sun$net$sdp$SdpProvider$PortRangeRule') @:internal extern class SdpProvider_PortRangeRule implements SdpProvider_Rule
{
	@:overload public function match(action : SdpProvider_Action, address : java.net.InetAddress, port : Int) : Bool;
	
	
}
@:native('sun$net$sdp$SdpProvider$AddressPortRangeRule') @:internal extern class SdpProvider_AddressPortRangeRule extends SdpProvider_PortRangeRule
{
	@:overload override public function match(action : SdpProvider_Action, address : java.net.InetAddress, port : Int) : Bool;
	
	
}
