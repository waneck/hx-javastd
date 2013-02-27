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
@:internal extern class RegularFileObject extends com.sun.tools.javac.file.BaseFileObject
{
	@:overload public function new(fileManager : com.sun.tools.javac.file.JavacFileManager, f : java.io.File) : Void;
	
	@:overload public function new(fileManager : com.sun.tools.javac.file.JavacFileManager, name : String, f : java.io.File) : Void;
	
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
	
	@:overload public function isNameCompatible(cn : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* Check if two file objects are equal.
	* Two RegularFileObjects are equal if the absolute paths of the underlying
	* files are equal.
	*/
	@:overload override public function equals(other : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	
}
