package sun.net;
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
extern class NetHooks
{
	/**
	* Invoke prior to binding a TCP socket.
	*/
	@:overload public static function beforeTcpBind(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Invoke prior to connecting an unbound TCP socket.
	*/
	@:overload public static function beforeTcpConnect(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	
}
/**
* A provider with hooks to allow sockets be converted prior to binding or
* connecting a TCP socket.
*
* <p> Concrete implementations of this class should define a zero-argument
* constructor and implement the abstract methods specified below.
*/
@:native('sun$net$NetHooks$Provider') extern class NetHooks_Provider
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload private function new() : Void;
	
	/**
	* Invoked prior to binding a TCP socket.
	*/
	@:overload @:abstract public function implBeforeTcpBind(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Invoked prior to connecting an unbound TCP socket.
	*/
	@:overload @:abstract public function implBeforeTcpConnect(fdObj : java.io.FileDescriptor, address : java.net.InetAddress, port : Int) : Void;
	
	
}
