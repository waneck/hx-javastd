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
extern class ZipFileIndexArchive implements com.sun.tools.javac.file.JavacFileManager.JavacFileManager_Archive
{
	@:overload public function new(fileManager : com.sun.tools.javac.file.JavacFileManager, zdir : com.sun.tools.javac.file.ZipFileIndex) : Void;
	
	@:overload public function contains(name : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload public function getFiles(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : com.sun.tools.javac.util.List<String>;
	
	@:overload public function getFileObject(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, file : String) : javax.tools.JavaFileObject;
	
	@:overload public function getSubdirectories() : java.util.Set<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory>;
	
	@:overload public function close() : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* A subclass of JavaFileObject representing zip entries using the com.sun.tools.javac.file.ZipFileIndex implementation.
*/
@:native('com$sun$tools$javac$file$ZipFileIndexArchive$ZipFileIndexFileObject') extern class ZipFileIndexArchive_ZipFileIndexFileObject extends com.sun.tools.javac.file.BaseFileObject
{
	@:overload public function toUri() : java.net.URI;
	
	@:overload public function getName() : String;
	
	@:overload public function getShortName() : String;
	
	@:overload public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload public function openInputStream() : java.io.InputStream;
	
	@:overload public function openOutputStream() : java.io.OutputStream;
	
	@:overload public function getCharContent(ignoreEncodingErrors : Bool) : java.nio.CharBuffer;
	
	@:overload public function openWriter() : java.io.Writer;
	
	@:overload public function getLastModified() : haxe.Int64;
	
	@:overload public function delete() : Bool;
	
	@:overload private function getDecoder(ignoreEncodingErrors : Bool) : java.nio.charset.CharsetDecoder;
	
	@:overload private function inferBinaryName(path : java.lang.Iterable<java.io.File>) : String;
	
	@:overload public function isNameCompatible(cn : String, k : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* Check if two file objects are equal.
	* Two ZipFileIndexFileObjects are equal if the absolute paths of the underlying
	* zip files are equal and if the paths within those zip files are equal.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
