package sun.rmi.transport.proxy;
/*
* Copyright (c) 1996, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpReceiveSocket extends sun.rmi.transport.proxy.WrappedSocket implements sun.rmi.transport.proxy.RMISocketInfo
{
	/**
	* Layer on top of a pre-existing Socket object, and use specified
	* input and output streams.
	* @param socket the pre-existing socket to use
	* @param in the InputStream to use for this socket (can be null)
	* @param out the OutputStream to use for this socket (can be null)
	*/
	@:overload public function new(socket : java.net.Socket, _in : java.io.InputStream, out : java.io.OutputStream) : Void;
	
	/**
	* Indicate that this socket is not reusable.
	*/
	@:overload public function isReusable() : Bool;
	
	/**
	* Get the address to which this socket is connected.  "null" is always
	* returned (to indicate an unknown address) because the originating
	* host's IP address cannot be reliably determined: both because the
	* request probably went through a proxy server, and because if it was
	* delivered by a local forwarder (CGI script or servlet), we do NOT
	* want it to appear as if the call is coming from the local host (in
	* case the remote object makes access control decisions based on the
	* "client host" of a remote call; see bugid 4399040).
	*/
	@:overload public function getInetAddress() : java.net.InetAddress;
	
	/**
	* Get an OutputStream for this socket.
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Close the socket.
	*/
	@:overload @:synchronized public function close() : Void;
	
	/**
	* Return string representation of the socket.
	*/
	@:overload public function toString() : String;
	
	
}
