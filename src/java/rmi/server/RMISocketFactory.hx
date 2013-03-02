package java.rmi.server;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
/**
* An <code>RMISocketFactory</code> instance is used by the RMI runtime
* in order to obtain client and server sockets for RMI calls.  An
* application may use the <code>setSocketFactory</code> method to
* request that the RMI runtime use its socket factory instance
* instead of the default implementation.<p>
*
* The default socket factory implementation used goes through a
* three-tiered approach to creating client sockets. First, a direct
* socket connection to the remote VM is attempted.  If that fails
* (due to a firewall), the runtime uses HTTP with the explicit port
* number of the server.  If the firewall does not allow this type of
* communication, then HTTP to a cgi-bin script on the server is used
* to POST the RMI call.<p>
*
* @author  Ann Wollrath
* @author  Peter Jones
* @since   JDK1.1
*/
@:require(java1) extern class RMISocketFactory implements java.rmi.server.RMIClientSocketFactory implements java.rmi.server.RMIServerSocketFactory
{
	/**
	* Constructs an <code>RMISocketFactory</code>.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function new() : Void;
	
	/**
	* Creates a client socket connected to the specified host and port.
	* @param  host   the host name
	* @param  port   the port number
	* @return a socket connected to the specified host and port.
	* @exception IOException if an I/O error occurs during socket creation
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:abstract public function createSocket(host : String, port : Int) : java.net.Socket;
	
	/**
	* Create a server socket on the specified port (port 0 indicates
	* an anonymous port).
	* @param  port the port number
	* @return the server socket on the specified port
	* @exception IOException if an I/O error occurs during server socket
	* creation
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:abstract public function createServerSocket(port : Int) : java.net.ServerSocket;
	
	/**
	* Set the global socket factory from which RMI gets sockets (if the
	* remote object is not associated with a specific client and/or server
	* socket factory). The RMI socket factory can only be set once. Note: The
	* RMISocketFactory may only be set if the current security manager allows
	* setting a socket factory; if disallowed, a SecurityException will be
	* thrown.
	* @param fac the socket factory
	* @exception IOException if the RMI socket factory is already set
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkSetFactory</code> method doesn't allow the operation.
	* @see #getSocketFactory
	* @see java.lang.SecurityManager#checkSetFactory()
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public static function setSocketFactory(fac : java.rmi.server.RMISocketFactory) : Void;
	
	/**
	* Returns the socket factory set by the <code>setSocketFactory</code>
	* method. Returns <code>null</code> if no socket factory has been
	* set.
	* @return the socket factory
	* @see #setSocketFactory(RMISocketFactory)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public static function getSocketFactory() : java.rmi.server.RMISocketFactory;
	
	/**
	* Returns a reference to the default socket factory used
	* by this RMI implementation.  This will be the factory used
	* by the RMI runtime when <code>getSocketFactory</code>
	* returns <code>null</code>.
	* @return the default RMI socket factory
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public static function getDefaultSocketFactory() : java.rmi.server.RMISocketFactory;
	
	/**
	* Sets the failure handler to be called by the RMI runtime if server
	* socket creation fails.  By default, if no failure handler is installed
	* and server socket creation fails, the RMI runtime does attempt to
	* recreate the server socket.
	*
	* <p>If there is a security manager, this method first calls
	* the security manager's <code>checkSetFactory</code> method
	* to ensure the operation is allowed.
	* This could result in a <code>SecurityException</code>.
	*
	* @param fh the failure handler
	* @throws  SecurityException  if a security manager exists and its
	*          <code>checkSetFactory</code> method doesn't allow the
	*          operation.
	* @see #getFailureHandler
	* @see java.rmi.server.RMIFailureHandler#failure(Exception)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public static function setFailureHandler(fh : java.rmi.server.RMIFailureHandler) : Void;
	
	/**
	* Returns the handler for socket creation failure set by the
	* <code>setFailureHandler</code> method.
	* @return the failure handler
	* @see #setFailureHandler(RMIFailureHandler)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public static function getFailureHandler() : java.rmi.server.RMIFailureHandler;
	
	
}
