package com.sun.tools.javac.file;
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
/** This class converts command line arguments, environment variables
*  and system properties (in File.pathSeparator-separated String form)
*  into a boot class path, user class path, and source path (in
*  Collection<String> form).
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Paths
{
	/** The context key for the todo list */
	@:protected @:static @:final private static var pathsKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.file.Paths>;
	
	/** Get the Paths instance for this context.
	*  @param context the context
	*  @return the Paths instance for this context
	*/
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.file.Paths;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function isDefaultBootClassPath() : Bool;
	
	@:overload @:protected private function lazy() : Void;
	
	@:overload @:public public function bootClassPath() : java.util.Collection<java.io.File>;
	
	@:overload @:public public function userClassPath() : java.util.Collection<java.io.File>;
	
	@:overload @:public public function sourcePath() : java.util.Collection<java.io.File>;
	
	@:overload @:public public function sourceSearchPath() : java.util.Collection<java.io.File>;
	
	@:overload @:public public function classSearchPath() : java.util.Collection<java.io.File>;
	
	/**
	* Utility method for converting a search path string to an array
	* of directory and JAR file URLs.
	*
	* Note that this method is called by apt and the DocletInvoker.
	*
	* @param path the search path string
	* @return the resulting array of directory and JAR file URLs
	*/
	@:overload @:public @:static public static function pathToURLs(path : String) : java.NativeArray<java.net.URL>;
	
	
}
@:native('com$sun$tools$javac$file$Paths$Path') @:internal extern class Paths_Path extends java.util.LinkedHashSet<java.io.File>
{
	@:overload @:public public function expandJarClassPaths(x : Bool) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function emptyPathDefault(x : java.io.File) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function addDirectories(dirs : String, warn : Bool) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function addDirectories(dirs : String) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function addFiles(files : String, warn : Bool) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function addFiles(files : String) : com.sun.tools.javac.file.Paths.Paths_Path;
	
	@:overload @:public public function addFile(file : java.io.File, warn : Bool) : Void;
	
	
}
