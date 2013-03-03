package com.sun.tools.javac.file;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class provides access to the source, class and other files
* used by the compiler and related tools.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class JavacFileManager extends com.sun.tools.javac.util.BaseFileManager implements javax.tools.StandardJavaFileManager
{
	@:overload @:public @:static public static function toArray(buffer : java.nio.CharBuffer) : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected private var mmappedIO : Bool;
	
	@:protected private var ignoreSymbolFile : Bool;
	
	@:protected private var sortFiles : com.sun.tools.javac.file.JavacFileManager.JavacFileManager_SortFiles;
	
	/**
	* Register a Context.Factory to create a JavacFileManager.
	*/
	@:overload @:public @:static public static function preRegister(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* Create a JavacFileManager using a given context, optionally registering
	* it as the JavaFileManager for that context.
	*/
	@:overload @:public public function new(context : com.sun.tools.javac.util.Context, register : Bool, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Set the context for JavacFileManager.
	*/
	@:overload @:public override public function setContext(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public override public function isDefaultBootClassPath() : Bool;
	
	@:overload @:public public function getFileForInput(name : String) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getRegularFile(file : java.io.File) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getFileForOutput(classname : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getJavaFileObjectsFromStrings(names : java.lang.Iterable<String>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public public function getJavaFileObjects(names : java.NativeArray<String>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public @:static public static function testName(name : String, isValidPackageName : Bool, isValidClassName : Bool) : Void;
	
	/*
	* This method looks for a ZipFormatException and takes appropriate
	* evasive action. If there is a failure in the fast mode then we
	* fail over to the platform zip, and allow it to deal with a potentially
	* non compliant zip file.
	*/
	@:overload @:protected private function openArchive(zipFilename : java.io.File) : com.sun.tools.javac.file.JavacFileManager.JavacFileManager_Archive;
	
	/** Flush any output resources.
	*/
	@:overload @:public public function flush() : Void;
	
	/**
	* Close the JavaFileManager, releasing resources.
	*/
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getClassLoader(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.ClassLoader;
	
	@:overload @:public public function list(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, kinds : java.util.Set<javax.tools.JavaFileObject.JavaFileObject_Kind>, recurse : Bool) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public public function inferBinaryName(location : javax.tools.JavaFileManager.JavaFileManager_Location, file : javax.tools.JavaFileObject) : String;
	
	@:overload @:public public function isSameFile(a : javax.tools.FileObject, b : javax.tools.FileObject) : Bool;
	
	@:overload @:public public function hasLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : Bool;
	
	@:overload @:public public function getJavaFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String) : javax.tools.FileObject;
	
	@:overload @:public public function getJavaFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.FileObject) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String, sibling : javax.tools.FileObject) : javax.tools.FileObject;
	
	@:overload @:public public function getJavaFileObjectsFromFiles(files : java.lang.Iterable<java.io.File>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public public function getJavaFileObjects(files : java.NativeArray<java.io.File>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public public function setLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location, path : java.lang.Iterable<java.io.File>) : Void;
	
	@:overload @:public public function getLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.Iterable<java.io.File>;
	
	/**
	* Enforces the specification of a "relative" URI as used in
	* {@linkplain #getFileForInput(Location,String,URI)
	* getFileForInput}.  This method must follow the rules defined in
	* that method, do not make any changes without consulting the
	* specification.
	*/
	@:overload @:protected @:static private static function isRelativeUri(uri : java.net.URI) : Bool;
	
	@:overload @:protected @:static private static function isRelativeUri(u : String) : Bool;
	
	/**
	* Converts a relative file name to a relative URI.  This is
	* different from File.toURI as this method does not canonicalize
	* the file before creating the URI.  Furthermore, no schema is
	* used.
	* @param file a relative file name
	* @return a relative URI
	* @throws IllegalArgumentException if the file name is not
	* relative according to the definition given in {@link
	* javax.tools.JavaFileManager#getFileForInput}
	*/
	@:overload @:public @:static public static function getRelativeName(file : java.io.File) : String;
	
	/**
	* Get a detail message from an IOException.
	* Most, but not all, instances of IOException provide a non-null result
	* for getLocalizedMessage().  But some instances return null: in these
	* cases, fallover to getMessage(), and if even that is null, return the
	* name of the exception itself.
	* @param e an IOException
	* @return a string to include in a compiler diagnostic
	*/
	@:overload @:public @:static public static function getMessage(e : java.io.IOException) : String;
	
	
}
@:native('com$sun$tools$javac$file$JavacFileManager$SortFiles') privateextern enum JavacFileManager_SortFiles
{
	FORWARD;
	REVERSE;
	
}

/**
* An archive provides a flat directory structure of a ZipFile by
* mapping directory names to lists of files (basenames).
*/
@:native('com$sun$tools$javac$file$JavacFileManager$Archive') extern interface JavacFileManager_Archive
{
	@:overload public function close() : Void;
	
	@:overload public function contains(name : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload public function getFileObject(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, file : String) : javax.tools.JavaFileObject;
	
	@:overload public function getFiles(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : com.sun.tools.javac.util.List<String>;
	
	@:overload public function getSubdirectories() : java.util.Set<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory>;
	
	
}
@:native('com$sun$tools$javac$file$JavacFileManager$MissingArchive') extern class JavacFileManager_MissingArchive implements com.sun.tools.javac.file.JavacFileManager.JavacFileManager_Archive
{
	@:overload @:public public function new(name : java.io.File) : Void;
	
	@:overload @:public public function contains(name : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getFileObject(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, file : String) : javax.tools.JavaFileObject;
	
	@:overload @:public public function getFiles(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : com.sun.tools.javac.util.List<String>;
	
	@:overload @:public public function getSubdirectories() : java.util.Set<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory>;
	
	@:overload @:public public function toString() : String;
	
	
}
