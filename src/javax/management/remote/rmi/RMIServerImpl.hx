package javax.management.remote.rmi;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RMIServerImpl implements java.io.Closeable implements javax.management.remote.rmi.RMIServer
{
	/**
	* <p>Constructs a new <code>RMIServerImpl</code>.</p>
	*
	* @param env the environment containing attributes for the new
	* <code>RMIServerImpl</code>.  Can be null, which is equivalent
	* to an empty Map.
	*/
	@:overload public function new(env : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* <p>Exports this RMI object.</p>
	*
	* @exception IOException if this RMI object cannot be exported.
	*/
	@:overload @:abstract private function export() : Void;
	
	/**
	* Returns a remotable stub for this server object.
	* @return a remotable stub.
	* @exception IOException if the stub cannot be obtained - e.g the
	*            RMIServerImpl has not been exported yet.
	**/
	@:overload @:abstract public function toStub() : java.rmi.Remote;
	
	/**
	* <p>Sets the default <code>ClassLoader</code> for this connector
	* server. New client connections will use this classloader.
	* Existing client connections are unaffected.</p>
	*
	* @param cl the new <code>ClassLoader</code> to be used by this
	* connector server.
	*
	* @see #getDefaultClassLoader
	*/
	@:overload @:synchronized public function setDefaultClassLoader(cl : java.lang.ClassLoader) : Void;
	
	/**
	* <p>Gets the default <code>ClassLoader</code> used by this connector
	* server.</p>
	*
	* @return the default <code>ClassLoader</code> used by this
	* connector server.</p>
	*
	* @see #setDefaultClassLoader
	*/
	@:overload @:synchronized public function getDefaultClassLoader() : java.lang.ClassLoader;
	
	/**
	* <p>Sets the <code>MBeanServer</code> to which this connector
	* server is attached. New client connections will interact
	* with this <code>MBeanServer</code>. Existing client connections are
	* unaffected.</p>
	*
	* @param mbs the new <code>MBeanServer</code>.  Can be null, but
	* new client connections will be refused as long as it is.
	*
	* @see #getMBeanServer
	*/
	@:overload @:synchronized public function setMBeanServer(mbs : javax.management.MBeanServer) : Void;
	
	/**
	* <p>The <code>MBeanServer</code> to which this connector server
	* is attached.  This is the last value passed to {@link
	* #setMBeanServer} on this object, or null if that method has
	* never been called.</p>
	*
	* @return the <code>MBeanServer</code> to which this connector
	* is attached.
	*
	* @see #setMBeanServer
	*/
	@:overload @:synchronized public function getMBeanServer() : javax.management.MBeanServer;
	
	@:overload public function getVersion() : String;
	
	/**
	* <p>Creates a new client connection.  This method calls {@link
	* #makeClient makeClient} and adds the returned client connection
	* object to an internal list.  When this
	* <code>RMIServerImpl</code> is shut down via its {@link
	* #close()} method, the {@link RMIConnection#close() close()}
	* method of each object remaining in the list is called.</p>
	*
	* <p>The fact that a client connection object is in this internal
	* list does not prevent it from being garbage collected.</p>
	*
	* @param credentials this object specifies the user-defined
	* credentials to be passed in to the server in order to
	* authenticate the caller before creating the
	* <code>RMIConnection</code>.  Can be null.
	*
	* @return the newly-created <code>RMIConnection</code>.  This is
	* usually the object created by <code>makeClient</code>, though
	* an implementation may choose to wrap that object in another
	* object implementing <code>RMIConnection</code>.
	*
	* @exception IOException if the new client object cannot be
	* created or exported.
	*
	* @exception SecurityException if the given credentials do not allow
	* the server to authenticate the user successfully.
	*
	* @exception IllegalStateException if {@link #getMBeanServer()}
	* is null.
	*/
	@:overload public function newClient(credentials : Dynamic) : javax.management.remote.rmi.RMIConnection;
	
	/**
	* <p>Creates a new client connection.  This method is called by
	* the public method {@link #newClient(Object)}.</p>
	*
	* @param connectionId the ID of the new connection.  Every
	* connection opened by this connector server will have a
	* different ID.  The behavior is unspecified if this parameter is
	* null.
	*
	* @param subject the authenticated subject.  Can be null.
	*
	* @return the newly-created <code>RMIConnection</code>.
	*
	* @exception IOException if the new client object cannot be
	* created or exported.
	*/
	@:overload @:abstract private function makeClient(connectionId : String, subject : javax.security.auth.Subject) : javax.management.remote.rmi.RMIConnection;
	
	/**
	* <p>Closes a client connection made by {@link #makeClient makeClient}.
	*
	* @param client a connection previously returned by
	* <code>makeClient</code> on which the <code>closeClient</code>
	* method has not previously been called.  The behavior is
	* unspecified if these conditions are violated, including the
	* case where <code>client</code> is null.
	*
	* @exception IOException if the client connection cannot be
	* closed.
	*/
	@:overload @:abstract private function closeClient(client : javax.management.remote.rmi.RMIConnection) : Void;
	
	/**
	* <p>Returns the protocol string for this object.  The string is
	* <code>rmi</code> for RMI/JRMP and <code>iiop</code> for RMI/IIOP.
	*
	* @return the protocol string for this object.
	*/
	@:overload @:abstract private function getProtocol() : String;
	
	/**
	* <p>Method called when a client connection created by {@link
	* #makeClient makeClient} is closed.  A subclass that defines
	* <code>makeClient</code> must arrange for this method to be
	* called when the resultant object's {@link RMIConnection#close()
	* close} method is called.  This enables it to be removed from
	* the <code>RMIServerImpl</code>'s list of connections.  It is
	* not an error for <code>client</code> not to be in that
	* list.</p>
	*
	* <p>After removing <code>client</code> from the list of
	* connections, this method calls {@link #closeClient
	* closeClient(client)}.</p>
	*
	* @param client the client connection that has been closed.
	*
	* @exception IOException if {@link #closeClient} throws this
	* exception.
	*
	* @exception NullPointerException if <code>client</code> is null.
	*/
	@:overload private function clientClosed(client : javax.management.remote.rmi.RMIConnection) : Void;
	
	/**
	* <p>Closes this connection server.  This method first calls the
	* {@link #closeServer()} method so that no new client connections
	* will be accepted.  Then, for each remaining {@link
	* RMIConnection} object returned by {@link #makeClient
	* makeClient}, its {@link RMIConnection#close() close} method is
	* called.</p>
	*
	* <p>The behavior when this method is called more than once is
	* unspecified.</p>
	*
	* <p>If {@link #closeServer()} throws an
	* <code>IOException</code>, the individual connections are
	* nevertheless closed, and then the <code>IOException</code> is
	* thrown from this method.</p>
	*
	* <p>If {@link #closeServer()} returns normally but one or more
	* of the individual connections throws an
	* <code>IOException</code>, then, after closing all the
	* connections, one of those <code>IOException</code>s is thrown
	* from this method.  If more than one connection throws an
	* <code>IOException</code>, it is unspecified which one is thrown
	* from this method.</p>
	*
	* @exception IOException if {@link #closeServer()} or one of the
	* {@link RMIConnection#close()} calls threw
	* <code>IOException</code>.
	*/
	@:overload @:synchronized public function close() : Void;
	
	/**
	* <p>Called by {@link #close()} to close the connector server.
	* After returning from this method, the connector server must
	* not accept any new connections.</p>
	*
	* @exception IOException if the attempt to close the connector
	* server failed.
	*/
	@:overload @:abstract private function closeServer() : Void;
	
	
}
