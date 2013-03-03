package com.sun.tools.apt.mirror.apt;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of Filer.
*/
extern class FilerImpl implements com.sun.mirror.apt.Filer
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.mirror.apt.FilerImpl;
	
	@:overload @:public public function flush() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function createSourceFile(name : String) : java.io.PrintWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function createClassFile(name : String) : java.io.OutputStream;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function createTextFile(loc : com.sun.mirror.apt.Filer.Filer_Location, pkg : String, relPath : java.io.File, charsetName : String) : java.io.PrintWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function createBinaryFile(loc : com.sun.mirror.apt.Filer.Filer_Location, pkg : String, relPath : java.io.File) : java.io.OutputStream;
	
	@:overload @:public public function getSourceFileNames() : java.util.Set<String>;
	
	@:overload @:public public function getClassFileNames() : java.util.Set<String>;
	
	@:overload @:public public function roundOver() : Void;
	
	
}
/*
* The Filer class must maintain a number of constraints.  First,
* multiple attempts to open the same path within the same
* invocation of apt results in an IOException being thrown.  For
* example, trying to open the same source file twice:
*
* createSourceFile("foo.Bar")
* ...
* createSourceFile("foo.Bar")
*
* is disallowed as is opening a text file that happens to have
* the same name as a source file:
*
* createSourceFile("foo.Bar")
* ...
* createTextFile(SOURCE_TREE, "foo", new File("Bar"), null)
*
* Additionally, creating a source file that corresponds to an
* already created class file (or vice versa) generates at least a
* warning.  This is an error if -XclassesAsDecls is being used
* since you can't create the same type twice.  However, if the
* Filer is used to create a text file named *.java that happens
* to correspond to an existing class file, a warning is *not*
* generated.  Similarly, a warning is not generated for a binary
* file named *.class and an existing source file.
*
* The reason for this difference is that source files and class
* files are registered with apt and can get passed on as
* declarations to the next round of processing.  Files that are
* just named *.java and *.class are not processed in that manner;
* although having extra source files and class files on the
* source path and class path can alter the behavior of the tool
* and any final compile.
*/
@:native('com$sun$tools$apt$mirror$apt$FilerImpl$FileKind') privateextern enum FilerImpl_FileKind
{
	SOURCE;
	CLASS;
	OTHER;
	
}

