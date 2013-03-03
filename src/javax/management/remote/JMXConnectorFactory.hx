package javax.management.remote;
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
extern class JMXConnectorFactory
{
	/**
	* <p>Name of the attribute that specifies the default class
	* loader. This class loader is used to deserialize return values and
	* exceptions from remote <code>MBeanServerConnection</code>
	* calls.  The value associated with this attribute is an instance
	* of {@link ClassLoader}.</p>
	*/
	@:public @:static @:final public static var DEFAULT_CLASS_LOADER(default, null) : String;
	
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
	* <p>Creates a connection to the connector server at the given
	* address.</p>
	*
	* <p>This method is equivalent to {@link
	* #connect(JMXServiceURL,Map) connect(serviceURL, null)}.</p>
	*
	* @param serviceURL the address of the connector server to
	* connect to.
	*
	* @return a <code>JMXConnector</code> whose {@link
	* JMXConnector#connect connect} method has been called.
	*
	* @exception NullPointerException if <code>serviceURL</code> is null.
	*
	* @exception IOException if the connector client or the
	* connection cannot be made because of a communication problem.
	*
	* @exception SecurityException if the connection cannot be made
	* for security reasons.
	*/
	@:overload @:public @:static public static function connect(serviceURL : javax.management.remote.JMXServiceURL) : javax.management.remote.JMXConnector;
	
	/**
	* <p>Creates a connection to the connector server at the given
	* address.</p>
	*
	* <p>This method is equivalent to:</p>
	*
	* <pre>
	* JMXConnector conn = JMXConnectorFactory.newJMXConnector(serviceURL,
	*                                                         environment);
	* conn.connect(environment);
	* </pre>
	*
	* @param serviceURL the address of the connector server to connect to.
	*
	* @param environment a set of attributes to determine how the
	* connection is made.  This parameter can be null.  Keys in this
	* map must be Strings.  The appropriate type of each associated
	* value depends on the attribute.  The contents of
	* <code>environment</code> are not changed by this call.
	*
	* @return a <code>JMXConnector</code> representing the newly-made
	* connection.  Each successful call to this method produces a
	* different object.
	*
	* @exception NullPointerException if <code>serviceURL</code> is null.
	*
	* @exception IOException if the connector client or the
	* connection cannot be made because of a communication problem.
	*
	* @exception SecurityException if the connection cannot be made
	* for security reasons.
	*/
	@:overload @:public @:static public static function connect(serviceURL : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>) : javax.management.remote.JMXConnector;
	
	/**
	* <p>Creates a connector client for the connector server at the
	* given address.  The resultant client is not connected until its
	* {@link JMXConnector#connect(Map) connect} method is called.</p>
	*
	* @param serviceURL the address of the connector server to connect to.
	*
	* @param environment a set of attributes to determine how the
	* connection is made.  This parameter can be null.  Keys in this
	* map must be Strings.  The appropriate type of each associated
	* value depends on the attribute.  The contents of
	* <code>environment</code> are not changed by this call.
	*
	* @return a <code>JMXConnector</code> representing the new
	* connector client.  Each successful call to this method produces
	* a different object.
	*
	* @exception NullPointerException if <code>serviceURL</code> is null.
	*
	* @exception IOException if the connector client cannot be made
	* because of a communication problem.
	*
	* @exception MalformedURLException if there is no provider for the
	* protocol in <code>serviceURL</code>.
	*
	* @exception JMXProviderException if there is a provider for the
	* protocol in <code>serviceURL</code> but it cannot be used for
	* some reason.
	*/
	@:overload @:public @:static public static function newJMXConnector(serviceURL : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>) : javax.management.remote.JMXConnector;
	
	
}
