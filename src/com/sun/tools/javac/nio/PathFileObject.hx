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
@:internal extern class PathFileObject implements javax.tools.JavaFileObject
{
	@:overload private function new(fileManager : com.sun.tools.javac.nio.JavacPathFileManager, path : java.nio.file.Path) : Void;
	
	@:overload public function getKind() : Kind;
	
	@:overload public function isNameCompatible(simpleName : String, kind : Kind) : Bool;
	
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	@:overload public function toUri() : java.net.URI;
	
	@:overload public function getName() : String;
	
	@:overload public function openInputStream() : java.io.InputStream;
	
	@:overload public function openOutputStream() : java.io.OutputStream;
	
	@:overload public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	@:overload public function openWriter() : java.io.Writer;
	
	@:overload public function getLastModified() : haxe.Int64;
	
	@:overload public function delete() : Bool;
	
	@:overload public function isSameFile(other : PathFileObject) : Bool;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	@:overload private static function toBinaryName(relativePath : java.nio.file.Path) : String;
	
	@:overload private static function toBinaryName(relativePath : String, sep : String) : String;
	
	@:overload private static function removeExtension(fileName : String) : String;
	
	/**
	* Checks if this file object is compatible with the specified
	* simple name and kind.  A simple name is a single identifier
	* (not qualified) as defined in
	* <cite>The Java&trade; Language Specification</cite>,
	* section 6.2 "Names and Identifiers".
	*
	* @param simpleName a simple name of a class
	* @param kind a kind
	* @return {@code true} if this file object is compatible; false
	* otherwise
	*/
	@:overload public function isNameCompatible(simpleName : String, kind : JavaFileObject_Kind) : Bool;
	
	
}
