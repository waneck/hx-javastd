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
	@:public @:static @:final public static var BRIEF(default, null) : java.util.logging.Level;
	
	@:public @:static @:final public static var VERBOSE(default, null) : java.util.logging.Level;
	
	/** "logger like" API to be used by RMI implementation */
	@:overload @:public @:abstract public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload @:public @:abstract public function log(level : java.util.logging.Level, message : String) : Void;
	
	@:overload @:public @:abstract public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	/** get and set the RMI server call output stream */
	@:overload @:public @:abstract public function setOutputStream(stream : java.io.OutputStream) : Void;
	
	@:overload @:public @:abstract public function getPrintStream() : java.io.PrintStream;
	
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
	@:overload @:public @:static public static function getLog(loggerName : String, oldLogName : String, _override : Int) : sun.rmi.runtime.Log;
	
	/**
	* Access logs associated with boolean properties
	*
	* Do not call getLog multiple times on the same logger name.
	* Since this is an internal API, no checks are made to ensure
	* that multiple logs do not exist for the same logger.
	*/
	@:overload @:public @:static public static function getLog(loggerName : String, oldLogName : String, _override : Bool) : sun.rmi.runtime.Log;
	
	
}
/** factory interface enables Logger and LogStream implementations */
@:native('sun$rmi$runtime$Log$LogFactory') @:internal extern interface Log_LogFactory
{
	@:overload public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : sun.rmi.runtime.Log;
	
	
}
/**
* Factory to create Log objects which deliver log messages to the
* java.util.logging API.
*/
@:native('sun$rmi$runtime$Log$LoggerLogFactory') @:internal extern class Log_LoggerLogFactory implements sun.rmi.runtime.Log.Log_LogFactory
{
	/*
	* Accessor to obtain an arbitrary RMI logger with name
	* loggerName.  If the level of the logger is greater than the
	* level for the system property with name, the logger level
	* will be set to the value of system property.
	*/
	@:overload @:public public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : sun.rmi.runtime.Log;
	
	
}
/**
* Class specialized to log messages to the java.util.logging API
*/
@:native('sun$rmi$runtime$Log$LoggerLog') @:internal extern class Log_LoggerLog extends sun.rmi.runtime.Log
{
	@:overload @:public override public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload @:public override public function log(level : java.util.logging.Level, message : String) : Void;
	
	@:overload @:public override public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Set the output stream associated with the RMI server call
	* logger.
	*
	* Calling code needs LoggingPermission "control".
	*/
	@:overload @:public @:synchronized override public function setOutputStream(out : java.io.OutputStream) : Void;
	
	@:overload @:public @:synchronized override public function getPrintStream() : java.io.PrintStream;
	
	
}
/**
* Subclass of StreamHandler for redirecting log output.  flush
* must be called in the publish and close methods.
*/
@:native('sun$rmi$runtime$Log$InternalStreamHandler') @:internal extern class Log_InternalStreamHandler extends java.util.logging.StreamHandler
{
	@:overload @:public override public function publish(record : java.util.logging.LogRecord) : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
/**
* PrintStream which forwards log messages to the logger.  Class
* is needed to maintain backwards compatibility with
* RemoteServer.{set|get}Log().
*/
@:native('sun$rmi$runtime$Log$LoggerPrintStream') @:internal extern class Log_LoggerPrintStream extends java.io.PrintStream
{
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* Factory to create Log objects which deliver log messages to the
* java.rmi.server.LogStream API
*/
@:native('sun$rmi$runtime$Log$LogStreamLogFactory') @:internal extern class Log_LogStreamLogFactory implements sun.rmi.runtime.Log.Log_LogFactory
{
	/* create a new LogStreamLog for the specified log */
	@:overload @:public public function createLog(loggerName : String, oldLogName : String, level : java.util.logging.Level) : sun.rmi.runtime.Log;
	
	
}
/**
* Class specialized to log messages to the
* java.rmi.server.LogStream API
*/
@:native('sun$rmi$runtime$Log$LogStreamLog') @:internal extern class Log_LogStreamLog extends sun.rmi.runtime.Log
{
	@:overload @:public @:synchronized override public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload @:public override public function log(messageLevel : java.util.logging.Level, message : String) : Void;
	
	@:overload @:public override public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload @:public override public function getPrintStream() : java.io.PrintStream;
	
	@:overload @:public @:synchronized override public function setOutputStream(out : java.io.OutputStream) : Void;
	
	
}
