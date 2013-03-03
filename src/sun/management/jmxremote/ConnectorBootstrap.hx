package sun.management.jmxremote;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ConnectorBootstrap
{
	@:overload @:public @:static public static function unexportRegistry() : Void;
	
	/**
	* Initializes and starts the JMX Connector Server.
	* If the com.sun.management.jmxremote.port property is not defined,
	* simply return. Otherwise, attempts to load the config file, and
	* then calls {@link #startRemoteConnectorServer
	*                            (java.lang.String, java.util.Properties)}.
	*
	* This method is used by some jtreg tests.
	**/
	@:overload @:public @:static @:synchronized public static function initialize() : javax.management.remote.JMXConnectorServer;
	
	/**
	* This method is used by some jtreg tests.
	*
	* @see #startRemoteConnectorServer
	*             (String portStr, Properties props)
	*/
	@:overload @:public @:static @:synchronized public static function initialize(portStr : String, props : java.util.Properties) : javax.management.remote.JMXConnectorServer;
	
	/**
	* Initializes and starts a JMX Connector Server for remote
	* monitoring and management.
	**/
	@:overload @:public @:static @:synchronized public static function startRemoteConnectorServer(portStr : String, props : java.util.Properties) : javax.management.remote.JMXConnectorServer;
	
	/*
	* Creates and starts a RMI Connector Server for "local" monitoring
	* and management.
	*/
	@:overload @:public @:static public static function startLocalConnectorServer() : javax.management.remote.JMXConnectorServer;
	
	
}
/**
* Default values for JMX configuration properties.
**/
@:native('sun$management$jmxremote$ConnectorBootstrap$DefaultValues') extern interface ConnectorBootstrap_DefaultValues
{
	
}
/**
* Names of JMX configuration properties.
**/
@:native('sun$management$jmxremote$ConnectorBootstrap$PropertyNames') extern interface ConnectorBootstrap_PropertyNames
{
	
}
/**
* JMXConnectorServer associated data.
*/
@:native('sun$management$jmxremote$ConnectorBootstrap$JMXConnectorServerData') @:internal extern class ConnectorBootstrap_JMXConnectorServerData
{
	@:overload @:public public function new(jmxConnectorServer : javax.management.remote.JMXConnectorServer, jmxRemoteURL : javax.management.remote.JMXServiceURL) : Void;
	
	
}
/**
* <p>Prevents our RMI server objects from keeping the JVM alive.</p>
*
* <p>We use a private interface in Sun's JMX Remote API implementation
* that allows us to specify how to export RMI objects.  We do so using
* UnicastServerRef, a class in Sun's RMI implementation.  This is all
* non-portable, of course, so this is only valid because we are inside
* Sun's JRE.</p>
*
* <p>Objects are exported using {@link
* UnicastServerRef#exportObject(Remote, Object, boolean)}.  The
* boolean parameter is called <code>permanent</code> and means
* both that the object is not eligible for Distributed Garbage
* Collection, and that its continued existence will not prevent
* the JVM from exiting.  It is the latter semantics we want (we
* already have the former because of the way the JMX Remote API
* works).  Hence the somewhat misleading name of this class.</p>
*/
@:native('sun$management$jmxremote$ConnectorBootstrap$PermanentExporter') @:internal extern class ConnectorBootstrap_PermanentExporter implements com.sun.jmx.remote.internal.RMIExporter
{
	@:overload @:public public function exportObject(obj : java.rmi.Remote, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : java.rmi.Remote;
	
	@:overload @:public public function unexportObject(obj : java.rmi.Remote, force : Bool) : Bool;
	
	
}
/**
* This JMXAuthenticator wraps the JMXPluggableAuthenticator and verifies
* that at least one of the principal names contained in the authenticated
* Subject is present in the access file.
*/
@:native('sun$management$jmxremote$ConnectorBootstrap$AccessFileCheckerAuthenticator') @:internal extern class ConnectorBootstrap_AccessFileCheckerAuthenticator implements javax.management.remote.JMXAuthenticator
{
	@:overload @:public public function new(env : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public public function authenticate(credentials : Dynamic) : javax.security.auth.Subject;
	
	
}
