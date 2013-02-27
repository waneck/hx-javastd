package java.util.logging;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class LogRecord implements java.io.Serializable
{
	/**
	* Construct a LogRecord with the given level and message values.
	* <p>
	* The sequence property will be initialized with a new unique value.
	* These sequence values are allocated in increasing order within a VM.
	* <p>
	* The millis property will be initialized to the current time.
	* <p>
	* The thread ID property will be initialized with a unique ID for
	* the current thread.
	* <p>
	* All other properties will be initialized to "null".
	*
	* @param level  a logging level value
	* @param msg  the raw non-localized logging message (may be null)
	*/
	@:overload public function new(level : java.util.logging.Level, msg : String) : Void;
	
	/**
	* Get the source Logger's name.
	*
	* @return source logger name (may be null)
	*/
	@:overload public function getLoggerName() : String;
	
	/**
	* Set the source Logger's name.
	*
	* @param name   the source logger name (may be null)
	*/
	@:overload public function setLoggerName(name : String) : Void;
	
	/**
	* Get the localization resource bundle
	* <p>
	* This is the ResourceBundle that should be used to localize
	* the message string before formatting it.  The result may
	* be null if the message is not localizable, or if no suitable
	* ResourceBundle is available.
	*/
	@:overload public function getResourceBundle() : java.util.ResourceBundle;
	
	/**
	* Set the localization resource bundle.
	*
	* @param bundle  localization bundle (may be null)
	*/
	@:overload public function setResourceBundle(bundle : java.util.ResourceBundle) : Void;
	
	/**
	* Get the localization resource bundle name
	* <p>
	* This is the name for the ResourceBundle that should be
	* used to localize the message string before formatting it.
	* The result may be null if the message is not localizable.
	*/
	@:overload public function getResourceBundleName() : String;
	
	/**
	* Set the localization resource bundle name.
	*
	* @param name  localization bundle name (may be null)
	*/
	@:overload public function setResourceBundleName(name : String) : Void;
	
	/**
	* Get the logging message level, for example Level.SEVERE.
	* @return the logging message level
	*/
	@:overload public function getLevel() : java.util.logging.Level;
	
	/**
	* Set the logging message level, for example Level.SEVERE.
	* @param level the logging message level
	*/
	@:overload public function setLevel(level : java.util.logging.Level) : Void;
	
	/**
	* Get the sequence number.
	* <p>
	* Sequence numbers are normally assigned in the LogRecord
	* constructor, which assigns unique sequence numbers to
	* each new LogRecord in increasing order.
	* @return the sequence number
	*/
	@:overload public function getSequenceNumber() : haxe.Int64;
	
	/**
	* Set the sequence number.
	* <p>
	* Sequence numbers are normally assigned in the LogRecord constructor,
	* so it should not normally be necessary to use this method.
	*/
	@:overload public function setSequenceNumber(seq : haxe.Int64) : Void;
	
	/**
	* Get the  name of the class that (allegedly) issued the logging request.
	* <p>
	* Note that this sourceClassName is not verified and may be spoofed.
	* This information may either have been provided as part of the
	* logging call, or it may have been inferred automatically by the
	* logging framework.  In the latter case, the information may only
	* be approximate and may in fact describe an earlier call on the
	* stack frame.
	* <p>
	* May be null if no information could be obtained.
	*
	* @return the source class name
	*/
	@:overload public function getSourceClassName() : String;
	
	/**
	* Set the name of the class that (allegedly) issued the logging request.
	*
	* @param sourceClassName the source class name (may be null)
	*/
	@:overload public function setSourceClassName(sourceClassName : String) : Void;
	
	/**
	* Get the  name of the method that (allegedly) issued the logging request.
	* <p>
	* Note that this sourceMethodName is not verified and may be spoofed.
	* This information may either have been provided as part of the
	* logging call, or it may have been inferred automatically by the
	* logging framework.  In the latter case, the information may only
	* be approximate and may in fact describe an earlier call on the
	* stack frame.
	* <p>
	* May be null if no information could be obtained.
	*
	* @return the source method name
	*/
	@:overload public function getSourceMethodName() : String;
	
	/**
	* Set the name of the method that (allegedly) issued the logging request.
	*
	* @param sourceMethodName the source method name (may be null)
	*/
	@:overload public function setSourceMethodName(sourceMethodName : String) : Void;
	
	/**
	* Get the "raw" log message, before localization or formatting.
	* <p>
	* May be null, which is equivalent to the empty string "".
	* <p>
	* This message may be either the final text or a localization key.
	* <p>
	* During formatting, if the source logger has a localization
	* ResourceBundle and if that ResourceBundle has an entry for
	* this message string, then the message string is replaced
	* with the localized value.
	*
	* @return the raw message string
	*/
	@:overload public function getMessage() : String;
	
	/**
	* Set the "raw" log message, before localization or formatting.
	*
	* @param message the raw message string (may be null)
	*/
	@:overload public function setMessage(message : String) : Void;
	
	/**
	* Get the parameters to the log message.
	*
	* @return the log message parameters.  May be null if
	*                  there are no parameters.
	*/
	@:overload public function getParameters() : java.NativeArray<Dynamic>;
	
	/**
	* Set the parameters to the log message.
	*
	* @param parameters the log message parameters. (may be null)
	*/
	@:overload public function setParameters(parameters : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Get an identifier for the thread where the message originated.
	* <p>
	* This is a thread identifier within the Java VM and may or
	* may not map to any operating system ID.
	*
	* @return thread ID
	*/
	@:overload public function getThreadID() : Int;
	
	/**
	* Set an identifier for the thread where the message originated.
	* @param threadID  the thread ID
	*/
	@:overload public function setThreadID(threadID : Int) : Void;
	
	/**
	* Get event time in milliseconds since 1970.
	*
	* @return event time in millis since 1970
	*/
	@:overload public function getMillis() : haxe.Int64;
	
	/**
	* Set event time.
	*
	* @param millis event time in millis since 1970
	*/
	@:overload public function setMillis(millis : haxe.Int64) : Void;
	
	/**
	* Get any throwable associated with the log record.
	* <p>
	* If the event involved an exception, this will be the
	* exception object. Otherwise null.
	*
	* @return a throwable
	*/
	@:overload public function getThrown() : java.lang.Throwable;
	
	/**
	* Set a throwable associated with the log event.
	*
	* @param thrown  a throwable (may be null)
	*/
	@:overload public function setThrown(thrown : java.lang.Throwable) : Void;
	
	
}
