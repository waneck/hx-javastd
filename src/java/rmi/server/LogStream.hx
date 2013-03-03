package java.rmi.server;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* <code>LogStream</code> provides a mechanism for logging errors that are
* of possible interest to those monitoring a system.
*
* @author  Ann Wollrath (lots of code stolen from Ken Arnold)
* @since   JDK1.1
* @deprecated no replacement
*/
@:require(java1) extern class LogStream extends java.io.PrintStream
{
	/**
	* Return the LogStream identified by the given name.  If
	* a log corresponding to "name" does not exist, a log using
	* the default stream is created.
	* @param name name identifying the desired LogStream
	* @return log associated with given name
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:static public static function log(name : String) : java.rmi.server.LogStream;
	
	/**
	* Return the current default stream for new logs.
	* @return default log stream
	* @see #setDefaultStream
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:static @:synchronized public static function getDefaultStream() : java.io.PrintStream;
	
	/**
	* Set the default stream for new logs.
	* @param newDefault new default log stream
	* @see #getDefaultStream
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:static @:synchronized public static function setDefaultStream(newDefault : java.io.PrintStream) : Void;
	
	/**
	* Return the current stream to which output from this log is sent.
	* @return output stream for this log
	* @see #setOutputStream
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:synchronized public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Set the stream to which output from this log is sent.
	* @param out new output stream for this log
	* @see #getOutputStream
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:synchronized public function setOutputStream(out : java.io.OutputStream) : Void;
	
	/**
	* Write a byte of data to the stream.  If it is not a newline, then
	* the byte is appended to the internal buffer.  If it is a newline,
	* then the currently buffered line is sent to the log's output
	* stream, prefixed with the appropriate logging information.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Write a subarray of bytes.  Pass each through write byte method.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Return log name as string representation.
	* @return log name
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public public function toString() : String;
	
	/** log level constant (no logging). */
	@:public @:static @:final public static var SILENT(default, null) : Int;
	
	/** log level constant (brief logging). */
	@:public @:static @:final public static var BRIEF(default, null) : Int;
	
	/** log level constant (verbose logging). */
	@:public @:static @:final public static var VERBOSE(default, null) : Int;
	
	/**
	* Convert a string name of a logging level to its internal
	* integer representation.
	* @param s name of logging level (e.g., 'SILENT', 'BRIEF', 'VERBOSE')
	* @return corresponding integer log level
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload @:public @:static public static function parseLevel(s : String) : Int;
	
	
}
