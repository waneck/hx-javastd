package sun.jvmstat.perfdata.monitor.protocol.local;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PerfDataFile
{
	/**
	* The name of the of the system dependent temporary directory
	*/
	@:public @:static @:final public static var tmpDirName(default, null) : String;
	
	/**
	* The file name prefix for PerfData shared memory files.
	* <p>
	* This prefix must be kept in sync with the prefix used by the JVM.
	*/
	@:public @:static @:final public static var dirNamePrefix(default, null) : String;
	
	/**
	* The directory name pattern for the user directories.
	*/
	@:public @:static @:final public static var userDirNamePattern(default, null) : String;
	
	/**
	* The file name pattern for PerfData shared memory files.
	* <p>
	* This pattern must be kept in synch with the file name pattern
	* used by the 1.4.2 and later HotSpot JVM.
	*/
	@:public @:static @:final public static var fileNamePattern(default, null) : String;
	
	/**
	* The file name pattern for 1.4.1 PerfData shared memory files.
	* <p>
	* This pattern must be kept in synch with the file name pattern
	* used by the 1.4.1 HotSpot JVM.
	*/
	@:public @:static @:final public static var tmpFileNamePattern(default, null) : String;
	
	/**
	* Get a File object for the instrumentation backing store file
	* for the JVM identified by the given local Vm Identifier.
	* <p>
	* This method looks for the most up to date backing store file for
	* the given <tt>lvmid</tt>. It will search all the user specific
	* directories in the temporary directory for the host operating
	* system, which may be influenced by platform specific environment
	* variables.
	*
	* @param lvmid  the local Java Virtual Machine Identifier for the target
	* @return File - a File object to the backing store file for the named
	*                shared memory region of the target JVM.
	* @see java.io.File
	* @see #getTempDirectory()
	*/
	@:overload @:public @:static public static function getFile(lvmid : Int) : java.io.File;
	
	/**
	* Return the File object for the backing store file for the specified Java
	* Virtual Machine.
	* <p>
	* This method looks for the most up to date backing store file for
	* the JVM identified by the given user name and lvmid. The directory
	* searched is the temporary directory for the host operating system,
	* which may be influenced by environment variables.
	*
	* @param user   the user name
	* @param lvmid  the local Java Virtual Machine Identifier for the target
	* @return File - a File object to the backing store file for the named
	*                shared memory region of the target JVM.
	* @see java.io.File
	* @see #getTempDirectory()
	*/
	@:overload @:public @:static public static function getFile(user : String, lvmid : Int) : java.io.File;
	
	/**
	* Method to extract a local Java Virtual Machine Identifier from the
	* file name of the given File object.
	*
	* @param file A File object representing the name of a
	*             shared memory region for a target JVM
	* @return int - the local Java Virtual Machine Identifier for the target
	*               associated with the file
	* @throws java.lang.IllegalArgumentException Thrown if the file name
	*               does not conform to the expected pattern
	*/
	@:overload @:public @:static public static function getLocalVmId(file : java.io.File) : Int;
	
	/**
	* Return the name of the temporary directory being searched for
	* HotSpot PerfData backing store files.
	* <p>
	* This method generally returns the value of the java.io.tmpdir
	* property. However, on some platforms it may return a different
	* directory, as the JVM implementation may store the PerfData backing
	* store files in a different directory for performance reasons.
	*
	* @return String - the name of the temporary directory.
	*/
	@:overload @:public @:static public static function getTempDirectory() : String;
	
	/**
	* Return the name of the temporary directory to be searched
	* for HotSpot PerfData backing store files for a given user.
	* <p>
	* This method generally returns the name of a subdirectory of
	* the directory indicated in the java.io.tmpdir property. However,
	* on some platforms it may return a different directory, as the
	* JVM implementation may store the PerfData backing store files
	* in a different directory for performance reasons.
	*
	* @return String - the name of the temporary directory.
	*/
	@:overload @:public @:static public static function getTempDirectory(user : String) : String;
	
	
}
