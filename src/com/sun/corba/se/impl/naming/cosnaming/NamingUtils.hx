package com.sun.corba.se.impl.naming.cosnaming;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class NamingUtils
{
	/**
	* Debug flag which must be true for debug streams to be created and
	* dprint output to be generated.
	*/
	@:public @:static public static var debug : Bool;
	
	/**
	* Prints the message to the debug stream if debugging is enabled.
	* @param msg the debug message to print.
	*/
	@:overload @:public @:static public static function dprint(msg : String) : Void;
	
	/**
	* Prints the message to the error stream (System.err is default).
	* @param msg the error message to print.
	*/
	@:overload @:public @:static public static function errprint(msg : String) : Void;
	
	/**
	* Prints the stacktrace of the supplied exception to the error stream.
	* @param e any Java exception.
	*/
	@:overload @:public @:static public static function printException(e : java.lang.Exception) : Void;
	
	/**
	* Create a debug print stream to the supplied log file.
	* @param logFile the file to which debug output will go.
	* @exception IOException thrown if the file cannot be opened for output.
	*/
	@:overload @:public @:static public static function makeDebugStream(logFile : java.io.File) : Void;
	
	/**
	* Create a error print stream to the supplied file.
	* @param logFile the file to which error messages will go.
	* @exception IOException thrown if the file cannot be opened for output.
	*/
	@:overload @:public @:static public static function makeErrStream(errFile : java.io.File) : Void;
	
	/**
	* The debug printstream.
	*/
	@:public @:static public static var debugStream : java.io.PrintStream;
	
	/**
	* The error printstream.
	*/
	@:public @:static public static var errStream : java.io.PrintStream;
	
	
}
