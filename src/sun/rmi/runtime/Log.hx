package sun.rmi.runtime;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Log
{
	/** Logger re-definition of old RMI log values */
	public static var BRIEF(default, null) : java.util.logging.Level;
	
	public static var VERBOSE(default, null) : java.util.logging.Level;
	
	/** "logger like" API to be used by RMI implementation */
	@:overload @:abstract public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload @:abstract public function log(level : java.util.logging.Level, message : String) : Void;
	
	@:overload @:abstract public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	/** get and set the RMI server call output stream */
	@:overload @:abstract public function setOutputStream(stream : java.io.OutputStream) : Void;
	
	@:overload @:abstract public function getPrintStream() : java.io.PrintStream;
	
	/**
	* Access log for a tri-state system property.
	*
	* Need to first convert override value to a log level, taking
	* care to interpret a range of values between BRIEF, VERBOSE and
	* SILENT.
	*
	* An override < 0 is interpreted to mean that the logging
	* configuration should not be overridden. The level passed to the
	* factories createLog method will be null in this case.
	*
	* Note that if oldLogName is null and old logging is on, the
	* returned LogStreamLog will ignore the override parameter - the
	* log will never log messages.  This permits new logs that only
	* write to Loggers to do nothing when old logging is active.
	*
	* Do not call getLog multiple times on the same logger name.
	* Since this is an internal API, no checks are made to ensure
	* that multiple logs do not exist for the same logger.
	*/
	@:overload public static function getLog(loggerName : String, oldLogName : String, override : Int) : Log;
	
	/**
	* Access logs associated with boolean properties
	*
	* Do not call getLog multiple times on the same logger name.
	* Since this is an internal API, no checks are made to ensure
	* that multiple logs do not exist for the same logger.
	*/
	@:overload public static function getLog(loggerName : String, oldLogName : String, override : Bool) : Log;
	
	
}
/** factory interface enables Logger and LogStream implementations */
@:native('sun$rmi$runtime$Log$LogFactory') @:internal extern interface Log_LogFactory
{
	@:overload public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : Log;
	
	
}
/**
* Factory to create Log objects which deliver log messages to the
* java.util.logging API.
*/
@:native('sun$rmi$runtime$Log$LoggerLogFactory') @:internal extern class Log_LoggerLogFactory implements Log_LogFactory
{
	/*
	* Accessor to obtain an arbitrary RMI logger with name
	* loggerName.  If the level of the logger is greater than the
	* level for the system property with name, the logger level
	* will be set to the value of system property.
	*/
	@:overload public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : Log;
	
	
}
/**
* Class specialized to log messages to the java.util.logging API
*/
@:native('sun$rmi$runtime$Log$LoggerLog') @:internal extern class Log_LoggerLog extends Log
{
	@:overload override public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload override public function log(level : java.util.logging.Level, message : String) : Void;
	
	@:overload override public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Set the output stream associated with the RMI server call
	* logger.
	*
	* Calling code needs LoggingPermission "control".
	*/
	@:overload @:synchronized override public function setOutputStream(out : java.io.OutputStream) : Void;
	
	@:overload @:synchronized override public function getPrintStream() : java.io.PrintStream;
	
	
}
/**
* Subclass of StreamHandler for redirecting log output.  flush
* must be called in the publish and close methods.
*/
@:native('sun$rmi$runtime$Log$InternalStreamHandler') @:internal extern class Log_InternalStreamHandler extends java.util.logging.StreamHandler
{
	@:overload override public function publish(record : java.util.logging.LogRecord) : Void;
	
	@:overload override public function close() : Void;
	
	
}
/**
* PrintStream which forwards log messages to the logger.  Class
* is needed to maintain backwards compatibility with
* RemoteServer.{set|get}Log().
*/
@:native('sun$rmi$runtime$Log$LoggerPrintStream') @:internal extern class Log_LoggerPrintStream extends java.io.PrintStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* Factory to create Log objects which deliver log messages to the
* java.rmi.server.LogStream API
*/
@:native('sun$rmi$runtime$Log$LogStreamLogFactory') @:internal extern class Log_LogStreamLogFactory implements Log_LogFactory
{
	/* create a new LogStreamLog for the specified log */
	@:overload public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : Log;
	
	
}
/**
* Class specialized to log messages to the
* java.rmi.server.LogStream API
*/
@:native('sun$rmi$runtime$Log$LogStreamLog') @:internal extern class Log_LogStreamLog extends Log
{
	@:overload @:synchronized override public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload override public function log(messageLevel : java.util.logging.Level, message : String) : Void;
	
	@:overload override public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload override public function getPrintStream() : java.io.PrintStream;
	
	@:overload @:synchronized override public function setOutputStream(out : java.io.OutputStream) : Void;
	
	
}
