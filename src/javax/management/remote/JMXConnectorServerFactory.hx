package javax.management.remote;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXConnectorServerFactory
{
	/**
	* <p>Name of the attribute that specifies the default class
	* loader.  This class loader is used to deserialize objects in
	* requests received from the client, possibly after consulting an
	* MBean-specific class loader.  The value associated with this
	* attribute is an instance of {@link ClassLoader}.</p>
	*/
	@:public @:static @:final public static var DEFAULT_CLASS_LOADER(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the default class
	* loader MBean name.  This class loader is used to deserialize objects in
	* requests received from the client, possibly after consulting an
	* MBean-specific class loader.  The value associated with this
	* attribute is an instance of {@link javax.management.ObjectName
	* ObjectName}.</p>
	*/
	@:public @:static @:final public static var DEFAULT_CLASS_LOADER_NAME(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the provider packages
	* that are consulted when looking for the handler for a protocol.
	* The value associated with this attribute is a string with
	* package names separated by vertical bars (<code>|</code>).</p>
	*/
	@:public @:static @:final public static var PROTOCOL_PROVIDER_PACKAGES(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the class
	* loader for loading protocol providers.
	* The value associated with this attribute is an instance
	* of {@link ClassLoader}.</p>
	*/
	@:public @:static @:final public static var PROTOCOL_PROVIDER_CLASS_LOADER(default, null) : String;
	
	/**
	* <p>Creates a connector server at the given address.  The
	* resultant server is not started until its {@link
	* JMXConnectorServer#start() start} method is called.</p>
	*
	* @param serviceURL the address of the new connector server.  The
	* actual address of the new connector server, as returned by its
	* {@link JMXConnectorServer#getAddress() getAddress} method, will
	* not necessarily be exactly the same.  For example, it might
	* include a port number if the original address did not.
	*
	* @param environment a set of attributes to control the new
	* connector server's behavior.  This parameter can be null.
	* Keys in this map must be Strings.  The appropriate type of each
	* associated value depends on the attribute.  The contents of
	* <code>environment</code> are not changed by this call.
	*
	* @param mbeanServer the MBean server that this connector server
	* is attached to.  Null if this connector server will be attached
	* to an MBean server by being registered in it.
	*
	* @return a <code>JMXConnectorServer</code> representing the new
	* connector server.  Each successful call to this method produces
	* a different object.
	*
	* @exception NullPointerException if <code>serviceURL</code> is null.
	*
	* @exception IOException if the connector server cannot be made
	* because of a communication problem.
	*
	* @exception MalformedURLException if there is no provider for the
	* protocol in <code>serviceURL</code>.
	*
	* @exception JMXProviderException if there is a provider for the
	* protocol in <code>serviceURL</code> but it cannot be used for
	* some reason.
	*/
	@:overload @:public @:static public static function newJMXConnectorServer(serviceURL : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>, mbeanServer : javax.management.MBeanServer) : javax.management.remote.JMXConnectorServer;
	
	
}
