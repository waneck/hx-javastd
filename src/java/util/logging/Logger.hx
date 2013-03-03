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
extern class Logger
{
	/**
	* GLOBAL_LOGGER_NAME is a name for the global logger.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var GLOBAL_LOGGER_NAME(default, null) : String;
	
	/**
	* Return global logger object with the name Logger.GLOBAL_LOGGER_NAME.
	*
	* @return global logger object
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static @:final public static function getGlobal() : java.util.logging.Logger;
	
	/**
	* The "global" Logger object is provided as a convenience to developers
	* who are making casual use of the Logging package.  Developers
	* who are making serious use of the logging package (for example
	* in products) should create and use their own Logger objects,
	* with appropriate names, so that logging can be controlled on a
	* suitable per-Logger granularity. Developers also need to keep a
	* strong reference to their Logger objects to prevent them from
	* being garbage collected.
	* <p>
	* @deprecated Initialization of this field is prone to deadlocks.
	* The field must be initialized by the Logger class initialization
	* which may cause deadlocks with the LogManager class initialization.
	* In such cases two class initialization wait for each other to complete.
	* The preferred way to get the global logger object is via the call
	* <code>Logger.getGlobal()</code>.
	* For compatibility with old JDK versions where the
	* <code>Logger.getGlobal()</code> is not available use the call
	* <code>Logger.getLogger(Logger.GLOBAL_LOGGER_NAME)</code>
	* or <code>Logger.getLogger("global")</code>.
	*/
	@:public @:static @:final public static var global(default, null) : java.util.logging.Logger;
	
	/**
	* Protected method to construct a logger for a named subsystem.
	* <p>
	* The logger will be initially configured with a null Level
	* and with useParentHandlers set to true.
	*
	* @param   name    A name for the logger.  This should
	*                          be a dot-separated name and should normally
	*                          be based on the package name or class name
	*                          of the subsystem, such as java.net
	*                          or javax.swing.  It may be null for anonymous Loggers.
	* @param   resourceBundleName  name of ResourceBundle to be used for localizing
	*                          messages for this logger.  May be null if none
	*                          of the messages require localization.
	* @throws MissingResourceException if the resourceBundleName is non-null and
	*             no corresponding resource can be found.
	*/
	@:overload @:protected private function new(name : String, resourceBundleName : String) : Void;
	
	/**
	* Find or create a logger for a named subsystem.  If a logger has
	* already been created with the given name it is returned.  Otherwise
	* a new logger is created.
	* <p>
	* If a new logger is created its log level will be configured
	* based on the LogManager configuration and it will configured
	* to also send logging output to its parent's Handlers.  It will
	* be registered in the LogManager global namespace.
	* <p>
	* Note: The LogManager may only retain a weak reference to the newly
	* created Logger. It is important to understand that a previously
	* created Logger with the given name may be garbage collected at any
	* time if there is no strong reference to the Logger. In particular,
	* this means that two back-to-back calls like
	* {@code getLogger("MyLogger").log(...)} may use different Logger
	* objects named "MyLogger" if there is no strong reference to the
	* Logger named "MyLogger" elsewhere in the program.
	*
	* @param   name            A name for the logger.  This should
	*                          be a dot-separated name and should normally
	*                          be based on the package name or class name
	*                          of the subsystem, such as java.net
	*                          or javax.swing
	* @return a suitable Logger
	* @throws NullPointerException if the name is null.
	*/
	@:overload @:public @:static public static function getLogger(name : String) : java.util.logging.Logger;
	
	/**
	* Find or create a logger for a named subsystem.  If a logger has
	* already been created with the given name it is returned.  Otherwise
	* a new logger is created.
	* <p>
	* If a new logger is created its log level will be configured
	* based on the LogManager and it will configured to also send logging
	* output to its parent's Handlers.  It will be registered in
	* the LogManager global namespace.
	* <p>
	* Note: The LogManager may only retain a weak reference to the newly
	* created Logger. It is important to understand that a previously
	* created Logger with the given name may be garbage collected at any
	* time if there is no strong reference to the Logger. In particular,
	* this means that two back-to-back calls like
	* {@code getLogger("MyLogger", ...).log(...)} may use different Logger
	* objects named "MyLogger" if there is no strong reference to the
	* Logger named "MyLogger" elsewhere in the program.
	* <p>
	* If the named Logger already exists and does not yet have a
	* localization resource bundle then the given resource bundle
	* name is used.  If the named Logger already exists and has
	* a different resource bundle name then an IllegalArgumentException
	* is thrown.
	* <p>
	* @param   name    A name for the logger.  This should
	*                          be a dot-separated name and should normally
	*                          be based on the package name or class name
	*                          of the subsystem, such as java.net
	*                          or javax.swing
	* @param   resourceBundleName  name of ResourceBundle to be used for localizing
	*                          messages for this logger. May be <CODE>null</CODE> if none of
	*                          the messages require localization.
	* @return a suitable Logger
	* @throws MissingResourceException if the resourceBundleName is non-null and
	*             no corresponding resource can be found.
	* @throws IllegalArgumentException if the Logger already exists and uses
	*             a different resource bundle name.
	* @throws NullPointerException if the name is null.
	*/
	@:overload @:public @:static public static function getLogger(name : String, resourceBundleName : String) : java.util.logging.Logger;
	
	/**
	* Create an anonymous Logger.  The newly created Logger is not
	* registered in the LogManager namespace.  There will be no
	* access checks on updates to the logger.
	* <p>
	* This factory method is primarily intended for use from applets.
	* Because the resulting Logger is anonymous it can be kept private
	* by the creating class.  This removes the need for normal security
	* checks, which in turn allows untrusted applet code to update
	* the control state of the Logger.  For example an applet can do
	* a setLevel or an addHandler on an anonymous Logger.
	* <p>
	* Even although the new logger is anonymous, it is configured
	* to have the root logger ("") as its parent.  This means that
	* by default it inherits its effective level and handlers
	* from the root logger.
	* <p>
	*
	* @return a newly created private Logger
	*/
	@:overload @:public @:static public static function getAnonymousLogger() : java.util.logging.Logger;
	
	/**
	* Create an anonymous Logger.  The newly created Logger is not
	* registered in the LogManager namespace.  There will be no
	* access checks on updates to the logger.
	* <p>
	* This factory method is primarily intended for use from applets.
	* Because the resulting Logger is anonymous it can be kept private
	* by the creating class.  This removes the need for normal security
	* checks, which in turn allows untrusted applet code to update
	* the control state of the Logger.  For example an applet can do
	* a setLevel or an addHandler on an anonymous Logger.
	* <p>
	* Even although the new logger is anonymous, it is configured
	* to have the root logger ("") as its parent.  This means that
	* by default it inherits its effective level and handlers
	* from the root logger.
	* <p>
	* @param   resourceBundleName  name of ResourceBundle to be used for localizing
	*                          messages for this logger.
	*          May be null if none of the messages require localization.
	* @return a newly created private Logger
	* @throws MissingResourceException if the resourceBundleName is non-null and
	*             no corresponding resource can be found.
	*/
	@:overload @:public @:static public static function getAnonymousLogger(resourceBundleName : String) : java.util.logging.Logger;
	
	/**
	* Retrieve the localization resource bundle for this
	* logger for the current default locale.  Note that if
	* the result is null, then the Logger will use a resource
	* bundle inherited from its parent.
	*
	* @return localization bundle (may be null)
	*/
	@:overload @:public public function getResourceBundle() : java.util.ResourceBundle;
	
	/**
	* Retrieve the localization resource bundle name for this
	* logger.  Note that if the result is null, then the Logger
	* will use a resource bundle name inherited from its parent.
	*
	* @return localization bundle name (may be null)
	*/
	@:overload @:public public function getResourceBundleName() : String;
	
	/**
	* Set a filter to control output on this Logger.
	* <P>
	* After passing the initial "level" check, the Logger will
	* call this Filter to check if a log record should really
	* be published.
	*
	* @param   newFilter  a filter object (may be null)
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function setFilter(newFilter : java.util.logging.Filter) : Void;
	
	/**
	* Get the current filter for this Logger.
	*
	* @return  a filter object (may be null)
	*/
	@:overload @:public public function getFilter() : java.util.logging.Filter;
	
	/**
	* Log a LogRecord.
	* <p>
	* All the other logging methods in this class call through
	* this method to actually perform any logging.  Subclasses can
	* override this single method to capture all log activity.
	*
	* @param record the LogRecord to be published
	*/
	@:overload @:public public function log(record : java.util.logging.LogRecord) : Void;
	
	/**
	* Log a message, with no arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function log(level : java.util.logging.Level, msg : String) : Void;
	
	/**
	* Log a message, with one object parameter.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   msg     The string message (or a key in the message catalog)
	* @param   param1  parameter to the message
	*/
	@:overload @:public public function log(level : java.util.logging.Level, msg : String, param1 : Dynamic) : Void;
	
	/**
	* Log a message, with an array of object arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   msg     The string message (or a key in the message catalog)
	* @param   params  array of parameters to the message
	*/
	@:overload @:public public function log(level : java.util.logging.Level, msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Log a message, with associated Throwable information.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given arguments are stored in a LogRecord
	* which is forwarded to all registered output handlers.
	* <p>
	* Note that the thrown argument is stored in the LogRecord thrown
	* property, rather than the LogRecord parameters property.  Thus is it
	* processed specially by output Formatters and is not treated
	* as a formatting parameter to the LogRecord message property.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   msg     The string message (or a key in the message catalog)
	* @param   thrown  Throwable associated with log message.
	*/
	@:overload @:public public function log(level : java.util.logging.Level, msg : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Log a message, specifying source class and method,
	* with no arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function logp(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, msg : String) : Void;
	
	/**
	* Log a message, specifying source class and method,
	* with a single object parameter to the log message.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   msg      The string message (or a key in the message catalog)
	* @param   param1    Parameter to the log message.
	*/
	@:overload @:public public function logp(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, msg : String, param1 : Dynamic) : Void;
	
	/**
	* Log a message, specifying source class and method,
	* with an array of object arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   msg     The string message (or a key in the message catalog)
	* @param   params  Array of parameters to the message
	*/
	@:overload @:public public function logp(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Log a message, specifying source class and method,
	* with associated Throwable information.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given arguments are stored in a LogRecord
	* which is forwarded to all registered output handlers.
	* <p>
	* Note that the thrown argument is stored in the LogRecord thrown
	* property, rather than the LogRecord parameters property.  Thus is it
	* processed specially by output Formatters and is not treated
	* as a formatting parameter to the LogRecord message property.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   msg     The string message (or a key in the message catalog)
	* @param   thrown  Throwable associated with log message.
	*/
	@:overload @:public public function logp(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, msg : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Log a message, specifying source class, method, and resource bundle name
	* with no arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* The msg string is localized using the named resource bundle.  If the
	* resource bundle name is null, or an empty String or invalid
	* then the msg string is not localized.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   bundleName     name of resource bundle to localize msg,
	*                         can be null
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function logrb(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, bundleName : String, msg : String) : Void;
	
	/**
	* Log a message, specifying source class, method, and resource bundle name,
	* with a single object parameter to the log message.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* The msg string is localized using the named resource bundle.  If the
	* resource bundle name is null, or an empty String or invalid
	* then the msg string is not localized.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   bundleName     name of resource bundle to localize msg,
	*                         can be null
	* @param   msg      The string message (or a key in the message catalog)
	* @param   param1    Parameter to the log message.
	*/
	@:overload @:public public function logrb(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, bundleName : String, msg : String, param1 : Dynamic) : Void;
	
	/**
	* Log a message, specifying source class, method, and resource bundle name,
	* with an array of object arguments.
	* <p>
	* If the logger is currently enabled for the given message
	* level then a corresponding LogRecord is created and forwarded
	* to all the registered output Handler objects.
	* <p>
	* The msg string is localized using the named resource bundle.  If the
	* resource bundle name is null, or an empty String or invalid
	* then the msg string is not localized.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   bundleName     name of resource bundle to localize msg,
	*                         can be null.
	* @param   msg     The string message (or a key in the message catalog)
	* @param   params  Array of parameters to the message
	*/
	@:overload @:public public function logrb(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, bundleName : String, msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Log a message, specifying source class, method, and resource bundle name,
	* with associated Throwable information.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given arguments are stored in a LogRecord
	* which is forwarded to all registered output handlers.
	* <p>
	* The msg string is localized using the named resource bundle.  If the
	* resource bundle name is null, or an empty String or invalid
	* then the msg string is not localized.
	* <p>
	* Note that the thrown argument is stored in the LogRecord thrown
	* property, rather than the LogRecord parameters property.  Thus is it
	* processed specially by output Formatters and is not treated
	* as a formatting parameter to the LogRecord message property.
	* <p>
	* @param   level   One of the message level identifiers, e.g., SEVERE
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that issued the logging request
	* @param   bundleName     name of resource bundle to localize msg,
	*                         can be null
	* @param   msg     The string message (or a key in the message catalog)
	* @param   thrown  Throwable associated with log message.
	*/
	@:overload @:public public function logrb(level : java.util.logging.Level, sourceClass : String, sourceMethod : String, bundleName : String, msg : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Log a method entry.
	* <p>
	* This is a convenience method that can be used to log entry
	* to a method.  A LogRecord with message "ENTRY", log level
	* FINER, and the given sourceMethod and sourceClass is logged.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that is being entered
	*/
	@:overload @:public public function entering(sourceClass : String, sourceMethod : String) : Void;
	
	/**
	* Log a method entry, with one parameter.
	* <p>
	* This is a convenience method that can be used to log entry
	* to a method.  A LogRecord with message "ENTRY {0}", log level
	* FINER, and the given sourceMethod, sourceClass, and parameter
	* is logged.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that is being entered
	* @param   param1         parameter to the method being entered
	*/
	@:overload @:public public function entering(sourceClass : String, sourceMethod : String, param1 : Dynamic) : Void;
	
	/**
	* Log a method entry, with an array of parameters.
	* <p>
	* This is a convenience method that can be used to log entry
	* to a method.  A LogRecord with message "ENTRY" (followed by a
	* format {N} indicator for each entry in the parameter array),
	* log level FINER, and the given sourceMethod, sourceClass, and
	* parameters is logged.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of method that is being entered
	* @param   params         array of parameters to the method being entered
	*/
	@:overload @:public public function entering(sourceClass : String, sourceMethod : String, params : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Log a method return.
	* <p>
	* This is a convenience method that can be used to log returning
	* from a method.  A LogRecord with message "RETURN", log level
	* FINER, and the given sourceMethod and sourceClass is logged.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of the method
	*/
	@:overload @:public public function exiting(sourceClass : String, sourceMethod : String) : Void;
	
	/**
	* Log a method return, with result object.
	* <p>
	* This is a convenience method that can be used to log returning
	* from a method.  A LogRecord with message "RETURN {0}", log level
	* FINER, and the gives sourceMethod, sourceClass, and result
	* object is logged.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod   name of the method
	* @param   result  Object that is being returned
	*/
	@:overload @:public public function exiting(sourceClass : String, sourceMethod : String, result : Dynamic) : Void;
	
	/**
	* Log throwing an exception.
	* <p>
	* This is a convenience method to log that a method is
	* terminating by throwing an exception.  The logging is done
	* using the FINER level.
	* <p>
	* If the logger is currently enabled for the given message
	* level then the given arguments are stored in a LogRecord
	* which is forwarded to all registered output handlers.  The
	* LogRecord's message is set to "THROW".
	* <p>
	* Note that the thrown argument is stored in the LogRecord thrown
	* property, rather than the LogRecord parameters property.  Thus is it
	* processed specially by output Formatters and is not treated
	* as a formatting parameter to the LogRecord message property.
	* <p>
	* @param   sourceClass    name of class that issued the logging request
	* @param   sourceMethod  name of the method.
	* @param   thrown  The Throwable that is being thrown.
	*/
	@:overload @:public public function throwing(sourceClass : String, sourceMethod : String, thrown : java.lang.Throwable) : Void;
	
	/**
	* Log a SEVERE message.
	* <p>
	* If the logger is currently enabled for the SEVERE message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function severe(msg : String) : Void;
	
	/**
	* Log a WARNING message.
	* <p>
	* If the logger is currently enabled for the WARNING message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function warning(msg : String) : Void;
	
	/**
	* Log an INFO message.
	* <p>
	* If the logger is currently enabled for the INFO message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function info(msg : String) : Void;
	
	/**
	* Log a CONFIG message.
	* <p>
	* If the logger is currently enabled for the CONFIG message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function config(msg : String) : Void;
	
	/**
	* Log a FINE message.
	* <p>
	* If the logger is currently enabled for the FINE message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function fine(msg : String) : Void;
	
	/**
	* Log a FINER message.
	* <p>
	* If the logger is currently enabled for the FINER message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function finer(msg : String) : Void;
	
	/**
	* Log a FINEST message.
	* <p>
	* If the logger is currently enabled for the FINEST message
	* level then the given message is forwarded to all the
	* registered output Handler objects.
	* <p>
	* @param   msg     The string message (or a key in the message catalog)
	*/
	@:overload @:public public function finest(msg : String) : Void;
	
	/**
	* Set the log level specifying which message levels will be
	* logged by this logger.  Message levels lower than this
	* value will be discarded.  The level value Level.OFF
	* can be used to turn off logging.
	* <p>
	* If the new level is null, it means that this node should
	* inherit its level from its nearest ancestor with a specific
	* (non-null) level value.
	*
	* @param newLevel   the new value for the log level (may be null)
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function setLevel(newLevel : java.util.logging.Level) : Void;
	
	/**
	* Get the log Level that has been specified for this Logger.
	* The result may be null, which means that this logger's
	* effective level will be inherited from its parent.
	*
	* @return  this Logger's level
	*/
	@:overload @:public public function getLevel() : java.util.logging.Level;
	
	/**
	* Check if a message of the given level would actually be logged
	* by this logger.  This check is based on the Loggers effective level,
	* which may be inherited from its parent.
	*
	* @param   level   a message logging level
	* @return  true if the given message level is currently being logged.
	*/
	@:overload @:public public function isLoggable(level : java.util.logging.Level) : Bool;
	
	/**
	* Get the name for this logger.
	* @return logger name.  Will be null for anonymous Loggers.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Add a log Handler to receive logging messages.
	* <p>
	* By default, Loggers also send their output to their parent logger.
	* Typically the root Logger is configured with a set of Handlers
	* that essentially act as default handlers for all loggers.
	*
	* @param   handler a logging Handler
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function addHandler(handler : java.util.logging.Handler) : Void;
	
	/**
	* Remove a log Handler.
	* <P>
	* Returns silently if the given Handler is not found or is null
	*
	* @param   handler a logging Handler
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function removeHandler(handler : java.util.logging.Handler) : Void;
	
	/**
	* Get the Handlers associated with this logger.
	* <p>
	* @return  an array of all registered Handlers
	*/
	@:overload @:public public function getHandlers() : java.NativeArray<java.util.logging.Handler>;
	
	/**
	* Specify whether or not this logger should send its output
	* to its parent Logger.  This means that any LogRecords will
	* also be written to the parent's Handlers, and potentially
	* to its parent, recursively up the namespace.
	*
	* @param useParentHandlers   true if output is to be sent to the
	*          logger's parent.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function setUseParentHandlers(useParentHandlers : Bool) : Void;
	
	/**
	* Discover whether or not this logger is sending its output
	* to its parent logger.
	*
	* @return  true if output is to be sent to the logger's parent
	*/
	@:overload @:public public function getUseParentHandlers() : Bool;
	
	/**
	* Return the parent for this Logger.
	* <p>
	* This method returns the nearest extant parent in the namespace.
	* Thus if a Logger is called "a.b.c.d", and a Logger called "a.b"
	* has been created but no logger "a.b.c" exists, then a call of
	* getParent on the Logger "a.b.c.d" will return the Logger "a.b".
	* <p>
	* The result will be null if it is called on the root Logger
	* in the namespace.
	*
	* @return nearest existing parent Logger
	*/
	@:overload @:public public function getParent() : java.util.logging.Logger;
	
	/**
	* Set the parent for this Logger.  This method is used by
	* the LogManager to update a Logger when the namespace changes.
	* <p>
	* It should not be called from application code.
	* <p>
	* @param  parent   the new parent logger
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have LoggingPermission("control").
	*/
	@:overload @:public public function setParent(parent : java.util.logging.Logger) : Void;
	
	
}
@:native('java$util$logging$Logger$SystemLoggerHelper') @:internal extern class Logger_SystemLoggerHelper
{
	
}
