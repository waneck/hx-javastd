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
/**
* Simple file logging <tt>Handler</tt>.
* <p>
* The <tt>FileHandler</tt> can either write to a specified file,
* or it can write to a rotating set of files.
* <p>
* For a rotating set of files, as each file reaches a given size
* limit, it is closed, rotated out, and a new file opened.
* Successively older files are named by adding "0", "1", "2",
* etc. into the base filename.
* <p>
* By default buffering is enabled in the IO libraries but each log
* record is flushed out when it is complete.
* <p>
* By default the <tt>XMLFormatter</tt> class is used for formatting.
* <p>
* <b>Configuration:</b>
* By default each <tt>FileHandler</tt> is initialized using the following
* <tt>LogManager</tt> configuration properties.  If properties are not defined
* (or have invalid values) then the specified default values are used.
* <ul>
* <li>   java.util.logging.FileHandler.level
*        specifies the default level for the <tt>Handler</tt>
*        (defaults to <tt>Level.ALL</tt>).
* <li>   java.util.logging.FileHandler.filter
*        specifies the name of a <tt>Filter</tt> class to use
*        (defaults to no <tt>Filter</tt>).
* <li>   java.util.logging.FileHandler.formatter
*        specifies the name of a <tt>Formatter</tt> class to use
*        (defaults to <tt>java.util.logging.XMLFormatter</tt>)
* <li>   java.util.logging.FileHandler.encoding
*        the name of the character set encoding to use (defaults to
*        the default platform encoding).
* <li>   java.util.logging.FileHandler.limit
*        specifies an approximate maximum amount to write (in bytes)
*        to any one file.  If this is zero, then there is no limit.
*        (Defaults to no limit).
* <li>   java.util.logging.FileHandler.count
*        specifies how many output files to cycle through (defaults to 1).
* <li>   java.util.logging.FileHandler.pattern
*        specifies a pattern for generating the output file name.  See
*        below for details. (Defaults to "%h/java%u.log").
* <li>   java.util.logging.FileHandler.append
*        specifies whether the FileHandler should append onto
*        any existing files (defaults to false).
* </ul>
* <p>
* <p>
* A pattern consists of a string that includes the following special
* components that will be replaced at runtime:
* <ul>
* <li>    "/"    the local pathname separator
* <li>     "%t"   the system temporary directory
* <li>     "%h"   the value of the "user.home" system property
* <li>     "%g"   the generation number to distinguish rotated logs
* <li>     "%u"   a unique number to resolve conflicts
* <li>     "%%"   translates to a single percent sign "%"
* </ul>
* If no "%g" field has been specified and the file count is greater
* than one, then the generation number will be added to the end of
* the generated filename, after a dot.
* <p>
* Thus for example a pattern of "%t/java%g.log" with a count of 2
* would typically cause log files to be written on Solaris to
* /var/tmp/java0.log and /var/tmp/java1.log whereas on Windows 95 they
* would be typically written to C:\TEMP\java0.log and C:\TEMP\java1.log
* <p>
* Generation numbers follow the sequence 0, 1, 2, etc.
* <p>
* Normally the "%u" unique field is set to 0.  However, if the <tt>FileHandler</tt>
* tries to open the filename and finds the file is currently in use by
* another process it will increment the unique number field and try
* again.  This will be repeated until <tt>FileHandler</tt> finds a file name that
* is  not currently in use. If there is a conflict and no "%u" field has
* been specified, it will be added at the end of the filename after a dot.
* (This will be after any automatically added generation number.)
* <p>
* Thus if three processes were all trying to log to fred%u.%g.txt then
* they  might end up using fred0.0.txt, fred1.0.txt, fred2.0.txt as
* the first file in their rotating sequences.
* <p>
* Note that the use of unique ids to avoid conflicts is only guaranteed
* to work reliably when using a local disk file system.
*
* @since 1.4
*/
@:require(java4) extern class FileHandler extends java.util.logging.StreamHandler
{
	/**
	* Construct a default <tt>FileHandler</tt>.  This will be configured
	* entirely from <tt>LogManager</tt> properties (or their default values).
	* <p>
	* @exception  IOException if there are IO problems opening the files.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control"))</tt>.
	* @exception  NullPointerException if pattern property is an empty String.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initialize a <tt>FileHandler</tt> to write to the given filename.
	* <p>
	* The <tt>FileHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given pattern
	* argument is used as the filename pattern, the file limit is
	* set to no limit, and the file count is set to one.
	* <p>
	* There is no limit on the amount of data that may be written,
	* so use this with care.
	*
	* @param pattern  the name of the output file
	* @exception  IOException if there are IO problems opening the files.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	* @exception  IllegalArgumentException if pattern is an empty string
	*/
	@:overload public function new(pattern : String) : Void;
	
	/**
	* Initialize a <tt>FileHandler</tt> to write to the given filename,
	* with optional append.
	* <p>
	* The <tt>FileHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given pattern
	* argument is used as the filename pattern, the file limit is
	* set to no limit, the file count is set to one, and the append
	* mode is set to the given <tt>append</tt> argument.
	* <p>
	* There is no limit on the amount of data that may be written,
	* so use this with care.
	*
	* @param pattern  the name of the output file
	* @param append  specifies append mode
	* @exception  IOException if there are IO problems opening the files.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	* @exception  IllegalArgumentException if pattern is an empty string
	*/
	@:overload public function new(pattern : String, append : Bool) : Void;
	
	/**
	* Initialize a <tt>FileHandler</tt> to write to a set of files.  When
	* (approximately) the given limit has been written to one file,
	* another file will be opened.  The output will cycle through a set
	* of count files.
	* <p>
	* The <tt>FileHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given pattern
	* argument is used as the filename pattern, the file limit is
	* set to the limit argument, and the file count is set to the
	* given count argument.
	* <p>
	* The count must be at least 1.
	*
	* @param pattern  the pattern for naming the output file
	* @param limit  the maximum number of bytes to write to any one file
	* @param count  the number of files to use
	* @exception  IOException if there are IO problems opening the files.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	* @exception IllegalArgumentException if limit < 0, or count < 1.
	* @exception  IllegalArgumentException if pattern is an empty string
	*/
	@:overload public function new(pattern : String, limit : Int, count : Int) : Void;
	
	/**
	* Initialize a <tt>FileHandler</tt> to write to a set of files
	* with optional append.  When (approximately) the given limit has
	* been written to one file, another file will be opened.  The
	* output will cycle through a set of count files.
	* <p>
	* The <tt>FileHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given pattern
	* argument is used as the filename pattern, the file limit is
	* set to the limit argument, and the file count is set to the
	* given count argument, and the append mode is set to the given
	* <tt>append</tt> argument.
	* <p>
	* The count must be at least 1.
	*
	* @param pattern  the pattern for naming the output file
	* @param limit  the maximum number of bytes to write to any one file
	* @param count  the number of files to use
	* @param append  specifies append mode
	* @exception  IOException if there are IO problems opening the files.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	* @exception IllegalArgumentException if limit < 0, or count < 1.
	* @exception  IllegalArgumentException if pattern is an empty string
	*
	*/
	@:overload public function new(pattern : String, limit : Int, count : Int, append : Bool) : Void;
	
	/**
	* Format and publish a <tt>LogRecord</tt>.
	*
	* @param  record  description of the log event. A null record is
	*                 silently ignored and is not published
	*/
	@:overload @:synchronized override public function publish(record : java.util.logging.LogRecord) : Void;
	
	/**
	* Close all the files.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:synchronized override public function close() : Void;
	
	
}
@:native('java$util$logging$FileHandler$MeteredStream') @:internal extern class FileHandler_MeteredStream extends java.io.OutputStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(buff : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override public function write(buff : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function flush() : Void;
	
	@:overload override public function close() : Void;
	
	
}
@:native('java$util$logging$FileHandler$InitializationErrorManager') @:internal extern class FileHandler_InitializationErrorManager extends java.util.logging.ErrorManager
{
	@:overload override public function error(msg : String, ex : java.lang.Exception, code : Int) : Void;
	
	
}
