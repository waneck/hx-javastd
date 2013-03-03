package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Messager extends com.sun.tools.javac.util.Log implements com.sun.javadoc.DocErrorReporter
{
	/** Get the current messager, which is also the compiler log. */
	@:overload @:public @:static public static function instance0(context : com.sun.tools.javac.util.Context) : com.sun.tools.javadoc.Messager;
	
	@:overload @:public @:static public static function preRegister(context : com.sun.tools.javac.util.Context, programName : String) : Void;
	
	@:overload @:public @:static public static function preRegister(context : com.sun.tools.javac.util.Context, programName : String, errWriter : java.io.PrintWriter, warnWriter : java.io.PrintWriter, noticeWriter : java.io.PrintWriter) : Void;
	
	/**
	* Constructor
	* @param programName  Name of the program (for error messages).
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context, programName : String) : Void;
	
	/**
	* Constructor
	* @param programName  Name of the program (for error messages).
	* @param errWriter    Stream for error messages
	* @param warnWriter   Stream for warnings
	* @param noticeWriter Stream for other messages
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context, programName : String, errWriter : java.io.PrintWriter, warnWriter : java.io.PrintWriter, noticeWriter : java.io.PrintWriter) : Void;
	
	@:overload @:protected override private function getDefaultMaxErrors() : Int;
	
	@:overload @:protected override private function getDefaultMaxWarnings() : Int;
	
	/**
	* Reset resource bundle, eg. locale has changed.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Print error message, increment error count.
	* Part of DocErrorReporter.
	*
	* @param msg message to print
	*/
	@:overload @:public public function printError(msg : String) : Void;
	
	/**
	* Print error message, increment error count.
	* Part of DocErrorReporter.
	*
	* @param pos the position where the error occurs
	* @param msg message to print
	*/
	@:overload @:public public function printError(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	* Part of DocErrorReporter.
	*
	* @param msg message to print
	*/
	@:overload @:public public function printWarning(msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	* Part of DocErrorReporter.
	*
	* @param pos the position where the error occurs
	* @param msg message to print
	*/
	@:overload @:public public function printWarning(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print a message.
	* Part of DocErrorReporter.
	*
	* @param msg message to print
	*/
	@:overload @:public public function printNotice(msg : String) : Void;
	
	/**
	* Print a message.
	* Part of DocErrorReporter.
	*
	* @param pos the position where the error occurs
	* @param msg message to print
	*/
	@:overload @:public public function printNotice(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	*/
	@:overload @:public public function error(pos : com.sun.javadoc.SourcePosition, key : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload @:public public function error(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload @:public public function error(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload @:public public function error(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	*/
	@:overload @:public public function warning(pos : com.sun.javadoc.SourcePosition, key : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload @:public public function warning(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload @:public public function warning(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload @:public public function warning(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload @:public public function warning(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String, a3 : String, a4 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	*/
	@:overload @:public public function notice(key : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload @:public public function notice(key : String, a1 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload @:public public function notice(key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload @:public public function notice(key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Return total number of errors, including those recorded
	* in the compilation log.
	*/
	@:overload @:public public function nerrors() : Int;
	
	/**
	* Return total number of warnings, including those recorded
	* in the compilation log.
	*/
	@:overload @:public public function nwarnings() : Int;
	
	/**
	* Print exit message.
	*/
	@:overload @:public public function exitNotice() : Void;
	
	/**
	* Force program exit, e.g., from a fatal error.
	* <p>
	* TODO: This method does not really belong here.
	*/
	@:overload @:public public function exit() : Void;
	
	
}
@:native('com$sun$tools$javadoc$Messager$ExitJavadoc') extern class Messager_ExitJavadoc extends java.lang.Error
{
	
}
