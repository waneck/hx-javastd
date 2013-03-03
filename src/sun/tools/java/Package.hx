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
extern class Package
{
	/**
	* Create a package given a class path, and package name.
	*/
	@:overload @:public public function new(path : sun.tools.java.ClassPath, pkg : sun.tools.java.Identifier) : Void;
	
	/**
	* Create a package given a source path, binary path, and package
	* name.
	*/
	@:overload @:public public function new(sourcePath : sun.tools.java.ClassPath, binaryPath : sun.tools.java.ClassPath, pkg : sun.tools.java.Identifier) : Void;
	
	/**
	* Check if a class is defined in this package.
	* (If it is an inner class name, it is assumed to exist
	* only if its binary file exists.  This is somewhat pessimistic.)
	*/
	@:overload @:public public function classExists(className : sun.tools.java.Identifier) : Bool;
	
	/**
	* Check if the package exists
	*/
	@:overload @:public public function exists() : Bool;
	
	/**
	* Get the .class file of a class
	*/
	@:overload @:public public function getBinaryFile(className : sun.tools.java.Identifier) : sun.tools.java.ClassFile;
	
	/**
	* Get the .java file of a class
	*/
	@:overload @:public public function getSourceFile(className : sun.tools.java.Identifier) : sun.tools.java.ClassFile;
	
	@:overload @:public public function getSourceFile(fileName : String) : sun.tools.java.ClassFile;
	
	@:overload @:public public function getSourceFiles() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function getBinaryFiles() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function toString() : String;
	
	
}
