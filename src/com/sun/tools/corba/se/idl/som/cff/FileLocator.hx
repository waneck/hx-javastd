package com.sun.tools.corba.se.idl.som.cff;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997,1998
* RMI-IIOP v1.0
*
*/
/**
* FileLocator is an abstract class (one that cannot be instantiated) that
* provides class methods for finding files in the directories or zip
* archives that make up the CLASSPATH.
*
* @author      Larry K. Raper
*/
extern class FileLocator
{
	/**
	* locateClassFile returns a DataInputStream with mark/reset
	* capability that can be used to read the requested class file.  The
	* CLASSPATH is used to locate the class.
	*
	* @param classFileName The name of the class to locate.  The class name
	* should be given in fully-qualified form, for example:
	* <pre>
	*     java.lang.Object
	*     java.io.DataInputStream
	* </pre>
	*
	* @exception java.io.FileNotFoundException The requested class file
	* could not be found.
	* @exception java.io.IOException The requested class file
	* could not be opened.
	*/
	@:overload public static function locateClassFile(classFileName : String) : java.io.DataInputStream;
	
	/**
	* locateLocaleSpecificFileInClassPath returns a DataInputStream that
	* can be used to read the requested file, but the name of the file is
	* determined using information from the current locale and the supplied
	* file name (which is treated as a "base" name, and is supplemented with
	* country and language related suffixes, obtained from the current
	* locale).  The CLASSPATH is used to locate the file.
	*
	* @param fileName The name of the file to locate.  The file name
	* may be qualified with a partial path name, using '/' as the separator
	* character or using separator characters appropriate for the host file
	* system, in which case each directory or zip file in the CLASSPATH will
	* be used as a base for finding the fully-qualified file.
	* Here is an example of how the supplied fileName is used as a base
	* for locating a locale-specific file:
	*
	* <pre>
	*     Supplied fileName: a/b/c/x.y,  current locale: US English
	*
	*                     Look first for: a/b/c/x_en_US.y
	*     (if that fails) Look next for:  a/b/c/x_en.y
	*     (if that fails) Look last for:  a/b/c/x.y
	*
	*     All elements of the class path are searched for each name,
	*     before the next possible name is tried.
	* </pre>
	*
	* @exception java.io.FileNotFoundException The requested class file
	* could not be found.
	* @exception java.io.IOException The requested class file
	* could not be opened.
	*/
	@:overload public static function locateLocaleSpecificFileInClassPath(fileName : String) : java.io.DataInputStream;
	
	/**
	* locateFileInClassPath returns a DataInputStream that can be used
	* to read the requested file.  The CLASSPATH is used to locate the file.
	*
	* @param fileName The name of the file to locate.  The file name
	* may be qualified with a partial path name, using '/' as the separator
	* character or using separator characters appropriate for the host file
	* system, in which case each directory or zip file in the CLASSPATH will
	* be used as a base for finding the fully-qualified file.
	*
	* @exception java.io.FileNotFoundException The requested class file
	* could not be found.
	* @exception java.io.IOException The requested class file
	* could not be opened.
	*/
	@:overload public static function locateFileInClassPath(fileName : String) : java.io.DataInputStream;
	
	/**
	* Returns the fully qualified file name associated with the passed
	* DataInputStream <i>if the DataInputStream was created using one
	* of the static locate methods supplied with this class</i>, otherwise
	* returns a zero length string.
	*/
	@:overload public static function getFileNameFromStream(ds : java.io.DataInputStream) : String;
	
	/**
	* Returns an indication of whether the passed DataInputStream is
	* associated with a member of a zip file <i>if the DataInputStream was
	* created using one of the static locate methods supplied with this
	* class</i>, otherwise returns false.
	*/
	@:overload public static function isZipFileAssociatedWithStream(ds : java.io.DataInputStream) : Bool;
	
	
}
@:internal extern class NamedDataInputStream extends java.io.DataInputStream
{
	/**
	* The name of the file associated with the DataInputStream.
	*/
	public var fullyQualifiedFileName : String;
	
	/**
	* Indicates whether or not the file is contained in a .zip file.
	*/
	public var inZipFile : Bool;
	
	/* Constructors */
	@:overload private function new(_in : java.io.InputStream, fullyQualifiedName : String, inZipFile : Bool) : Void;
	
	
}
