package javax.net;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketFactory
{
	/**
	* Creates a <code>SocketFactory</code>.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns a copy of the environment's default socket factory.
	*
	* @return the default <code>SocketFactory</code>
	*/
	@:overload public static function getDefault() : SocketFactory;
	
	/**
	* Creates an unconnected socket.
	*
	* @return the unconnected socket
	* @throws IOException if the socket cannot be created
	* @see java.net.Socket#connect(java.net.SocketAddress)
	* @see java.net.Socket#connect(java.net.SocketAddress, int)
	* @see java.net.Socket#Socket()
	*/
	@:overload public function createSocket() : java.net.Socket;
	
	/**
	* Creates a socket and connects it to the specified remote host
	* at the specified remote port.  This socket is configured using
	* the socket options established for this factory.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called with the host address and <code>port</code>
	* as its arguments. This could result in a SecurityException.
	*
	* @param host the server host name with which to connect, or
	*        <code>null</code> for the loopback address.
	* @param port the server port
	* @return the <code>Socket</code>
	* @throws IOException if an I/O error occurs when creating the socket
	* @throws SecurityException if a security manager exists and its
	*         <code>checkConnect</code> method doesn't allow the operation.
	* @throws UnknownHostException if the host is not known
	* @throws IllegalArgumentException if the port parameter is outside the
	*         specified range of valid port values, which is between 0 and
	*         65535, inclusive.
	* @see SecurityManager#checkConnect
	* @see java.net.Socket#Socket(String, int)
	*/
	@:overload @:abstract public function createSocket(host : String, port : Int) : java.net.Socket;
	
	/**
	* Creates a socket and connects it to the specified remote host
	* on the specified remote port.
	* The socket will also be bound to the local address and port supplied.
	* This socket is configured using
	* the socket options established for this factory.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called with the host address and <code>port</code>
	* as its arguments. This could result in a SecurityException.
	*
	* @param host the server host name with which to connect, or
	*        <code>null</code> for the loopback address.
	* @param port the server port
	* @param localHost the local address the socket is bound to
	* @param localPort the local port the socket is bound to
	* @return the <code>Socket</code>
	* @throws IOException if an I/O error occurs when creating the socket
	* @throws SecurityException if a security manager exists and its
	*         <code>checkConnect</code> method doesn't allow the operation.
	* @throws UnknownHostException if the host is not known
	* @throws IllegalArgumentException if the port parameter or localPort
	*         parameter is outside the specified range of valid port values,
	*         which is between 0 and 65535, inclusive.
	* @see SecurityManager#checkConnect
	* @see java.net.Socket#Socket(String, int, java.net.InetAddress, int)
	*/
	@:overload @:abstract public function createSocket(host : String, port : Int, localHost : java.net.InetAddress, localPort : Int) : java.net.Socket;
	
	/**
	* Creates a socket and connects it to the specified port number
	* at the specified address.  This socket is configured using
	* the socket options established for this factory.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called with the host address and <code>port</code>
	* as its arguments. This could result in a SecurityException.
	*
	* @param host the server host
	* @param port the server port
	* @return the <code>Socket</code>
	* @throws IOException if an I/O error occurs when creating the socket
	* @throws SecurityException if a security manager exists and its
	*         <code>checkConnect</code> method doesn't allow the operation.
	* @throws IllegalArgumentException if the port parameter is outside the
	*         specified range of valid port values, which is between 0 and
	*         65535, inclusive.
	* @throws NullPointerException if <code>host</code> is null.
	* @see SecurityManager#checkConnect
	* @see java.net.Socket#Socket(java.net.InetAddress, int)
	*/
	@:overload @:abstract public function createSocket(host : java.net.InetAddress, port : Int) : java.net.Socket;
	
	/**
	* Creates a socket and connect it to the specified remote address
	* on the specified remote port.  The socket will also be bound
	* to the local address and port suplied.  The socket is configured using
	* the socket options established for this factory.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called with the host address and <code>port</code>
	* as its arguments. This could result in a SecurityException.
	*
	* @param address the server network address
	* @param port the server port
	* @param localAddress the client network address
	* @param localPort the client port
	* @return the <code>Socket</code>
	* @throws IOException if an I/O error occurs when creating the socket
	* @throws SecurityException if a security manager exists and its
	*         <code>checkConnect</code> method doesn't allow the operation.
	* @throws IllegalArgumentException if the port parameter or localPort
	*         parameter is outside the specified range of valid port values,
	*         which is between 0 and 65535, inclusive.
	* @throws NullPointerException if <code>address</code> is null.
	* @see SecurityManager#checkConnect
	* @see java.net.Socket#Socket(java.net.InetAddress, int,
	*     java.net.InetAddress, int)
	*/
	@:overload @:abstract public function createSocket(address : java.net.InetAddress, port : Int, localAddress : java.net.InetAddress, localPort : Int) : java.net.Socket;
	
	
}
@:internal extern class DefaultSocketFactory extends SocketFactory
{
	@:overload override public function createSocket() : java.net.Socket;
	
	@:overload override public function createSocket(host : String, port : Int) : java.net.Socket;
	
	@:overload override public function createSocket(address : java.net.InetAddress, port : Int) : java.net.Socket;
	
	@:overload override public function createSocket(host : String, port : Int, clientAddress : java.net.InetAddress, clientPort : Int) : java.net.Socket;
	
	@:overload override public function createSocket(address : java.net.InetAddress, port : Int, clientAddress : java.net.InetAddress, clientPort : Int) : java.net.Socket;
	
	
}
