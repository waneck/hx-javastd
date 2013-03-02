package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class TCPEndpoint implements sun.rmi.transport.Endpoint
{
	/**
	* Create an endpoint for a specified host and port.
	* This should not be used by external classes to create endpoints
	* for servers in this VM; use getLocalEndpoint instead.
	*/
	@:overload public function new(host : String, port : Int) : Void;
	
	/**
	* Create a custom socket factory endpoint for a specified host and port.
	* This should not be used by external classes to create endpoints
	* for servers in this VM; use getLocalEndpoint instead.
	*/
	@:overload public function new(host : String, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Get an endpoint for the local address space on specified port.
	* If port number is 0, it returns shared default endpoint object
	* whose host name and port may or may not have been determined.
	*/
	@:overload public static function getLocalEndpoint(port : Int) : sun.rmi.transport.tcp.TCPEndpoint;
	
	@:overload public static function getLocalEndpoint(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : sun.rmi.transport.tcp.TCPEndpoint;
	
	/**
	* Returns transport for making connections to remote endpoints;
	* (here, the default transport at port 0 is used).
	*/
	@:overload public function getOutboundTransport() : sun.rmi.transport.Transport;
	
	/**
	* Release idle outbound connections to reduce demand on I/O resources.
	* All transports are asked to release excess connections.
	*/
	@:overload public static function shedConnectionCaches() : Void;
	
	/**
	* Export the object to accept incoming calls.
	*/
	@:overload public function exportObject(target : sun.rmi.transport.Target) : Void;
	
	/**
	* Returns a channel for this (remote) endpoint.
	*/
	@:overload public function getChannel() : sun.rmi.transport.Channel;
	
	/**
	* Returns address for endpoint
	*/
	@:overload public function getHost() : String;
	
	/**
	* Returns the port for this endpoint.  If this endpoint was
	* created as a server endpoint (using getLocalEndpoint) for a
	* default/anonymous port and its inbound transport has started
	* listening, this method returns (instead of zero) the actual
	* bound port suitable for passing to clients.
	**/
	@:overload public function getPort() : Int;
	
	/**
	* Returns the port that this endpoint's inbound transport listens
	* on, if this endpoint was created as a server endpoint (using
	* getLocalEndpoint).  If this endpoint was created for the
	* default/anonymous port, then this method returns zero even if
	* the transport has started listening.
	**/
	@:overload public function getListenPort() : Int;
	
	/**
	* Returns the transport for incoming connections to this
	* endpoint, if this endpoint was created as a server endpoint
	* (using getLocalEndpoint).
	**/
	@:overload public function getInboundTransport() : sun.rmi.transport.Transport;
	
	/**
	* Get the client socket factory associated with this endpoint.
	*/
	@:overload public function getClientSocketFactory() : java.rmi.server.RMIClientSocketFactory;
	
	/**
	* Get the server socket factory associated with this endpoint.
	*/
	@:overload public function getServerSocketFactory() : java.rmi.server.RMIServerSocketFactory;
	
	/**
	* Return string representation for endpoint.
	*/
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Write endpoint to output stream.
	*/
	@:overload public function write(out : java.io.ObjectOutput) : Void;
	
	/**
	* Get the endpoint from the input stream.
	* @param in the input stream
	* @exception IOException If id could not be read (due to stream failure)
	*/
	@:overload public static function read(_in : java.io.ObjectInput) : sun.rmi.transport.tcp.TCPEndpoint;
	
	/**
	* Write endpoint to output stream in older format used by
	* UnicastRef for JDK1.1 compatibility.
	*/
	@:overload public function writeHostPortFormat(out : java.io.DataOutput) : Void;
	
	/**
	* Create a new endpoint from input stream data.
	* @param in the input stream
	*/
	@:overload public static function readHostPortFormat(_in : java.io.DataInput) : sun.rmi.transport.tcp.TCPEndpoint;
	
	
}
/**
* The class FQDN encapsulates a routine that makes a best effort
* attempt to retrieve the fully qualified domain name of the local
* host.
*
* @author  Laird Dornin
*/
@:native('sun$rmi$transport$tcp$TCPEndpoint$FQDN') @:internal extern class TCPEndpoint_FQDN implements java.lang.Runnable
{
	/**
	* thread to query a name service for the fqdn of this host.
	*/
	@:overload public function run() : Void;
	
	
}
