package java.util.logging;
/*
* Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.
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
extern class LogManager
{
	/**
	* Protected constructor.  This is protected so that container applications
	* (such as J2EE containers) can subclass the object.  It is non-public as
	* it is intended that there only be one LogManager object, whose value is
	* retrieved by calling Logmanager.getLogManager.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Return the global LogManager object.
	*/
	@:overload @:public @:static public static function getLogManager() : java.util.logging.LogManager;
	
	/**
	* Adds an event listener to be invoked when the logging
	* properties are re-read. Adding multiple instances of
	* the same event Listener results in multiple entries
	* in the property event listener table.
	*
	* @param l  event listener
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	* @exception NullPointerException if the PropertyChangeListener is null.
	*/
	@:overload @:public public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes an event listener for property change events.
	* If the same listener instance has been added to the listener table
	* through multiple invocations of <CODE>addPropertyChangeListener</CODE>,
	* then an equivalent number of
	* <CODE>removePropertyChangeListener</CODE> invocations are required to remove
	* all instances of that listener from the listener table.
	* <P>
	* Returns silently if the given listener is not found.
	*
	* @param l  event listener (can be null)
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Add a named logger.  This does nothing and returns false if a logger
	* with the same name is already registered.
	* <p>
	* The Logger factory methods call this method to register each
	* newly created Logger.
	* <p>
	* The application should retain its own reference to the Logger
	* object to avoid it being garbage collected.  The LogManager
	* may only retain a weak reference.
	*
	* @param   logger the new logger.
	* @return  true if the argument logger was registered successfully,
	*          false if a logger of that name already exists.
	* @exception NullPointerException if the logger name is null.
	*/
	@:overload @:public public function addLogger(logger : java.util.logging.Logger) : Bool;
	
	/**
	* Method to find a named logger.
	* <p>
	* Note that since untrusted code may create loggers with
	* arbitrary names this method should not be relied on to
	* find Loggers for security sensitive logging.
	* It is also important to note that the Logger associated with the
	* String {@code name} may be garbage collected at any time if there
	* is no strong reference to the Logger. The caller of this method
	* must check the return value for null in order to properly handle
	* the case where the Logger has been garbage collected.
	* <p>
	* @param name name of the logger
	* @return  matching logger or null if none is found
	*/
	@:overload @:public public function getLogger(name : String) : java.util.logging.Logger;
	
	/**
	* Get an enumeration of known logger names.
	* <p>
	* Note:  Loggers may be added dynamically as new classes are loaded.
	* This method only reports on the loggers that are currently registered.
	* It is also important to note that this method only returns the name
	* of a Logger, not a strong reference to the Logger itself.
	* The returned String does nothing to prevent the Logger from being
	* garbage collected. In particular, if the returned name is passed
	* to {@code LogManager.getLogger()}, then the caller must check the
	* return value from {@code LogManager.getLogger()} for null to properly
	* handle the case where the Logger has been garbage collected in the
	* time since its name was returned by this method.
	* <p>
	* @return  enumeration of logger name strings
	*/
	@:overload @:public public function getLoggerNames() : java.util.Enumeration<String>;
	
	/**
	* Reinitialize the logging properties and reread the logging configuration.
	* <p>
	* The same rules are used for locating the configuration properties
	* as are used at startup.  So normally the logging properties will
	* be re-read from the same file that was used at startup.
	* <P>
	* Any log level definitions in the new configuration file will be
	* applied using Logger.setLevel(), if the target Logger exists.
	* <p>
	* A PropertyChangeEvent will be fired after the properties are read.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	* @exception  IOException if there are IO problems reading the configuration.
	*/
	@:overload @:public public function readConfiguration() : Void;
	
	/**
	* Reset the logging configuration.
	* <p>
	* For all named loggers, the reset operation removes and closes
	* all Handlers and (except for the root logger) sets the level
	* to null.  The root logger's level is set to Level.INFO.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Reinitialize the logging properties and reread the logging configuration
	* from the given stream, which should be in java.util.Properties format.
	* A PropertyChangeEvent will be fired after the properties are read.
	* <p>
	* Any log level definitions in the new configuration file will be
	* applied using Logger.setLevel(), if the target Logger exists.
	*
	* @param ins       stream to read properties from
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	* @exception  IOException if there are problems reading from the stream.
	*/
	@:overload @:public public function readConfiguration(ins : java.io.InputStream) : Void;
	
	/**
	* Get the value of a logging property.
	* The method returns null if the property is not found.
	* @param name      property name
	* @return          property value
	*/
	@:overload @:public public function getProperty(name : String) : String;
	
	/**
	* Check that the current context is trusted to modify the logging
	* configuration.  This requires LoggingPermission("control").
	* <p>
	* If the check fails we throw a SecurityException, otherwise
	* we return normally.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function checkAccess() : Void;
	
	/**
	* String representation of the
	* {@link javax.management.ObjectName} for the management interface
	* for the logging facility.
	*
	* @see java.lang.management.PlatformLoggingMXBean
	* @see java.util.logging.LoggingMXBean
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:final @:static public static var LOGGING_MXBEAN_NAME(default, null) : String;
	
	/**
	* Returns <tt>LoggingMXBean</tt> for managing loggers.
	* An alternative way to manage loggers is through the
	* {@link java.lang.management.PlatformLoggingMXBean} interface
	* that can be obtained by calling:
	* <pre>
	*     PlatformLoggingMXBean logging = {@link java.lang.management.ManagementFactory#getPlatformMXBean(Class)
	*         ManagementFactory.getPlatformMXBean}(PlatformLoggingMXBean.class);
	* </pre>
	*
	* @return a {@link LoggingMXBean} object.
	*
	* @see java.lang.management.PlatformLoggingMXBean
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static @:synchronized public static function getLoggingMXBean() : java.util.logging.LoggingMXBean;
	
	
}
@:native('java$util$logging$LogManager$Cleaner') @:internal extern class LogManager_Cleaner extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
@:native('java$util$logging$LogManager$LoggerContext') @:internal extern class LogManager_LoggerContext
{
	
}
@:native('java$util$logging$LogManager$SystemLoggerContext') @:internal extern class LogManager_SystemLoggerContext extends java.util.logging.LogManager.LogManager_LoggerContext
{
	
}
@:native('java$util$logging$LogManager$LoggerWeakRef') @:internal extern class LogManager_LoggerWeakRef extends java.lang.ref.WeakReference<java.util.logging.Logger>
{
	
}
@:native('java$util$logging$LogManager$LogNode') @:internal extern class LogManager_LogNode
{
	
}
@:native('java$util$logging$LogManager$RootLogger') @:internal extern class LogManager_RootLogger extends java.util.logging.Logger
{
	@:overload @:public override public function log(record : java.util.logging.LogRecord) : Void;
	
	@:overload @:public override public function addHandler(h : java.util.logging.Handler) : Void;
	
	@:overload @:public override public function removeHandler(h : java.util.logging.Handler) : Void;
	
	@:overload @:public override public function getHandlers() : java.NativeArray<java.util.logging.Handler>;
	
	
}
