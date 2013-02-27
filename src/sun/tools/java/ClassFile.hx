package sun.tools.java;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to represent a file loaded from the class path, and
* can either be a regular file or a zip file entry.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class ClassFile
{
	/**
	* Constructor for instance representing a regular file
	*/
	@:overload public function new(file : java.io.File) : Void;
	
	/**
	* Constructor for instance representing a zip file entry
	*/
	@:overload public function new(zf : java.util.zip.ZipFile, ze : java.util.zip.ZipEntry) : Void;
	
	/**
	* Returns true if this is zip file entry
	*/
	@:overload public function isZipped() : Bool;
	
	/**
	* Returns input stream to either regular file or zip file entry
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns true if file exists.
	*/
	@:overload public function exists() : Bool;
	
	/**
	* Returns true if this is a directory.
	*/
	@:overload public function isDirectory() : Bool;
	
	/**
	* Return last modification time
	*/
	@:overload public function lastModified() : haxe.Int64;
	
	/**
	* Get file path. The path for a zip file entry will also include
	* the zip file name.
	*/
	@:overload public function getPath() : String;
	
	/**
	* Get name of file entry excluding directory name
	*/
	@:overload public function getName() : String;
	
	/**
	* Get absolute name of file entry
	*/
	@:overload public function getAbsoluteName() : String;
	
	/**
	* Get length of file
	*/
	@:overload public function length() : haxe.Int64;
	
	@:overload public function toString() : String;
	
	
}
