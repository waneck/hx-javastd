package com.sun.tools.javac.processing;
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
extern class JavacFiler implements javax.annotation.processing.Filer implements java.io.Closeable
{
	@:overload public function createSourceFile(name : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.JavaFileObject;
	
	@:overload public function createClassFile(name : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.JavaFileObject;
	
	@:overload public function createResource(location : javax.tools.JavaFileManager.JavaFileManager_Location, pkg : java.lang.CharSequence, relativeName : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.FileObject;
	
	@:overload public function getResource(location : javax.tools.JavaFileManager.JavaFileManager_Location, pkg : java.lang.CharSequence, relativeName : java.lang.CharSequence) : javax.tools.FileObject;
	
	@:overload public function newFiles() : Bool;
	
	@:overload public function getGeneratedSourceNames() : java.util.Set<String>;
	
	@:overload public function getGeneratedSourceFileObjects() : java.util.Set<javax.tools.JavaFileObject>;
	
	@:overload public function getGeneratedClasses() : java.util.Map<String, javax.tools.JavaFileObject>;
	
	@:overload public function warnIfUnclosedFiles() : Void;
	
	/**
	* Update internal state for a new round.
	*/
	@:overload public function newRound(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function close() : Void;
	
	/**
	* Debugging function to display internal state.
	*/
	@:overload public function displayState() : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* Wrap a JavaFileObject to manage writing by the Filer.
*/
@:native('com$sun$tools$javac$processing$JavacFiler$FilerOutputFileObject') @:internal extern class JavacFiler_FilerOutputFileObject extends javax.tools.ForwardingFileObject<javax.tools.FileObject>
{
	@:overload @:synchronized override public function openOutputStream() : java.io.OutputStream;
	
	@:overload @:synchronized override public function openWriter() : java.io.Writer;
	
	@:overload override public function openInputStream() : java.io.InputStream;
	
	@:overload override public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload override public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	@:overload override public function delete() : Bool;
	
	
}
@:native('com$sun$tools$javac$processing$JavacFiler$FilerOutputJavaFileObject') @:internal extern class JavacFiler_FilerOutputJavaFileObject extends JavacFiler_FilerOutputFileObject implements javax.tools.JavaFileObject
{
	@:overload public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	
}
/**
* Wrap a JavaFileObject to manage reading by the Filer.
*/
@:native('com$sun$tools$javac$processing$JavacFiler$FilerInputFileObject') @:internal extern class JavacFiler_FilerInputFileObject extends javax.tools.ForwardingFileObject<javax.tools.FileObject>
{
	@:overload override public function openOutputStream() : java.io.OutputStream;
	
	@:overload override public function openWriter() : java.io.Writer;
	
	@:overload override public function delete() : Bool;
	
	
}
@:native('com$sun$tools$javac$processing$JavacFiler$FilerInputJavaFileObject') @:internal extern class JavacFiler_FilerInputJavaFileObject extends JavacFiler_FilerInputFileObject implements javax.tools.JavaFileObject
{
	@:overload public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	
}
/**
* Wrap a {@code OutputStream} returned from the {@code
* JavaFileManager} to properly register source or class files
* when they are closed.
*/
@:native('com$sun$tools$javac$processing$JavacFiler$FilerOutputStream') @:internal extern class JavacFiler_FilerOutputStream extends java.io.FilterOutputStream
{
	@:overload @:synchronized override public function close() : Void;
	
	
}
/**
* Wrap a {@code Writer} returned from the {@code JavaFileManager}
* to properly register source or class files when they are
* closed.
*/
@:native('com$sun$tools$javac$processing$JavacFiler$FilerWriter') @:internal extern class JavacFiler_FilerWriter extends java.io.FilterWriter
{
	@:overload @:synchronized override public function close() : Void;
	
	
}
