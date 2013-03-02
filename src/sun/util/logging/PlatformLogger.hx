package sun.util.logging;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PlatformLogger
{
	/**
	* Platform logger provides an API for the JRE components to log
	* messages.  This enables the runtime components to eliminate the
	* static dependency of the logging facility and also defers the
	* java.util.logging initialization until it is enabled.
	* In addition, the PlatformLogger API can be used if the logging
	* module does not exist.
	*
	* If the logging facility is not enabled, the platform loggers
	* will output log messages per the default logging configuration
	* (see below). In this implementation, it does not log the
	* the stack frame information issuing the log message.
	*
	* When the logging facility is enabled (at startup or runtime),
	* the java.util.logging.Logger will be created for each platform
	* logger and all log messages will be forwarded to the Logger
	* to handle.
	*
	* Logging facility is "enabled" when one of the following
	* conditions is met:
	* 1) a system property "java.util.logging.config.class" or
	*    "java.util.logging.config.file" is set
	* 2) java.util.logging.LogManager or java.util.logging.Logger
	*    is referenced that will trigger the logging initialization.
	*
	* Default logging configuration:
	*   global logging level = INFO
	*   handlers = java.util.logging.ConsoleHandler
	*   java.util.logging.ConsoleHandler.level = INFO
	*   java.util.logging.ConsoleHandler.formatter = java.util.logging.SimpleFormatter
	*
	* Limitation:
	* <JAVA_HOME>/lib/logging.properties is the system-wide logging
	* configuration defined in the specification and read in the
	* default case to configure any java.util.logging.Logger instances.
	* Platform loggers will not detect if <JAVA_HOME>/lib/logging.properties
	* is modified. In other words, unless the java.util.logging API
	* is used at runtime or the logging system properties is set,
	* the platform loggers will use the default setting described above.
	* The platform loggers are designed for JDK developers use and
	* this limitation can be workaround with setting
	* -Djava.util.logging.config.file system property.
	*
	* @since 1.7
	*/
	@:require(java7) public static var OFF(default, null) : Int;
	
	public static var SEVERE(default, null) : Int;
	
	public static var WARNING(default, null) : Int;
	
	public static var INFO(default, null) : Int;
	
	public static var CONFIG(default, null) : Int;
	
	public static var FINE(default, null) : Int;
	
	public static var FINER(default, null) : Int;
	
	public static var FINEST(default, null) : Int;
	
	public static var ALL(default, null) : Int;
	
	/**
	* Returns a PlatformLogger of a given name.
	*/
	@:overload @:synchronized public static function getLogger(name : String) : sun.util.logging.PlatformLogger;
	
	/**
	* Initialize java.util.logging.Logger objects for all platform loggers.
	* This method is called from LogManager.readPrimordialConfiguration().
	*/
	@:overload @:synchronized public static function redirectPlatformLoggers() : Void;
	
	/**
	* A convenience method to test if the logger is turned off.
	* (i.e. its level is OFF).
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* Gets the name for this platform logger.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns true if a message of the given level would actually
	* be logged by this logger.
	*/
	@:overload public function isLoggable(level : Int) : Bool;
	
	/**
	* Gets the current log level.  Returns 0 if the current effective level
	* is not set (equivalent to Logger.getLevel() returns null).
	*/
	@:overload public function getLevel() : Int;
	
	/**
	* Sets the log level.
	*/
	@:overload public function setLevel(newLevel : Int) : Void;
	
	/**
	* Logs a SEVERE message.
	*/
	@:overload public function severe(msg : String) : Void;
	
	@:overload public function severe(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function severe(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs a WARNING message.
	*/
	@:overload public function warning(msg : String) : Void;
	
	@:overload public function warning(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function warning(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs an INFO message.
	*/
	@:overload public function info(msg : String) : Void;
	
	@:overload public function info(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function info(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs a CONFIG message.
	*/
	@:overload public function config(msg : String) : Void;
	
	@:overload public function config(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function config(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs a FINE message.
	*/
	@:overload public function fine(msg : String) : Void;
	
	@:overload public function fine(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function fine(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs a FINER message.
	*/
	@:overload public function finer(msg : String) : Void;
	
	@:overload public function finer(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function finer(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Logs a FINEST message.
	*/
	@:overload public function finest(msg : String) : Void;
	
	@:overload public function finest(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function finest(msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Default platform logging support - output messages to
* System.err - equivalent to ConsoleHandler with SimpleFormatter.
*/
@:native('sun$util$logging$PlatformLogger$LoggerProxy') @:internal extern class PlatformLogger_LoggerProxy
{
	@:overload public function isLoggable(level : Int) : Bool;
	
	
}
/**
* JavaLogger forwards all the calls to its corresponding
* java.util.logging.Logger object.
*/
@:native('sun$util$logging$PlatformLogger$JavaLogger') @:internal extern class PlatformLogger_JavaLogger extends sun.util.logging.PlatformLogger.PlatformLogger_LoggerProxy
{
	@:overload override public function isLoggable(level : Int) : Bool;
	
	
}
