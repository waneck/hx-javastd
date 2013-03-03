package com.oracle.net;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Sdp
{
	/**
	* Creates an unconnected and unbound SDP socket. The {@code Socket} is
	* associated with a {@link java.net.SocketImpl} of the system-default type.
	*
	* @return  a new Socket
	*
	* @throws  UnsupportedOperationException
	*          If SDP is not supported
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function openSocket() : java.net.Socket;
	
	/**
	* Creates an unbound SDP server socket. The {@code ServerSocket} is
	* associated with a {@link java.net.SocketImpl} of the system-default type.
	*
	* @return  a new ServerSocket
	*
	* @throws  UnsupportedOperationException
	*          If SDP is not supported
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function openServerSocket() : java.net.ServerSocket;
	
	/**
	* Opens a socket channel to a SDP socket.
	*
	* <p> The channel will be associated with the system-wide default
	* {@link java.nio.channels.spi.SelectorProvider SelectorProvider}.
	*
	* @return  a new SocketChannel
	*
	* @throws  UnsupportedOperationException
	*          If SDP is not supported or not supported by the default selector
	*          provider
	* @throws  IOException
	*          If an I/O error occurs.
	*/
	@:overload @:public @:static public static function openSocketChannel() : java.nio.channels.SocketChannel;
	
	/**
	* Opens a socket channel to a SDP socket.
	*
	* <p> The channel will be associated with the system-wide default
	* {@link java.nio.channels.spi.SelectorProvider SelectorProvider}.
	*
	* @return  a new ServerSocketChannel
	*
	* @throws  UnsupportedOperationException
	*          If SDP is not supported or not supported by the default selector
	*          provider
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function openServerSocketChannel() : java.nio.channels.ServerSocketChannel;
	
	
}
/**
* SDP enabled Socket.
*/
@:native('com$oracle$net$Sdp$SdpSocket') @:internal extern class Sdp_SdpSocket extends java.net.Socket
{
	
}
