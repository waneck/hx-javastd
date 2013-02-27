package java.util;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Formatter implements java.io.Closeable implements java.io.Flushable
{
	/**
	* Constructs a new formatter.
	*
	* <p> The destination of the formatted output is a {@link StringBuilder}
	* which may be retrieved by invoking {@link #out out()} and whose
	* current content may be converted into a string by invoking {@link
	* #toString toString()}.  The locale used is the {@linkplain
	* Locale#getDefault() default locale} for this instance of the Java
	* virtual machine.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new formatter with the specified destination.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault() default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  a
	*         Destination for the formatted output.  If {@code a} is
	*         {@code null} then a {@link StringBuilder} will be created.
	*/
	@:overload public function new(a : java.lang.Appendable) : Void;
	
	/**
	* Constructs a new formatter with the specified locale.
	*
	* <p> The destination of the formatted output is a {@link StringBuilder}
	* which may be retrieved by invoking {@link #out out()} and whose current
	* content may be converted into a string by invoking {@link #toString
	* toString()}.
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.
	*/
	@:overload public function new(l : java.util.Locale) : Void;
	
	/**
	* Constructs a new formatter with the specified destination and locale.
	*
	* @param  a
	*         Destination for the formatted output.  If {@code a} is
	*         {@code null} then a {@link StringBuilder} will be created.
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.
	*/
	@:overload public function new(a : java.lang.Appendable, l : java.util.Locale) : Void;
	
	/**
	* Constructs a new formatter with the specified file name.
	*
	* <p> The charset used is the {@linkplain
	* java.nio.charset.Charset#defaultCharset() default charset} for this
	* instance of the Java virtual machine.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault() default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  fileName
	*         The name of the file to use as the destination of this
	*         formatter.  If the file exists then it will be truncated to
	*         zero size; otherwise, a new file will be created.  The output
	*         will be written to the file and is buffered.
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(fileName)} denies write
	*          access to the file
	*
	* @throws  FileNotFoundException
	*          If the given file name does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*/
	@:overload public function new(fileName : String) : Void;
	
	/**
	* Constructs a new formatter with the specified file name and charset.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  fileName
	*         The name of the file to use as the destination of this
	*         formatter.  If the file exists then it will be truncated to
	*         zero size; otherwise, a new file will be created.  The output
	*         will be written to the file and is buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @throws  FileNotFoundException
	*          If the given file name does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(fileName)} denies write
	*          access to the file
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(fileName : String, csn : String) : Void;
	
	/**
	* Constructs a new formatter with the specified file name, charset, and
	* locale.
	*
	* @param  fileName
	*         The name of the file to use as the destination of this
	*         formatter.  If the file exists then it will be truncated to
	*         zero size; otherwise, a new file will be created.  The output
	*         will be written to the file and is buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.
	*
	* @throws  FileNotFoundException
	*          If the given file name does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(fileName)} denies write
	*          access to the file
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(fileName : String, csn : String, l : java.util.Locale) : Void;
	
	/**
	* Constructs a new formatter with the specified file.
	*
	* <p> The charset used is the {@linkplain
	* java.nio.charset.Charset#defaultCharset() default charset} for this
	* instance of the Java virtual machine.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault() default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  file
	*         The file to use as the destination of this formatter.  If the
	*         file exists then it will be truncated to zero size; otherwise,
	*         a new file will be created.  The output will be written to the
	*         file and is buffered.
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(file.getPath())} denies
	*          write access to the file
	*
	* @throws  FileNotFoundException
	*          If the given file object does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*/
	@:overload public function new(file : java.io.File) : Void;
	
	/**
	* Constructs a new formatter with the specified file and charset.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  file
	*         The file to use as the destination of this formatter.  If the
	*         file exists then it will be truncated to zero size; otherwise,
	*         a new file will be created.  The output will be written to the
	*         file and is buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @throws  FileNotFoundException
	*          If the given file object does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(file.getPath())} denies
	*          write access to the file
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(file : java.io.File, csn : String) : Void;
	
	/**
	* Constructs a new formatter with the specified file, charset, and
	* locale.
	*
	* @param  file
	*         The file to use as the destination of this formatter.  If the
	*         file exists then it will be truncated to zero size; otherwise,
	*         a new file will be created.  The output will be written to the
	*         file and is buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.
	*
	* @throws  FileNotFoundException
	*          If the given file object does not denote an existing, writable
	*          regular file and a new regular file of that name cannot be
	*          created, or if some other error occurs while opening or
	*          creating the file
	*
	* @throws  SecurityException
	*          If a security manager is present and {@link
	*          SecurityManager#checkWrite checkWrite(file.getPath())} denies
	*          write access to the file
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(file : java.io.File, csn : String, l : java.util.Locale) : Void;
	
	/**
	* Constructs a new formatter with the specified print stream.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault() default
	* locale} for this instance of the Java virtual machine.
	*
	* <p> Characters are written to the given {@link java.io.PrintStream
	* PrintStream} object and are therefore encoded using that object's
	* charset.
	*
	* @param  ps
	*         The stream to use as the destination of this formatter.
	*/
	@:overload public function new(ps : java.io.PrintStream) : Void;
	
	/**
	* Constructs a new formatter with the specified output stream.
	*
	* <p> The charset used is the {@linkplain
	* java.nio.charset.Charset#defaultCharset() default charset} for this
	* instance of the Java virtual machine.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault() default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  os
	*         The output stream to use as the destination of this formatter.
	*         The output will be buffered.
	*/
	@:overload public function new(os : java.io.OutputStream) : Void;
	
	/**
	* Constructs a new formatter with the specified output stream and
	* charset.
	*
	* <p> The locale used is the {@linkplain Locale#getDefault default
	* locale} for this instance of the Java virtual machine.
	*
	* @param  os
	*         The output stream to use as the destination of this formatter.
	*         The output will be buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(os : java.io.OutputStream, csn : String) : Void;
	
	/**
	* Constructs a new formatter with the specified output stream, charset,
	* and locale.
	*
	* @param  os
	*         The output stream to use as the destination of this formatter.
	*         The output will be buffered.
	*
	* @param  csn
	*         The name of a supported {@linkplain java.nio.charset.Charset
	*         charset}
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.
	*
	* @throws  UnsupportedEncodingException
	*          If the named charset is not supported
	*/
	@:overload public function new(os : java.io.OutputStream, csn : String, l : java.util.Locale) : Void;
	
	/**
	* Returns the locale set by the construction of this formatter.
	*
	* <p> The {@link #format(java.util.Locale,String,Object...) format} method
	* for this object which has a locale argument does not change this value.
	*
	* @return  {@code null} if no localization is applied, otherwise a
	*          locale
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*/
	@:overload public function locale() : java.util.Locale;
	
	/**
	* Returns the destination for the output.
	*
	* @return  The destination for the output
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*/
	@:overload public function out() : java.lang.Appendable;
	
	/**
	* Returns the result of invoking {@code toString()} on the destination
	* for the output.  For example, the following code formats text into a
	* {@link StringBuilder} then retrieves the resultant string:
	*
	* <blockquote><pre>
	*   Formatter f = new Formatter();
	*   f.format("Last reboot at %tc", lastRebootDate);
	*   String s = f.toString();
	*   // -&gt; s == "Last reboot at Sat Jan 01 00:00:00 PST 2000"
	* </pre></blockquote>
	*
	* <p> An invocation of this method behaves in exactly the same way as the
	* invocation
	*
	* <pre>
	*     out().toString() </pre>
	*
	* <p> Depending on the specification of {@code toString} for the {@link
	* Appendable}, the returned string may or may not contain the characters
	* written to the destination.  For instance, buffers typically return
	* their contents in {@code toString()}, but streams cannot since the
	* data is discarded.
	*
	* @return  The result of invoking {@code toString()} on the destination
	*          for the output
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*/
	@:overload public function toString() : String;
	
	/**
	* Flushes this formatter.  If the destination implements the {@link
	* java.io.Flushable} interface, its {@code flush} method will be invoked.
	*
	* <p> Flushing a formatter writes any buffered output in the destination
	* to the underlying stream.
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*/
	@:overload public function flush() : Void;
	
	/**
	* Closes this formatter.  If the destination implements the {@link
	* java.io.Closeable} interface, its {@code close} method will be invoked.
	*
	* <p> Closing a formatter allows it to release resources it may be holding
	* (such as open files).  If the formatter is already closed, then invoking
	* this method has no effect.
	*
	* <p> Attempting to invoke any methods except {@link #ioException()} in
	* this formatter after it has been closed will result in a {@link
	* FormatterClosedException}.
	*/
	@:overload public function close() : Void;
	
	/**
	* Returns the {@code IOException} last thrown by this formatter's {@link
	* Appendable}.
	*
	* <p> If the destination's {@code append()} method never throws
	* {@code IOException}, then this method will always return {@code null}.
	*
	* @return  The last exception thrown by the Appendable or {@code null} if
	*          no such exception exists.
	*/
	@:overload public function ioException() : java.io.IOException;
	
	/**
	* Writes a formatted string to this object's destination using the
	* specified format string and arguments.  The locale used is the one
	* defined during the construction of this formatter.
	*
	* @param  format
	*         A format string as described in <a href="#syntax">Format string
	*         syntax</a>.
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
	*          formatting errors, see the <a href="#detail">Details</a>
	*          section of the formatter class specification.
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*
	* @return  This formatter
	*/
	@:overload public function format(format : String, args : java.NativeArray<Dynamic>) : Formatter;
	
	/**
	* Writes a formatted string to this object's destination using the
	* specified locale, format string, and arguments.
	*
	* @param  l
	*         The {@linkplain java.util.Locale locale} to apply during
	*         formatting.  If {@code l} is {@code null} then no localization
	*         is applied.  This does not change this object's locale that was
	*         set during construction.
	*
	* @param  format
	*         A format string as described in <a href="#syntax">Format string
	*         syntax</a>
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
	*          formatting errors, see the <a href="#detail">Details</a>
	*          section of the formatter class specification.
	*
	* @throws  FormatterClosedException
	*          If this formatter has been closed by invoking its {@link
	*          #close()} method
	*
	* @return  This formatter
	*/
	@:overload public function format(l : java.util.Locale, format : String, args : java.NativeArray<Dynamic>) : Formatter;
	
	
}
@:native('java$util$Formatter$FormatString') @:internal extern interface Formatter_FormatString
{
	@:overload public function index() : Int;
	
	@:overload public function print(arg : Dynamic, l : java.util.Locale) : Void;
	
	
}
@:native('java$util$Formatter$FixedString') @:internal extern class Formatter_FixedString implements Formatter_FormatString
{
	@:overload public function index() : Int;
	
	@:overload public function print(arg : Dynamic, l : java.util.Locale) : Void;
	
	@:overload public function toString() : String;
	
	
}
@:native('java$util$Formatter$BigDecimalLayoutForm') extern enum Formatter_BigDecimalLayoutForm
{
	SCIENTIFIC;
	DECIMAL_FLOAT;
	
}

@:native('java$util$Formatter$FormatSpecifier') @:internal extern class Formatter_FormatSpecifier implements Formatter_FormatString
{
	@:overload public function index() : Int;
	
	@:overload public function print(arg : Dynamic, l : java.util.Locale) : Void;
	
	@:overload public function toString() : String;
	
	
}
@:native('java$util$Formatter$FormatSpecifier$BigDecimalLayout') @:internal extern class Formatter_FormatSpecifier_BigDecimalLayout
{
	@:overload public function new(intVal : java.math.BigInteger, scale : Int, form : Formatter_BigDecimalLayoutForm) : Void;
	
	@:overload public function hasDot() : Bool;
	
	@:overload public function scale() : Int;
	
	@:overload public function layoutChars() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function mantissa() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function exponent() : java.NativeArray<java.StdTypes.Char16>;
	
	
}
@:native('java$util$Formatter$Flags') @:internal extern class Formatter_Flags
{
	@:overload public function valueOf() : Int;
	
	@:overload public function contains(f : Formatter_Flags) : Bool;
	
	@:overload public function dup() : Formatter_Flags;
	
	@:overload public function remove(f : Formatter_Flags) : Formatter_Flags;
	
	@:overload public static function parse(s : String) : Formatter_Flags;
	
	@:native('toString') @:overload public static function _toString(f : Formatter_Flags) : String;
	
	@:overload public function toString() : String;
	
	
}
@:native('java$util$Formatter$Conversion') @:internal extern class Formatter_Conversion
{
	
}
@:native('java$util$Formatter$DateTime') @:internal extern class Formatter_DateTime
{
	
}
