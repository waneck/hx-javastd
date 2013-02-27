package sun.tools.java;
/*
* Copyright (c) 1994, 2007, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to represent a class path, which can contain both
* directories and zip files.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class ClassPath
{
	/**
	* Build a class path from the specified path string
	*/
	@:overload public function new(pathstr : String) : Void;
	
	/**
	* Build a class path from the specified array of class path
	* element strings.  This constructor, and the corresponding
	* "init" method, were added as part of the fix for 6473331, which
	* adds support for Class-Path manifest entries in JAR files to
	* rmic.  It is conceivable that the value of a Class-Path
	* manifest entry will contain a path separator, which would cause
	* incorrect behavior if the expanded path were passed to the
	* previous constructor as a single path-separator-delimited
	* string; use of this constructor avoids that problem.
	*/
	@:overload public function new(patharray : java.NativeArray<String>) : Void;
	
	/**
	* Build a default class path from the path strings specified by
	* the properties sun.boot.class.path and env.class.path, in that
	* order.
	*/
	@:overload public function new() : Void;
	
	/**
	* Find the specified directory in the class path
	*/
	@:overload public function getDirectory(name : String) : sun.tools.java.ClassFile;
	
	/**
	* Load the specified file from the class path
	*/
	@:overload public function getFile(name : String) : sun.tools.java.ClassFile;
	
	/**
	* Returns list of files given a package name and extension.
	*/
	@:overload public function getFiles(pkg : String, ext : String) : java.util.Enumeration<Dynamic>;
	
	/**
	* Release resources.
	*/
	@:overload public function close() : Void;
	
	/**
	* Returns original class path string
	*/
	@:overload public function toString() : String;
	
	
}
@:internal extern class ClassPathEntry
{
	
}
