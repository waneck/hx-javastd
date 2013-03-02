package com.sun.tools.javac.nio;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
//// NOTE the imports carefully for this compilation unit.
////
//// Path:  java.nio.file.Path -- the new NIO type for which this file manager exists
////
//// Paths: com.sun.tools.javac.file.Paths -- legacy javac type for handling path options
////      The other Paths (java.nio.file.Paths) is not used
//// NOTE this and related classes depend on new API in JDK 7.
//// This requires special handling while bootstrapping the JDK build,
//// when these classes might not yet have been compiled. To workaround
//// this, the build arranges to make stubs of these classes available
//// when compiling this and related classes. The set of stub files
//// is specified in make/build.properties.
/**
*  Implementation of PathFileManager: a JavaFileManager based on the use
*  of java.nio.file.Path.
*
*  <p>Just as a Path is somewhat analagous to a File, so too is this
*  JavacPathFileManager analogous to JavacFileManager, as it relates to the
*  support of FileObjects based on File objects (i.e. just RegularFileObject,
*  not ZipFileObject and its variants.)
*
*  <p>The default values for the standard locations supported by this file
*  manager are the same as the default values provided by JavacFileManager --
*  i.e. as determined by the javac.file.Paths class. To override these values,
*  call {@link #setLocation}.
*
*  <p>To reduce confusion with Path objects, the locations such as "class path",
*  "source path", etc, are generically referred to here as "search paths".
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class JavacPathFileManager extends com.sun.tools.javac.util.BaseFileManager implements com.sun.tools.javac.nio.PathFileManager
{
	private var defaultFileSystem : java.nio.file.FileSystem;
	
	/**
	* Create a JavacPathFileManager using a given context, optionally registering
	* it as the JavaFileManager for that context.
	*/
	@:overload public function new(context : com.sun.tools.javac.util.Context, register : Bool, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Set the context for JavacPathFileManager.
	*/
	@:overload override private function setContext(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function getDefaultFileSystem() : java.nio.file.FileSystem;
	
	@:overload public function setDefaultFileSystem(fs : java.nio.file.FileSystem) : Void;
	
	@:overload public function flush() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getClassLoader(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.ClassLoader;
	
	@:overload override public function isDefaultBootClassPath() : Bool;
	
	@:overload public function hasLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : Bool;
	
	@:overload public function getLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.Iterable<java.nio.file.Path>;
	
	@:overload public function setLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location, searchPath : java.lang.Iterable<java.nio.file.Path>) : Void;
	
	@:overload public function getPath(fo : javax.tools.FileObject) : java.nio.file.Path;
	
	@:overload public function isSameFile(a : javax.tools.FileObject, b : javax.tools.FileObject) : Bool;
	
	@:overload public function list(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, kinds : java.util.Set<javax.tools.JavaFileObject.JavaFileObject_Kind>, recurse : Bool) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload public function getJavaFileObjectsFromPaths(paths : java.lang.Iterable<java.nio.file.Path>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload public function getJavaFileObjects(paths : java.NativeArray<java.nio.file.Path>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload public function getJavaFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : javax.tools.JavaFileObject;
	
	@:overload public function getFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String) : javax.tools.FileObject;
	
	@:overload public function getJavaFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.FileObject) : javax.tools.JavaFileObject;
	
	@:overload public function getFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String, sibling : javax.tools.FileObject) : javax.tools.FileObject;
	
	@:overload public function inferBinaryName(location : javax.tools.JavaFileManager.JavaFileManager_Location, fo : javax.tools.JavaFileObject) : String;
	
	
}
@:native('com$sun$tools$javac$nio$JavacPathFileManager$PathsForLocation') @:internal extern class JavacPathFileManager_PathsForLocation extends java.util.LinkedHashSet<java.nio.file.Path>
{
	
}
