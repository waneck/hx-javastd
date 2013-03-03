package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class TCPConnection implements sun.rmi.transport.Connection
{
	/**
	* Gets the output stream for this connection
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Release the output stream for this connection.
	*/
	@:overload @:public public function releaseOutputStream() : Void;
	
	/**
	* Gets the input stream for this connection.
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* Release the input stream for this connection.
	*/
	@:overload @:public public function releaseInputStream() : Void;
	
	/**
	* Determine if this connection can be used for multiple operations.
	* If the socket implements RMISocketInfo, then we can query it about
	* this; otherwise, assume that it does provide a full-duplex
	* persistent connection like java.net.Socket.
	*/
	@:overload @:public public function isReusable() : Bool;
	
	/**
	* Probes the connection to see if it still alive and connected to
	* a responsive server.  If the connection has been idle for too
	* long, the server is pinged.  ``Too long'' means ``longer than the
	* last ping round-trip time''.
	* <P>
	* This method may misdiagnose a dead connection as live, but it
	* will never misdiagnose a live connection as dead.
	* @return true if the connection and server are recently alive
	*/
	@:overload @:public public function isDead() : Bool;
	
	/**
	* Close the connection.  */
	@:overload @:public public function close() : Void;
	
	/**
	* Returns the channel for this connection.
	*/
	@:overload @:public public function getChannel() : sun.rmi.transport.Channel;
	
	
}
