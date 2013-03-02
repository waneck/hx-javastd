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
extern class SymbolArchive extends com.sun.tools.javac.file.ZipArchive
{
	@:overload public function new(fileManager : com.sun.tools.javac.file.JavacFileManager, orig : java.io.File, zdir : java.util.zip.ZipFile, prefix : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : Void;
	
	@:overload override public function getFileObject(subdirectory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, file : String) : javax.tools.JavaFileObject;
	
	@:overload override public function toString() : String;
	
	
}
/**
* A subclass of JavaFileObject representing zip entries in a symbol file.
*/
@:native('com$sun$tools$javac$file$SymbolArchive$SymbolFileObject') extern class SymbolArchive_SymbolFileObject extends com.sun.tools.javac.file.ZipArchive.ZipArchive_ZipFileObject
{
	@:overload private function new(zarch : com.sun.tools.javac.file.SymbolArchive, name : String, entry : java.util.zip.ZipEntry) : Void;
	
	@:overload override private function inferBinaryName(path : java.lang.Iterable<java.io.File>) : String;
	
	
}
