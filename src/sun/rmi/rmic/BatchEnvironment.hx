package sun.rmi.rmic;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*****************************************************************************/
/*                    Copyright (c) IBM Corporation 1998                     */
/*                                                                           */
/* (C) Copyright IBM Corp. 1998                                              */
/*                                                                           */
/*****************************************************************************/
extern class BatchEnvironment extends sun.tools.javac.BatchEnvironment
{
	/**
	* Create a ClassPath object for rmic from a class path string.
	*/
	@:overload @:public @:static public static function createClassPath(classPathString : String) : sun.tools.java.ClassPath;
	
	/**
	* Create a ClassPath object for rmic from the relevant command line
	* options for class path, boot class path, and extension directories.
	*/
	@:overload @:public @:static public static function createClassPath(classPathString : String, sysClassPathString : String, extDirsString : String) : sun.tools.java.ClassPath;
	
	/**
	* Create a BatchEnvironment for rmic with the given class path,
	* stream for messages and Main.
	*/
	@:overload @:public public function new(out : java.io.OutputStream, path : sun.tools.java.ClassPath, main : sun.rmi.rmic.Main) : Void;
	
	/**
	* Get the instance of Main which created this environment.
	*/
	@:overload @:public public function getMain() : sun.rmi.rmic.Main;
	
	/**
	* Get the ClassPath.
	*/
	@:overload @:public public function getClassPath() : sun.tools.java.ClassPath;
	
	/**
	* Remember a generated source file generated so that it
	* can be removed later, if appropriate.
	*/
	@:overload @:public public function addGeneratedFile(file : java.io.File) : Void;
	
	/**
	* Delete all the generated source files made during the execution
	* of this environment (those that have been registered with the
	* "addGeneratedFile" method).
	*/
	@:overload @:public public function deleteGeneratedFiles() : Void;
	
	/**
	* Release resources, if any.
	*/
	@:overload @:public override public function shutdown() : Void;
	
	/**
	* Return the formatted, localized string for a named error message
	* and supplied arguments.  For rmic error messages, with names that
	* being with "rmic.", look up the error message in rmic's resource
	* bundle; otherwise, defer to java's superclass method.
	*/
	@:overload @:public override public function errorString(err : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public public function reset() : Void;
	
	
}
/**
* Utility for building paths of directories and JAR files.  This
* class was copied from com.sun.tools.javac.util.Paths as part of
* the fix for 6473331, which adds support for Class-Path manifest
* entries in JAR files.  Diagnostic code is simply commented out
* because rmic silently ignored these conditions historically.
*/
@:native('sun$rmi$rmic$BatchEnvironment$Path') @:internal extern class BatchEnvironment_Path extends java.util.LinkedHashSet<String>
{
	@:overload @:public public function expandJarClassPaths(x : Bool) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	@:overload @:public public function emptyPathDefault(x : String) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function addDirectories(dirs : String, warn : Bool) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	@:overload @:public public function addDirectories(dirs : String) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	@:overload @:public public function addFiles(files : String, warn : Bool) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	@:overload @:public public function addFiles(files : String) : sun.rmi.rmic.BatchEnvironment.BatchEnvironment_Path;
	
	
}
@:native('sun$rmi$rmic$BatchEnvironment$Path$PathIterator') @:internal extern class BatchEnvironment_Path_PathIterator implements java.util.Collection<String>
{
	@:overload @:public public function new(path : String, emptyPathDefault : String) : Void;
	
	@:overload @:public public function new(path : String) : Void;
	
	@:overload @:public public function iterator() : java.util.Iterator<String>;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function contains(o : Dynamic) : Bool;
	
	@:overload @:public public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload @:public public function add(o : String) : Bool;
	
	@:overload @:public public function remove(o : Dynamic) : Bool;
	
	@:overload @:public public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public public function addAll(c : java.util.Collection<String>) : Bool;
	
	@:overload @:public public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
