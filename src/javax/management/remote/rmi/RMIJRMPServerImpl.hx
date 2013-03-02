package javax.management.remote.rmi;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class RMIJRMPServerImpl extends javax.management.remote.rmi.RMIServerImpl
{
	/**
	* <p>Creates a new {@link RMIServer} object that will be exported
	* on the given port using the given socket factories.</p>
	*
	* @param port the port on which this object and the {@link
	* RMIConnectionImpl} objects it creates will be exported.  Can be
	* zero, to indicate any available port.
	*
	* @param csf the client socket factory for the created RMI
	* objects.  Can be null.
	*
	* @param ssf the server socket factory for the created RMI
	* objects.  Can be null.
	*
	* @param env the environment map.  Can be null.
	*
	* @exception IOException if the {@link RMIServer} object
	* cannot be created.
	*
	* @exception IllegalArgumentException if <code>port</code> is
	* negative.
	*/
	@:overload public function new(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory, env : java.util.Map<String, Dynamic>) : Void;
	
	@:overload private function export() : Void;
	
	@:overload private function getProtocol() : String;
	
	/**
	* <p>Returns a serializable stub for this {@link RMIServer} object.</p>
	*
	* @return a serializable stub.
	*
	* @exception IOException if the stub cannot be obtained - e.g the
	*            RMIJRMPServerImpl has not been exported yet.
	*/
	@:overload public function toStub() : java.rmi.Remote;
	
	/**
	* <p>Creates a new client connection as an RMI object exported
	* through JRMP. The port and socket factories for the new
	* {@link RMIConnection} object are the ones supplied
	* to the <code>RMIJRMPServerImpl</code> constructor.</p>
	*
	* @param connectionId the ID of the new connection. Every
	* connection opened by this connector server will have a
	* different id.  The behavior is unspecified if this parameter is
	* null.
	*
	* @param subject the authenticated subject.  Can be null.
	*
	* @return the newly-created <code>RMIConnection</code>.
	*
	* @exception IOException if the new {@link RMIConnection}
	* object cannot be created or exported.
	*/
	@:overload private function makeClient(connectionId : String, subject : javax.security.auth.Subject) : javax.management.remote.rmi.RMIConnection;
	
	@:overload private function closeClient(client : javax.management.remote.rmi.RMIConnection) : Void;
	
	/**
	* <p>Called by {@link #close()} to close the connector server by
	* unexporting this object.  After returning from this method, the
	* connector server must not accept any new connections.</p>
	*
	* @exception IOException if the attempt to close the connector
	* server failed.
	*/
	@:overload private function closeServer() : Void;
	
	
}
