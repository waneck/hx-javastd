package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Handle the directory creations and the path string generations.
* All static - never instaniated.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @since 1.2
* @author Atul M Dambalkar
*/
@:require(java2) extern class DirectoryManager
{
	/**
	* The file separator string, "/", used in the formation of the URL path.
	*/
	public static var URL_FILE_SEPARATOR(default, null) : String;
	
	/**
	* Given a PackageDoc, return its URL path string.
	*
	* @param pd PackageDoc
	* @see #getPath(String)
	*/
	@:overload public static function createPathString(pd : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* Given a ClassDoc, return its URL path string.
	*
	* @param cd ClassDoc
	* @see #getPath(String)
	*/
	@:overload public static function createPathString(cd : com.sun.javadoc.ClassDoc) : String;
	
	/**
	* Given a PackageDoc, return the corresponding directory name
	* with the platform-dependent file separator between subdirectory names.
	* For example, if name of the package is "java.lang" , then it
	* returns "java/lang" on Unix and "java\lang" on Windows.
	* If name of the package contains no dot, then the value
	* will be returned unchanged.  Because package names cannot
	* end in a dot, the return value will never end with a slash.
	* <p>
	* Also see getPath for the URL separator version of this method
	* that takes a string instead of a PackageDoc.
	*
	* @param  pd    the PackageDoc
	* @return       the platform-dependent directory path for the package
	*/
	@:overload public static function getDirectoryPath(pd : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* Given a package name, return the corresponding directory name
	* with the platform-dependent file separator between subdirectory names.
	* For example, if name of the package is "java.lang" , then it
	* returns "java/lang" on Unix and "java\lang" on Windows.
	* If name of the package contains no dot, then the value
	* will be returned unchanged.  Because package names cannot
	* end in a dot, the return value will never end with a slash.
	* <p>
	* Also see getPath for the URL separator version of this method
	* that takes a string instead of a PackageDoc.
	*
	* @param  packageName    the name of the package
	* @return       the platform-dependent directory path for the package
	*/
	@:overload public static function getDirectoryPath(packageName : String) : String;
	
	/**
	* Given a package name (a string), return the path string,
	* with the URL separator "/" separating the subdirectory names.
	* If name of the package contains no dot, then the value
	* will be returned unchanged.  Because package names cannot
	* end in a dot, the return value will never end with a slash.
	* <p>
	* For example if the string is "com.sun.javadoc" then the URL
	* path string will be "com/sun/javadoc".
	*
	* @param name   the package name as a String
	* @return       the String URL path
	*/
	@:overload public static function getPath(name : String) : String;
	
	/**
	* Given two package names as strings, return the relative path
	* from the package directory corresponding to the first string
	* to the package directory corresponding to the second string,
	* with the URL file separator "/" separating subdirectory names.
	* <p>
	* For example, if the parameter "from" is "java.lang"
	* and parameter "to" is "java.applet", return string
	* "../../java/applet".
	*
	* @param from   the package name from which path is calculated
	* @param to     the package name to which path is calculated
	* @return       relative path between "from" and "to" with URL
	*               separators
	* @see          #getRelativePath(String)
	* @see          #getPath(String)
	*/
	@:overload public static function getRelativePath(from : String, to : String) : String;
	
	/**
	* Given a package name as a string, return relative path string
	* from the corresponding package directory to the root of
	* the documentation, using the URL separator "/" between
	* subdirectory names.
	* <p>
	* For example, if the string "from" is "java.lang",
	* return "../../"
	*
	* @param from    the package
	* @return        String relative path from "from".
	* @see           #getRelativePath(String, String)
	*/
	@:overload public static function getRelativePath(from : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* Given a package name as a string, return relative path string
	* from the corresponding package directory to the root of
	* the documentation, using the URL separator "/" between
	* subdirectory names.
	* <p>
	* For example, if the string "from" is "java.lang",
	* return "../../"
	*
	* @param from    the package name
	* @return        String relative path from "from".
	* @see           #getRelativePath(String, String)
	*/
	@:overload public static function getRelativePath(from : String) : String;
	
	/**
	* Given a relative or absolute path that might be empty,
	* convert it to a path that does not end with a
	* URL separator "/".  Used for converting
	* HtmlStandardWriter.relativepath when replacing {@docRoot}.
	*
	* @param path   the path to convert.  An empty path represents
	*               the current directory.
	*/
	@:overload public static function getPathNoTrailingSlash(path : String) : String;
	
	/**
	* Given a path string create all the directories in the path. For example,
	* if the path string is "java/applet", the method will create directory
	* "java" and then "java/applet" if they don't exist. The file separator
	* string "/" is platform dependent system property.
	*
	* @param path Directory path string.
	*/
	@:overload public static function createDirectory(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, path : String) : Void;
	
	/**
	* Given a package name and a file name, return the full path to that file.
	* For example, if PackageDoc passed is for "java.lang" and the filename
	* passed is "package-summary.html", then the string returned is
	* "java/lang/package-summary.html".
	*
	* @param pd         PackageDoc.
	* @param filename   File name to be appended to the path of the package.
	*/
	@:overload public static function getPathToPackage(pd : com.sun.javadoc.PackageDoc, filename : String) : String;
	
	/**
	* Given a class name return the full path to the class file.
	* For example, if ClassDoc passed is for "java.lang.Object" then the
	* string returned is "java/lang/Object.html".
	*
	* @param cd   ClassDoc.
	*/
	@:overload public static function getPathToClass(cd : com.sun.javadoc.ClassDoc) : String;
	
	
}
