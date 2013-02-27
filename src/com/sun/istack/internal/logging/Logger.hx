package com.sun.istack.internal.logging;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
	* Prevents creation of a new instance of this Logger unless used by a subclass.
	*/
	@:overload private function new(systemLoggerName : String, componentName : String) : Void;
	
	/**
	* <p>
	* The factory method returns preconfigured Logger wrapper for the class. Method calls
	* {@link #getSystemLoggerName(java.lang.Class)} to generate default logger name.
	* </p>
	* <p>
	* Since there is no caching implemented, it is advised that the method is called only once
	* per a class in order to initialize a final static logger variable, which is then used
	* through the class to perform actual logging tasks.
	* </p>
	*
	* @param componentClass class of the component that will use the logger instance. Must not be {@code null}.
	* @return logger instance preconfigured for use with the component
	* @throws NullPointerException if the componentClass parameter is {@code null}.
	*/
	@:overload public static function getLogger(componentClass : Class<Dynamic>) : Logger;
	
	/**
	* The factory method returns preconfigured Logger wrapper for the class. Since there is no caching implemented,
	* it is advised that the method is called only once per a class in order to initialize a final static logger variable,
	* which is then used through the class to perform actual logging tasks.
	*
	* This method should be only used in a special cases when overriding of a default logger name derived from the
	* package of the component class is needed. For all common use cases please use {@link #getLogger(java.lang.Class)}
	* method.
	*
	* @param customLoggerName custom name of the logger.
	* @param componentClass class of the component that will use the logger instance. Must not be {@code null}.
	* @return logger instance preconfigured for use with the component
	* @throws NullPointerException if the componentClass parameter is {@code null}.
	*
	* @see #getLogger(java.lang.Class)
	*/
	@:overload public static function getLogger(customLoggerName : String, componentClass : Class<Dynamic>) : Logger;
	
	@:overload public function log(level : java.util.logging.Level, message : String) : Void;
	
	@:overload public function log(level : java.util.logging.Level, message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function finest(message : String) : Void;
	
	@:overload public function finest(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function finer(message : String) : Void;
	
	@:overload public function finer(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function fine(message : String) : Void;
	
	@:overload public function fine(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function info(message : String) : Void;
	
	@:overload public function info(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function config(message : String) : Void;
	
	@:overload public function config(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function warning(message : String) : Void;
	
	@:overload public function warning(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function severe(message : String) : Void;
	
	@:overload public function severe(message : String, thrown : java.lang.Throwable) : Void;
	
	@:overload public function isMethodCallLoggable() : Bool;
	
	@:overload public function isLoggable(level : java.util.logging.Level) : Bool;
	
	@:overload public function setLevel(level : java.util.logging.Level) : Void;
	
	@:overload public function entering() : Void;
	
	@:overload public function entering(parameters : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function exiting() : Void;
	
	@:overload public function exiting(result : Dynamic) : Void;
	
	/**
	* Method logs {@code exception}'s message as a {@code SEVERE} logging level
	* message.
	* <p/>
	* If {@code cause} parameter is not {@code null}, it is logged as well and
	* {@code exception} original cause is initialized with instance referenced
	* by {@code cause} parameter.
	*
	* @param exception exception whose message should be logged. Must not be
	*        {@code null}.
	* @param cause initial cause of the exception that should be logged as well
	*        and set as {@code exception}'s original cause. May be {@code null}.
	* @return the same exception instance that was passed in as the {@code exception}
	*         parameter.
	*/
	@:overload public function logSevereException<T : java.lang.Throwable>(exception : T, cause : java.lang.Throwable) : T;
	
	/**
	* Method logs {@code exception}'s message as a {@code SEVERE} logging level
	* message.
	* <p/>
	* If {@code logCause} parameter is {@code true}, {@code exception}'s original
	* cause is logged as well (if exists). This may be used in cases when
	* {@code exception}'s class provides constructor to initialize the original
	* cause. In such case you do not need to use
	* {@link #logSevereException(Throwable, Throwable)}
	* method version but you might still want to log the original cause as well.
	*
	* @param exception exception whose message should be logged. Must not be
	*        {@code null}.
	* @param logCause deterimnes whether initial cause of the exception should
	*        be logged as well
	* @return the same exception instance that was passed in as the {@code exception}
	*         parameter.
	*/
	@:overload public function logSevereException<T : java.lang.Throwable>(exception : T, logCause : Bool) : T;
	
	/**
	* Same as {@link #logSevereException(Throwable, boolean) logSevereException(exception, true)}.
	*/
	@:overload public function logSevereException<T : java.lang.Throwable>(exception : T) : T;
	
	/**
	* Method logs {@code exception}'s message at the logging level specified by the
	* {@code level} argument.
	* <p/>
	* If {@code cause} parameter is not {@code null}, it is logged as well and
	* {@code exception} original cause is initialized with instance referenced
	* by {@code cause} parameter.
	*
	* @param exception exception whose message should be logged. Must not be
	*        {@code null}.
	* @param cause initial cause of the exception that should be logged as well
	*        and set as {@code exception}'s original cause. May be {@code null}.
	* @param level loging level which should be used for logging
	* @return the same exception instance that was passed in as the {@code exception}
	*         parameter.
	*/
	@:overload public function logException<T : java.lang.Throwable>(exception : T, cause : java.lang.Throwable, level : java.util.logging.Level) : T;
	
	/**
	* Method logs {@code exception}'s message at the logging level specified by the
	* {@code level} argument.
	* <p/>
	* If {@code logCause} parameter is {@code true}, {@code exception}'s original
	* cause is logged as well (if exists). This may be used in cases when
	* {@code exception}'s class provides constructor to initialize the original
	* cause. In such case you do not need to use
	* {@link #logException(Throwable, Throwable, Level) logException(exception, cause, level)}
	* method version but you might still want to log the original cause as well.
	*
	* @param exception exception whose message should be logged. Must not be
	*        {@code null}.
	* @param logCause deterimnes whether initial cause of the exception should
	*        be logged as well
	* @param level loging level which should be used for logging
	* @return the same exception instance that was passed in as the {@code exception}
	*         parameter.
	*/
	@:overload public function logException<T : java.lang.Throwable>(exception : T, logCause : Bool, level : java.util.logging.Level) : T;
	
	/**
	* Same as {@link #logException(Throwable, Throwable, Level)
	* logException(exception, true, level)}.
	*/
	@:overload public function logException<T : java.lang.Throwable>(exception : T, level : java.util.logging.Level) : T;
	
	
}
