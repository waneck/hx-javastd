package java.net;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PlainDatagramSocketImpl extends java.net.AbstractPlainDatagramSocketImpl
{
	@:overload @:protected @:synchronized @:native override private function bind0(lport : Int, laddr : java.net.InetAddress) : Void;
	
	@:overload @:protected @:native override private function send(p : java.net.DatagramPacket) : Void;
	
	@:overload @:protected @:synchronized @:native override private function peek(i : java.net.InetAddress) : Int;
	
	@:overload @:protected @:synchronized @:native override private function peekData(p : java.net.DatagramPacket) : Int;
	
	@:overload @:protected @:synchronized @:native override private function receive0(p : java.net.DatagramPacket) : Void;
	
	@:overload @:protected @:native override private function setTimeToLive(ttl : Int) : Void;
	
	@:overload @:protected @:native override private function getTimeToLive() : Int;
	
	@:overload @:protected @:native override private function setTTL(ttl : java.StdTypes.Int8) : Void;
	
	@:overload @:protected @:native override private function getTTL() : java.StdTypes.Int8;
	
	@:overload @:protected @:native override private function join(inetaddr : java.net.InetAddress, netIf : java.net.NetworkInterface) : Void;
	
	@:overload @:protected @:native override private function leave(inetaddr : java.net.InetAddress, netIf : java.net.NetworkInterface) : Void;
	
	@:overload @:protected @:native override private function datagramSocketCreate() : Void;
	
	@:overload @:protected @:native override private function datagramSocketClose() : Void;
	
	@:overload @:protected @:native override private function socketSetOption(opt : Int, val : Dynamic) : Void;
	
	@:overload @:protected @:native override private function socketGetOption(opt : Int) : Dynamic;
	
	@:overload @:protected @:native override private function connect0(address : java.net.InetAddress, port : Int) : Void;
	
	@:overload @:protected @:native override private function disconnect0(family : Int) : Void;
	
	
}
