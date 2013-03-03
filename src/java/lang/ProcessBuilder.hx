package java.lang;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ProcessBuilder
{
	/**
	* Constructs a process builder with the specified operating
	* system program and arguments.  This constructor does <i>not</i>
	* make a copy of the {@code command} list.  Subsequent
	* updates to the list will be reflected in the state of the
	* process builder.  It is not checked whether
	* {@code command} corresponds to a valid operating system
	* command.
	*
	* @param  command the list containing the program and its arguments
	* @throws NullPointerException if the argument is null
	*/
	@:overload @:public public function new(command : java.util.List<String>) : Void;
	
	/**
	* Constructs a process builder with the specified operating
	* system program and arguments.  This is a convenience
	* constructor that sets the process builder's command to a string
	* list containing the same strings as the {@code command}
	* array, in the same order.  It is not checked whether
	* {@code command} corresponds to a valid operating system
	* command.
	*
	* @param command a string array containing the program and its arguments
	*/
	@:overload @:public public function new(command : java.NativeArray<String>) : Void;
	
	/**
	* Sets this process builder's operating system program and
	* arguments.  This method does <i>not</i> make a copy of the
	* {@code command} list.  Subsequent updates to the list will
	* be reflected in the state of the process builder.  It is not
	* checked whether {@code command} corresponds to a valid
	* operating system command.
	*
	* @param  command the list containing the program and its arguments
	* @return this process builder
	*
	* @throws NullPointerException if the argument is null
	*/
	@:overload @:public public function command(command : java.util.List<String>) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's operating system program and
	* arguments.  This is a convenience method that sets the command
	* to a string list containing the same strings as the
	* {@code command} array, in the same order.  It is not
	* checked whether {@code command} corresponds to a valid
	* operating system command.
	*
	* @param  command a string array containing the program and its arguments
	* @return this process builder
	*/
	@:overload @:public public function command(command : java.NativeArray<String>) : java.lang.ProcessBuilder;
	
	/**
	* Returns this process builder's operating system program and
	* arguments.  The returned list is <i>not</i> a copy.  Subsequent
	* updates to the list will be reflected in the state of this
	* process builder.
	*
	* @return this process builder's program and its arguments
	*/
	@:overload @:public public function command() : java.util.List<String>;
	
	/**
	* Returns a string map view of this process builder's environment.
	*
	* Whenever a process builder is created, the environment is
	* initialized to a copy of the current process environment (see
	* {@link System#getenv()}).  Subprocesses subsequently started by
	* this object's {@link #start()} method will use this map as
	* their environment.
	*
	* <p>The returned object may be modified using ordinary {@link
	* java.util.Map Map} operations.  These modifications will be
	* visible to subprocesses started via the {@link #start()}
	* method.  Two {@code ProcessBuilder} instances always
	* contain independent process environments, so changes to the
	* returned map will never be reflected in any other
	* {@code ProcessBuilder} instance or the values returned by
	* {@link System#getenv System.getenv}.
	*
	* <p>If the system does not support environment variables, an
	* empty map is returned.
	*
	* <p>The returned map does not permit null keys or values.
	* Attempting to insert or query the presence of a null key or
	* value will throw a {@link NullPointerException}.
	* Attempting to query the presence of a key or value which is not
	* of type {@link String} will throw a {@link ClassCastException}.
	*
	* <p>The behavior of the returned map is system-dependent.  A
	* system may not allow modifications to environment variables or
	* may forbid certain variable names or values.  For this reason,
	* attempts to modify the map may fail with
	* {@link UnsupportedOperationException} or
	* {@link IllegalArgumentException}
	* if the modification is not permitted by the operating system.
	*
	* <p>Since the external format of environment variable names and
	* values is system-dependent, there may not be a one-to-one
	* mapping between them and Java's Unicode strings.  Nevertheless,
	* the map is implemented in such a way that environment variables
	* which are not modified by Java code will have an unmodified
	* native representation in the subprocess.
	*
	* <p>The returned map and its collection views may not obey the
	* general contract of the {@link Object#equals} and
	* {@link Object#hashCode} methods.
	*
	* <p>The returned map is typically case-sensitive on all platforms.
	*
	* <p>If a security manager exists, its
	* {@link SecurityManager#checkPermission checkPermission} method
	* is called with a
	* {@link RuntimePermission}{@code ("getenv.*")} permission.
	* This may result in a {@link SecurityException} being thrown.
	*
	* <p>When passing information to a Java subprocess,
	* <a href=System.html#EnvironmentVSSystemProperties>system properties</a>
	* are generally preferred over environment variables.
	*
	* @return this process builder's environment
	*
	* @throws SecurityException
	*         if a security manager exists and its
	*         {@link SecurityManager#checkPermission checkPermission}
	*         method doesn't allow access to the process environment
	*
	* @see    Runtime#exec(String[],String[],java.io.File)
	* @see    System#getenv()
	*/
	@:overload @:public public function environment() : java.util.Map<String, String>;
	
	/**
	* Returns this process builder's working directory.
	*
	* Subprocesses subsequently started by this object's {@link
	* #start()} method will use this as their working directory.
	* The returned value may be {@code null} -- this means to use
	* the working directory of the current Java process, usually the
	* directory named by the system property {@code user.dir},
	* as the working directory of the child process.
	*
	* @return this process builder's working directory
	*/
	@:overload @:public public function directory() : java.io.File;
	
	/**
	* Sets this process builder's working directory.
	*
	* Subprocesses subsequently started by this object's {@link
	* #start()} method will use this as their working directory.
	* The argument may be {@code null} -- this means to use the
	* working directory of the current Java process, usually the
	* directory named by the system property {@code user.dir},
	* as the working directory of the child process.
	*
	* @param  directory the new working directory
	* @return this process builder
	*/
	@:overload @:public public function directory(directory : java.io.File) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard input source.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method obtain their standard input from this source.
	*
	* <p>If the source is {@link Redirect#PIPE Redirect.PIPE}
	* (the initial value), then the standard input of a
	* subprocess can be written to using the output stream
	* returned by {@link Process#getOutputStream()}.
	* If the source is set to any other value, then
	* {@link Process#getOutputStream()} will return a
	* <a href="#redirect-input">null output stream</a>.
	*
	* @param  source the new standard input source
	* @return this process builder
	* @throws IllegalArgumentException
	*         if the redirect does not correspond to a valid source
	*         of data, that is, has type
	*         {@link Redirect.Type#WRITE WRITE} or
	*         {@link Redirect.Type#APPEND APPEND}
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectInput(source : java.lang.ProcessBuilder.ProcessBuilder_Redirect) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard output destination.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method send their standard output to this destination.
	*
	* <p>If the destination is {@link Redirect#PIPE Redirect.PIPE}
	* (the initial value), then the standard output of a subprocess
	* can be read using the input stream returned by {@link
	* Process#getInputStream()}.
	* If the destination is set to any other value, then
	* {@link Process#getInputStream()} will return a
	* <a href="#redirect-output">null input stream</a>.
	*
	* @param  destination the new standard output destination
	* @return this process builder
	* @throws IllegalArgumentException
	*         if the redirect does not correspond to a valid
	*         destination of data, that is, has type
	*         {@link Redirect.Type#READ READ}
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectOutput(destination : java.lang.ProcessBuilder.ProcessBuilder_Redirect) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard error destination.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method send their standard error to this destination.
	*
	* <p>If the destination is {@link Redirect#PIPE Redirect.PIPE}
	* (the initial value), then the error output of a subprocess
	* can be read using the input stream returned by {@link
	* Process#getErrorStream()}.
	* If the destination is set to any other value, then
	* {@link Process#getErrorStream()} will return a
	* <a href="#redirect-output">null input stream</a>.
	*
	* <p>If the {@link #redirectErrorStream redirectErrorStream}
	* attribute has been set {@code true}, then the redirection set
	* by this method has no effect.
	*
	* @param  destination the new standard error destination
	* @return this process builder
	* @throws IllegalArgumentException
	*         if the redirect does not correspond to a valid
	*         destination of data, that is, has type
	*         {@link Redirect.Type#READ READ}
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectError(destination : java.lang.ProcessBuilder.ProcessBuilder_Redirect) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard input source to a file.
	*
	* <p>This is a convenience method.  An invocation of the form
	* {@code redirectInput(file)}
	* behaves in exactly the same way as the invocation
	* {@link #redirectInput(Redirect) redirectInput}
	* {@code (Redirect.from(file))}.
	*
	* @param  file the new standard input source
	* @return this process builder
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectInput(file : java.io.File) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard output destination to a file.
	*
	* <p>This is a convenience method.  An invocation of the form
	* {@code redirectOutput(file)}
	* behaves in exactly the same way as the invocation
	* {@link #redirectOutput(Redirect) redirectOutput}
	* {@code (Redirect.to(file))}.
	*
	* @param  file the new standard output destination
	* @return this process builder
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectOutput(file : java.io.File) : java.lang.ProcessBuilder;
	
	/**
	* Sets this process builder's standard error destination to a file.
	*
	* <p>This is a convenience method.  An invocation of the form
	* {@code redirectError(file)}
	* behaves in exactly the same way as the invocation
	* {@link #redirectError(Redirect) redirectError}
	* {@code (Redirect.to(file))}.
	*
	* @param  file the new standard error destination
	* @return this process builder
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectError(file : java.io.File) : java.lang.ProcessBuilder;
	
	/**
	* Returns this process builder's standard input source.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method obtain their standard input from this source.
	* The initial value is {@link Redirect#PIPE Redirect.PIPE}.
	*
	* @return this process builder's standard input source
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectInput() : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Returns this process builder's standard output destination.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method redirect their standard output to this destination.
	* The initial value is {@link Redirect#PIPE Redirect.PIPE}.
	*
	* @return this process builder's standard output destination
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectOutput() : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Returns this process builder's standard error destination.
	*
	* Subprocesses subsequently started by this object's {@link #start()}
	* method redirect their standard error to this destination.
	* The initial value is {@link Redirect#PIPE Redirect.PIPE}.
	*
	* @return this process builder's standard error destination
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function redirectError() : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Sets the source and destination for subprocess standard I/O
	* to be the same as those of the current Java process.
	*
	* <p>This is a convenience method.  An invocation of the form
	*  <pre> {@code
	* pb.inheritIO()
	* }</pre>
	* behaves in exactly the same way as the invocation
	*  <pre> {@code
	* pb.redirectInput(Redirect.INHERIT)
	*   .redirectOutput(Redirect.INHERIT)
	*   .redirectError(Redirect.INHERIT)
	* }</pre>
	*
	* This gives behavior equivalent to most operating system
	* command interpreters, or the standard C library function
	* {@code system()}.
	*
	* @return this process builder
	* @since  1.7
	*/
	@:require(java7) @:overload @:public public function inheritIO() : java.lang.ProcessBuilder;
	
	/**
	* Tells whether this process builder merges standard error and
	* standard output.
	*
	* <p>If this property is {@code true}, then any error output
	* generated by subprocesses subsequently started by this object's
	* {@link #start()} method will be merged with the standard
	* output, so that both can be read using the
	* {@link Process#getInputStream()} method.  This makes it easier
	* to correlate error messages with the corresponding output.
	* The initial value is {@code false}.
	*
	* @return this process builder's {@code redirectErrorStream} property
	*/
	@:overload @:public public function redirectErrorStream() : Bool;
	
	/**
	* Sets this process builder's {@code redirectErrorStream} property.
	*
	* <p>If this property is {@code true}, then any error output
	* generated by subprocesses subsequently started by this object's
	* {@link #start()} method will be merged with the standard
	* output, so that both can be read using the
	* {@link Process#getInputStream()} method.  This makes it easier
	* to correlate error messages with the corresponding output.
	* The initial value is {@code false}.
	*
	* @param  redirectErrorStream the new property value
	* @return this process builder
	*/
	@:overload @:public public function redirectErrorStream(redirectErrorStream : Bool) : java.lang.ProcessBuilder;
	
	/**
	* Starts a new process using the attributes of this process builder.
	*
	* <p>The new process will
	* invoke the command and arguments given by {@link #command()},
	* in a working directory as given by {@link #directory()},
	* with a process environment as given by {@link #environment()}.
	*
	* <p>This method checks that the command is a valid operating
	* system command.  Which commands are valid is system-dependent,
	* but at the very least the command must be a non-empty list of
	* non-null strings.
	*
	* <p>A minimal set of system dependent environment variables may
	* be required to start a process on some operating systems.
	* As a result, the subprocess may inherit additional environment variable
	* settings beyond those in the process builder's {@link #environment()}.
	*
	* <p>If there is a security manager, its
	* {@link SecurityManager#checkExec checkExec}
	* method is called with the first component of this object's
	* {@code command} array as its argument. This may result in
	* a {@link SecurityException} being thrown.
	*
	* <p>Starting an operating system process is highly system-dependent.
	* Among the many things that can go wrong are:
	* <ul>
	* <li>The operating system program file was not found.
	* <li>Access to the program file was denied.
	* <li>The working directory does not exist.
	* </ul>
	*
	* <p>In such cases an exception will be thrown.  The exact nature
	* of the exception is system-dependent, but it will always be a
	* subclass of {@link IOException}.
	*
	* <p>Subsequent modifications to this process builder will not
	* affect the returned {@link Process}.
	*
	* @return a new {@link Process} object for managing the subprocess
	*
	* @throws NullPointerException
	*         if an element of the command list is null
	*
	* @throws IndexOutOfBoundsException
	*         if the command is an empty list (has size {@code 0})
	*
	* @throws SecurityException
	*         if a security manager exists and
	*         <ul>
	*
	*         <li>its
	*         {@link SecurityManager#checkExec checkExec}
	*         method doesn't allow creation of the subprocess, or
	*
	*         <li>the standard input to the subprocess was
	*         {@linkplain #redirectInput redirected from a file}
	*         and the security manager's
	*         {@link SecurityManager#checkRead checkRead} method
	*         denies read access to the file, or
	*
	*         <li>the standard output or standard error of the
	*         subprocess was
	*         {@linkplain #redirectOutput redirected to a file}
	*         and the security manager's
	*         {@link SecurityManager#checkWrite checkWrite} method
	*         denies write access to the file
	*
	*         </ul>
	*
	* @throws IOException if an I/O error occurs
	*
	* @see Runtime#exec(String[], String[], java.io.File)
	*/
	@:overload @:public public function start() : java.lang.Process;
	
	
}
/**
* Implements a <a href="#redirect-output">null input stream</a>.
*/
@:native('java$lang$ProcessBuilder$NullInputStream') @:internal extern class ProcessBuilder_NullInputStream extends java.io.InputStream
{
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function available() : Int;
	
	
}
/**
* Implements a <a href="#redirect-input">null output stream</a>.
*/
@:native('java$lang$ProcessBuilder$NullOutputStream') @:internal extern class ProcessBuilder_NullOutputStream extends java.io.OutputStream
{
	@:overload @:public override public function write(b : Int) : Void;
	
	
}
/**
* Represents a source of subprocess input or a destination of
* subprocess output.
*
* Each {@code Redirect} instance is one of the following:
*
* <ul>
* <li>the special value {@link #PIPE Redirect.PIPE}
* <li>the special value {@link #INHERIT Redirect.INHERIT}
* <li>a redirection to read from a file, created by an invocation of
*     {@link Redirect#from Redirect.from(File)}
* <li>a redirection to write to a file,  created by an invocation of
*     {@link Redirect#to Redirect.to(File)}
* <li>a redirection to append to a file, created by an invocation of
*     {@link Redirect#appendTo Redirect.appendTo(File)}
* </ul>
*
* <p>Each of the above categories has an associated unique
* {@link Type Type}.
*
* @since 1.7
*/
@:require(java7) @:native('java$lang$ProcessBuilder$Redirect') extern class ProcessBuilder_Redirect
{
	/**
	* Returns the type of this {@code Redirect}.
	* @return the type of this {@code Redirect}
	*/
	@:overload @:public @:abstract public function type() : java.lang.ProcessBuilder.ProcessBuilder_Redirect_Type;
	
	/**
	* Indicates that subprocess I/O will be connected to the
	* current Java process over a pipe.
	*
	* This is the default handling of subprocess standard I/O.
	*
	* <p>It will always be true that
	*  <pre> {@code
	* Redirect.PIPE.file() == null &&
	* Redirect.PIPE.type() == Redirect.Type.PIPE
	* }</pre>
	*/
	@:public @:static @:final public static var PIPE(default, null) : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Indicates that subprocess I/O source or destination will be the
	* same as those of the current process.  This is the normal
	* behavior of most operating system command interpreters (shells).
	*
	* <p>It will always be true that
	*  <pre> {@code
	* Redirect.INHERIT.file() == null &&
	* Redirect.INHERIT.type() == Redirect.Type.INHERIT
	* }</pre>
	*/
	@:public @:static @:final public static var INHERIT(default, null) : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Returns the {@link File} source or destination associated
	* with this redirect, or {@code null} if there is no such file.
	*
	* @return the file associated with this redirect,
	*         or {@code null} if there is no such file
	*/
	@:overload @:public public function file() : java.io.File;
	
	/**
	* Returns a redirect to read from the specified file.
	*
	* <p>It will always be true that
	*  <pre> {@code
	* Redirect.from(file).file() == file &&
	* Redirect.from(file).type() == Redirect.Type.READ
	* }</pre>
	*
	* @throws NullPointerException if the specified file is null
	* @return a redirect to read from the specified file
	*/
	@:overload @:public @:static public static function from(file : java.io.File) : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Returns a redirect to write to the specified file.
	* If the specified file exists when the subprocess is started,
	* its previous contents will be discarded.
	*
	* <p>It will always be true that
	*  <pre> {@code
	* Redirect.to(file).file() == file &&
	* Redirect.to(file).type() == Redirect.Type.WRITE
	* }</pre>
	*
	* @throws NullPointerException if the specified file is null
	* @return a redirect to write to the specified file
	*/
	@:overload @:public @:static public static function to(file : java.io.File) : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Returns a redirect to append to the specified file.
	* Each write operation first advances the position to the
	* end of the file and then writes the requested data.
	* Whether the advancement of the position and the writing
	* of the data are done in a single atomic operation is
	* system-dependent and therefore unspecified.
	*
	* <p>It will always be true that
	*  <pre> {@code
	* Redirect.appendTo(file).file() == file &&
	* Redirect.appendTo(file).type() == Redirect.Type.APPEND
	* }</pre>
	*
	* @throws NullPointerException if the specified file is null
	* @return a redirect to append to the specified file
	*/
	@:overload @:public @:static public static function appendTo(file : java.io.File) : java.lang.ProcessBuilder.ProcessBuilder_Redirect;
	
	/**
	* Compares the specified object with this {@code Redirect} for
	* equality.  Returns {@code true} if and only if the two
	* objects are identical or both objects are {@code Redirect}
	* instances of the same type associated with non-null equal
	* {@code File} instances.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this {@code Redirect}.
	* @return a hash code value for this {@code Redirect}
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
/**
* The type of a {@link Redirect}.
*/
@:native('java$lang$ProcessBuilder$Redirect$Type') extern enum ProcessBuilder_Redirect_Type
{
	/**
	* The type of {@link Redirect#PIPE Redirect.PIPE}.
	*/
	PIPE;
	/**
	* The type of {@link Redirect#INHERIT Redirect.INHERIT}.
	*/
	INHERIT;
	/**
	* The type of redirects returned from
	* {@link Redirect#from Redirect.from(File)}.
	*/
	READ;
	/**
	* The type of redirects returned from
	* {@link Redirect#to Redirect.to(File)}.
	*/
	WRITE;
	/**
	* The type of redirects returned from
	* {@link Redirect#appendTo Redirect.appendTo(File)}.
	*/
	APPEND;
	
}

