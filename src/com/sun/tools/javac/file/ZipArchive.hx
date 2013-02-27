package com.sun.tools.javac.file;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ZipArchive implements com.sun.tools.javac.file.JavacFileManager.JavacFileManager_Archive
{
	/**
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own risk.
	* This code and its internal interfaces are subject to change or
	* deletion without notice.</b>
	*/
	@:overload public function new(fm : com.sun.tools.javac.file.JavacFileManager, zfile : java.util.zip.ZipFile) : Void;
	
	@:overload private function new(fm : com.sun.tools.javac.file.JavacFileManager, zfile : java.util.zip.ZipFile, initMap : Bool) : Void;
	
	@:overload private function initMap() : Void;
	
	@:overload public function contains(name : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload public function getFiles(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : com.sun.tools.javac.util.List<String>;
	
	@:overload public function getFileObject(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, file : String) : javax.tools.JavaFileObject;
	
	@:overload public function getSubdirectories() : java.util.Set<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory>;
	
	@:overload public function close() : Void;
	
	@:overload public function toString() : String;
	
	/**
	* The file manager that created this archive.
	*/
	private var fileManager : com.sun.tools.javac.file.JavacFileManager;
	
	/**
	* The index for the contents of this archive.
	*/
	private var map(default, null) : java.util.Map<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, com.sun.tools.javac.util.List<String>>;
	
	/**
	* The zip file for the archive.
	*/
	private var zfile(default, null) : java.util.zip.ZipFile;
	
	/**
	* A reference to the absolute filename for the zip file for the archive.
	*/
	private var absFileRef : java.lang.ref.Reference<java.io.File>;
	
	
}
/**
* A subclass of JavaFileObject representing zip entries.
*/
@:native('com$sun$tools$javac$file$ZipArchive$ZipFileObject') extern class ZipArchive_ZipFileObject extends com.sun.tools.javac.file.BaseFileObject
{
	@:overload private function new(zarch : ZipArchive, name : String, entry : java.util.zip.ZipEntry) : Void;
	
	@:overload override public function toUri() : java.net.URI;
	
	@:overload override public function getName() : String;
	
	@:overload override public function getShortName() : String;
	
	@:overload override public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload override public function openInputStream() : java.io.InputStream;
	
	@:overload override public function openOutputStream() : java.io.OutputStream;
	
	@:overload override public function getCharContent(ignoreEncodingErrors : Bool) : java.nio.CharBuffer;
	
	@:overload override public function openWriter() : java.io.Writer;
	
	@:overload override public function getLastModified() : haxe.Int64;
	
	@:overload override public function delete() : Bool;
	
	@:overload override private function getDecoder(ignoreEncodingErrors : Bool) : java.nio.charset.CharsetDecoder;
	
	@:overload override private function inferBinaryName(path : java.lang.Iterable<java.io.File>) : String;
	
	@:overload public function isNameCompatible(cn : String, k : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* Check if two file objects are equal.
	* Two ZipFileObjects are equal if the absolute paths of the underlying
	* zip files are equal and if the paths within those zip files are equal.
	*/
	@:overload override public function equals(other : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	
}
