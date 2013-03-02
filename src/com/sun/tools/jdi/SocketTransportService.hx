package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketTransportService extends com.sun.jdi.connect.spi.TransportService
{
	/**
	* No-arg constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* The name of this transport service
	*/
	@:overload override public function name() : String;
	
	/**
	* Return localized description of this transport service
	*/
	@:overload override public function description() : String;
	
	/**
	* Return the capabilities of this transport service
	*/
	@:overload override public function capabilities() : com.sun.jdi.connect.spi.TransportService.TransportService_Capabilities;
	
	/**
	* Attach to the specified address with optional attach and handshake
	* timeout.
	*/
	@:overload override public function attach(address : String, attachTimeout : haxe.Int64, handshakeTimeout : haxe.Int64) : com.sun.jdi.connect.spi.Connection;
	
	/**
	* Listen on the specified address
	*/
	@:overload override public function startListening(address : String) : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey;
	
	/**
	* Listen on the default address
	*/
	@:overload override public function startListening() : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey;
	
	/**
	* Stop the listener
	*/
	@:overload override public function stopListening(listener : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey) : Void;
	
	/**
	* Accept a connection from a debuggee and handshake with it.
	*/
	@:overload override public function accept(listener : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey, acceptTimeout : haxe.Int64, handshakeTimeout : haxe.Int64) : com.sun.jdi.connect.spi.Connection;
	
	@:overload public function toString() : String;
	
	
}
/**
* The listener returned by startListening encapsulates
* the ServerSocket.
*/
@:native('com$sun$tools$jdi$SocketTransportService$SocketListenKey') @:internal extern class SocketTransportService_SocketListenKey extends com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey
{
	/*
	* Returns the string representation of the address that this
	* listen key represents.
	*/
	@:overload override public function address() : String;
	
	@:overload public function toString() : String;
	
	
}
@:internal extern class SocketConnection extends com.sun.jdi.connect.spi.Connection
{
	@:overload public function close() : Void;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function readPacket() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function writePacket(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
@:internal extern class SocketTransportServiceCapabilities extends com.sun.jdi.connect.spi.TransportService.TransportService_Capabilities
{
	/*
	* The capabilities of the socket transport service
	*/
	@:overload override public function supportsMultipleConnections() : Bool;
	
	@:overload override public function supportsAttachTimeout() : Bool;
	
	@:overload override public function supportsAcceptTimeout() : Bool;
	
	@:overload override public function supportsHandshakeTimeout() : Bool;
	
	
}
