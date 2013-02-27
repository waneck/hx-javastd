package java.io;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Console implements java.io.Flushable
{
	/**
	* Retrieves the unique {@link java.io.PrintWriter PrintWriter} object
	* associated with this console.
	*
	* @return  The printwriter associated with this console
	*/
	@:overload public function writer() : java.io.PrintWriter;
	
	/**
	* Retrieves the unique {@link java.io.Reader Reader} object associated
	* with this console.
	* <p>
	* This method is intended to be used by sophisticated applications, for
	* example, a {@link java.util.Scanner} object which utilizes the rich
	* parsing/scanning functionality provided by the <tt>Scanner</tt>:
	* <blockquote><pre>
	* Console con = System.console();
	* if (con != null) {
	*     Scanner sc = new Scanner(con.reader());
	*     ...
	* }
	* </pre></blockquote>
	* <p>
	* For simple applications requiring only line-oriented reading, use
	* <tt>{@link #readLine}</tt>.
	* <p>
	* The bulk read operations {@link java.io.Reader#read(char[]) read(char[]) },
	* {@link java.io.Reader#read(char[], int, int) read(char[], int, int) } and
	* {@link java.io.Reader#read(java.nio.CharBuffer) read(java.nio.CharBuffer)}
	* on the returned object will not read in characters beyond the line
	* bound for each invocation, even if the destination buffer has space for
	* more characters. A line bound is considered to be any one of a line feed
	* (<tt>'\n'</tt>), a carriage return (<tt>'\r'</tt>), a carriage return
	* followed immediately by a linefeed, or an end of stream.
	*
	* @return  The reader associated with this console
	*/
	@:overload public function reader() : java.io.Reader;
	
	/**
	* Writes a formatted string to this console's output stream using
	* the specified format string and arguments.
	*
	* @param  fmt
	*         A format string as described in <a
	*         href="../util/Formatter.html#syntax">Format string syntax</a>
	*
	* @param  args
	*         Arguments referenced by the format specifiers in the format
	*         string.  If there are more arguments than format specifiers, the
	*         extra arguments are ignored.  The number of arguments is
	*         variable and may be zero.  The maximum number of arguments is
	*         limited by the maximum dimension of a Java array as defined by
	*         <cite>The Java&trade; Virtual Machine Specification</cite>.
	*         The behaviour on a
	*         <tt>null</tt> argument depends on the <a
	*         href="../util/Formatter.html#syntax">conversion</a>.
	*
	* @throws  IllegalFormatException
	*          If a format string contains an illegal syntax, a format
	*          specifier that is incompatible with the given arguments,
	*          insufficient arguments given the format string, or other
	*          illegal conditions.  For specification of all possible
	*          formatting errors, see the <a
	*          href="../util/Formatter.html#detail">Details</a> section
	*          of the formatter class specification.
	*
	* @return  This console
	*/
	@:overload public function format(fmt : String, args : java.NativeArray<Dynamic>) : Console;
	
	/**
	* A convenience method to write a formatted string to this console's
	* output stream using the specified format string and arguments.
	*
	* <p> An invocation of this method of the form <tt>con.printf(format,
	* args)</tt> behaves in exactly the same way as the invocation of
	* <pre>con.format(format, args)</pre>.
	*
	* @param  format
	*         A format string as described in <a
	*         href="../util/Formatter.html#syntax">Format string syntax</a>.
	*
	* @param  args
	*         Arguments referenced by the format specifiers in the format
	*         string.  If there are more arguments than format specifiers, the
	*         extra arguments are ignored.  The number of arguments is
	*         variable and may be zero.  The maximum number of arguments is
	*         limited by the maximum dimension of a Java array as defined by
	*         <cite>The Java&trade; Virtual Machine Specification</cite>.
	*         The behaviour on a
	*         <tt>null</tt> argument depends on the <a
	*         href="../util/Formatter.html#syntax">conversion</a>.
	*
	* @throws  IllegalFormatException
	*          If a format string contains an illegal syntax, a format
	*          specifier that is incompatible with the given arguments,
	*          insufficient arguments given the format string, or other
	*          illegal conditions.  For specification of all possible
	*          formatting errors, see the <a
	*          href="../util/Formatter.html#detail">Details</a> section of the
	*          formatter class specification.
	*
	* @return  This console
	*/
	@:overload public function printf(format : String, args : java.NativeArray<Dynamic>) : Console;
	
	/**
	* Provides a formatted prompt, then reads a single line of text from the
	* console.
	*
	* @param  fmt
	*         A format string as described in <a
	*         href="../util/Formatter.html#syntax">Format string syntax</a>.
	*
	* @param  args
	*         Arguments referenced by the format specifiers in the format
	*         string.  If there are more arguments than format specifiers, the
	*         extra arguments are ignored.  The maximum number of arguments is
	*         limited by the maximum dimension of a Java array as defined by
	*         <cite>The Java&trade; Virtual Machine Specification</cite>.
	*
	* @throws  IllegalFormatException
	*          If a format string contains an illegal syntax, a format
	*          specifier that is incompatible with the given arguments,
	*          insufficient arguments given the format string, or other
	*          illegal conditions.  For specification of all possible
	*          formatting errors, see the <a
	*          href="../util/Formatter.html#detail">Details</a> section
	*          of the formatter class specification.
	*
	* @throws IOError
	*         If an I/O error occurs.
	*
	* @return  A string containing the line read from the console, not
	*          including any line-termination characters, or <tt>null</tt>
	*          if an end of stream has been reached.
	*/
	@:overload public function readLine(fmt : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Reads a single line of text from the console.
	*
	* @throws IOError
	*         If an I/O error occurs.
	*
	* @return  A string containing the line read from the console, not
	*          including any line-termination characters, or <tt>null</tt>
	*          if an end of stream has been reached.
	*/
	@:overload public function readLine() : String;
	
	/**
	* Provides a formatted prompt, then reads a password or passphrase from
	* the console with echoing disabled.
	*
	* @param  fmt
	*         A format string as described in <a
	*         href="../util/Formatter.html#syntax">Format string syntax</a>
	*         for the prompt text.
	*
	* @param  args
	*         Arguments referenced by the format specifiers in the format
	*         string.  If there are more arguments than format specifiers, the
	*         extra arguments are ignored.  The maximum number of arguments is
	*         limited by the maximum dimension of a Java array as defined by
	*         <cite>The Java&trade; Virtual Machine Specification</cite>.
	*
	* @throws  IllegalFormatException
	*          If a format string contains an illegal syntax, a format
	*          specifier that is incompatible with the given arguments,
	*          insufficient arguments given the format string, or other
	*          illegal conditions.  For specification of all possible
	*          formatting errors, see the <a
	*          href="../util/Formatter.html#detail">Details</a>
	*          section of the formatter class specification.
	*
	* @throws IOError
	*         If an I/O error occurs.
	*
	* @return  A character array containing the password or passphrase read
	*          from the console, not including any line-termination characters,
	*          or <tt>null</tt> if an end of stream has been reached.
	*/
	@:overload public function readPassword(fmt : String, args : java.NativeArray<Dynamic>) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Reads a password or passphrase from the console with echoing disabled
	*
	* @throws IOError
	*         If an I/O error occurs.
	*
	* @return  A character array containing the password or passphrase read
	*          from the console, not including any line-termination characters,
	*          or <tt>null</tt> if an end of stream has been reached.
	*/
	@:overload public function readPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Flushes the console and forces any buffered output to be written
	* immediately .
	*/
	@:overload public function flush() : Void;
	
	
}
@:native('java$io$Console$LineReader') @:internal extern class Console_LineReader extends java.io.Reader
{
	@:overload override public function close() : Void;
	
	@:overload override public function ready() : Bool;
	
	@:overload override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	
}
