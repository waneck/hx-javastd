package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ConnectionMultiplexer
{
	/**
	* Create a new ConnectionMultiplexer using the given underlying
	* input/output stream pair.  The run method must be called
	* (possibly on a new thread) to handle the demultiplexing.
	* @param channel object to notify when new connection is received
	* @param in input stream of underlying connection
	* @param out output stream of underlying connection
	* @param orig true if this endpoint intiated the underlying
	*        connection (needs to be set differently at both ends)
	*/
	@:overload public function new(channel : sun.rmi.transport.tcp.TCPChannel, _in : java.io.InputStream, out : java.io.OutputStream, orig : Bool) : Void;
	
	/**
	* Process multiplexing protocol received from underlying connection.
	*/
	@:overload public function run() : Void;
	
	/**
	* Initiate a new multiplexed connection through the underlying
	* connection.
	*/
	@:overload @:synchronized public function openConnection() : sun.rmi.transport.tcp.TCPConnection;
	
	/**
	* Shut down all connections and clean up.
	*/
	@:overload public function shutDown() : Void;
	
	/**
	* Shut down connection upon finalization.
	*/
	@:overload private function finalize() : Void;
	
	
}
