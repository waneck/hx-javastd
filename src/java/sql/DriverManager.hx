package java.sql;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DriverManager
{
	/**
	* Retrieves the log writer.
	*
	* The <code>getLogWriter</code> and <code>setLogWriter</code>
	* methods should be used instead
	* of the <code>get/setlogStream</code> methods, which are deprecated.
	* @return a <code>java.io.PrintWriter</code> object
	* @see #setLogWriter
	* @since 1.2
	*/
	@:require(java2) @:overload public static function getLogWriter() : java.io.PrintWriter;
	
	/**
	* Sets the logging/tracing <code>PrintWriter</code> object
	* that is used by the <code>DriverManager</code> and all drivers.
	* <P>
	* There is a minor versioning problem created by the introduction
	* of the method <code>setLogWriter</code>.  The
	* method <code>setLogWriter</code> cannot create a <code>PrintStream</code> object
	* that will be returned by <code>getLogStream</code>---the Java platform does
	* not provide a backward conversion.  As a result, a new application
	* that uses <code>setLogWriter</code> and also uses a JDBC 1.0 driver that uses
	* <code>getLogStream</code> will likely not see debugging information written
	* by that driver.
	*<P>
	* Starting with the Java 2 SDK, Standard Edition, version 1.3 release, this method checks
	* to see that there is an <code>SQLPermission</code> object before setting
	* the logging stream.  If a <code>SecurityManager</code> exists and its
	* <code>checkPermission</code> method denies setting the log writer, this
	* method throws a <code>java.lang.SecurityException</code>.
	*
	* @param out the new logging/tracing <code>PrintStream</code> object;
	*      <code>null</code> to disable logging and tracing
	* @throws SecurityException
	*    if a security manager exists and its
	*    <code>checkPermission</code> method denies
	*    setting the log writer
	*
	* @see SecurityManager#checkPermission
	* @see #getLogWriter
	* @since 1.2
	*/
	@:require(java2) @:overload public static function setLogWriter(out : java.io.PrintWriter) : Void;
	
	/**
	* Attempts to establish a connection to the given database URL.
	* The <code>DriverManager</code> attempts to select an appropriate driver from
	* the set of registered JDBC drivers.
	*
	* @param url a database url of the form
	* <code> jdbc:<em>subprotocol</em>:<em>subname</em></code>
	* @param info a list of arbitrary string tag/value pairs as
	* connection arguments; normally at least a "user" and
	* "password" property should be included
	* @return a Connection to the URL
	* @exception SQLException if a database access error occurs
	*/
	@:overload public static function getConnection(url : String, info : java.util.Properties) : java.sql.Connection;
	
	/**
	* Attempts to establish a connection to the given database URL.
	* The <code>DriverManager</code> attempts to select an appropriate driver from
	* the set of registered JDBC drivers.
	*
	* @param url a database url of the form
	* <code>jdbc:<em>subprotocol</em>:<em>subname</em></code>
	* @param user the database user on whose behalf the connection is being
	*   made
	* @param password the user's password
	* @return a connection to the URL
	* @exception SQLException if a database access error occurs
	*/
	@:overload public static function getConnection(url : String, user : String, password : String) : java.sql.Connection;
	
	/**
	* Attempts to establish a connection to the given database URL.
	* The <code>DriverManager</code> attempts to select an appropriate driver from
	* the set of registered JDBC drivers.
	*
	* @param url a database url of the form
	*  <code> jdbc:<em>subprotocol</em>:<em>subname</em></code>
	* @return a connection to the URL
	* @exception SQLException if a database access error occurs
	*/
	@:overload public static function getConnection(url : String) : java.sql.Connection;
	
	/**
	* Attempts to locate a driver that understands the given URL.
	* The <code>DriverManager</code> attempts to select an appropriate driver from
	* the set of registered JDBC drivers.
	*
	* @param url a database URL of the form
	*     <code>jdbc:<em>subprotocol</em>:<em>subname</em></code>
	* @return a <code>Driver</code> object representing a driver
	* that can connect to the given URL
	* @exception SQLException if a database access error occurs
	*/
	@:overload public static function getDriver(url : String) : java.sql.Driver;
	
	/**
	* Registers the given driver with the <code>DriverManager</code>.
	* A newly-loaded driver class should call
	* the method <code>registerDriver</code> to make itself
	* known to the <code>DriverManager</code>.
	*
	* @param driver the new JDBC Driver that is to be registered with the
	*               <code>DriverManager</code>
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:synchronized public static function registerDriver(driver : java.sql.Driver) : Void;
	
	/**
	* Drops a driver from the <code>DriverManager</code>'s list.
	*  Applets can only deregister drivers from their own classloaders.
	*
	* @param driver the JDBC Driver to drop
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:synchronized public static function deregisterDriver(driver : java.sql.Driver) : Void;
	
	/**
	* Retrieves an Enumeration with all of the currently loaded JDBC drivers
	* to which the current caller has access.
	*
	* <P><B>Note:</B> The classname of a driver can be found using
	* <CODE>d.getClass().getName()</CODE>
	*
	* @return the list of JDBC Drivers loaded by the caller's class loader
	*/
	@:overload public static function getDrivers() : java.util.Enumeration<java.sql.Driver>;
	
	/**
	* Sets the maximum time in seconds that a driver will wait
	* while attempting to connect to a database.
	*
	* @param seconds the login time limit in seconds; zero means there is no limit
	* @see #getLoginTimeout
	*/
	@:overload public static function setLoginTimeout(seconds : Int) : Void;
	
	/**
	* Gets the maximum time in seconds that a driver can wait
	* when attempting to log in to a database.
	*
	* @return the driver login time limit in seconds
	* @see #setLoginTimeout
	*/
	@:overload public static function getLoginTimeout() : Int;
	
	/**
	* Sets the logging/tracing PrintStream that is used
	* by the <code>DriverManager</code>
	* and all drivers.
	*<P>
	* In the Java 2 SDK, Standard Edition, version 1.3 release, this method checks
	* to see that there is an <code>SQLPermission</code> object before setting
	* the logging stream.  If a <code>SecurityManager</code> exists and its
	* <code>checkPermission</code> method denies setting the log writer, this
	* method throws a <code>java.lang.SecurityException</code>.
	*
	* @param out the new logging/tracing PrintStream; to disable, set to <code>null</code>
	* @deprecated
	* @throws SecurityException if a security manager exists and its
	*    <code>checkPermission</code> method denies setting the log stream
	*
	* @see SecurityManager#checkPermission
	* @see #getLogStream
	*/
	@:overload public static function setLogStream(out : java.io.PrintStream) : Void;
	
	/**
	* Retrieves the logging/tracing PrintStream that is used by the <code>DriverManager</code>
	* and all drivers.
	*
	* @return the logging/tracing PrintStream; if disabled, is <code>null</code>
	* @deprecated
	* @see #setLogStream
	*/
	@:overload public static function getLogStream() : java.io.PrintStream;
	
	/**
	* Prints a message to the current JDBC log stream.
	*
	* @param message a log or tracing message
	*/
	@:overload public static function println(message : String) : Void;
	
	
}
@:internal extern class DriverInfo
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
