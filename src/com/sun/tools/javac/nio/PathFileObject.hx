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
	@:overload @:protected private function new(fileManager : com.sun.tools.javac.nio.JavacPathFileManager, path : java.nio.file.Path) : Void;
	
	@:overload @:public public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload @:public public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	@:overload @:public public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload @:public public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	@:overload @:public public function toUri() : java.net.URI;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function openInputStream() : java.io.InputStream;
	
	@:overload @:public public function openOutputStream() : java.io.OutputStream;
	
	@:overload @:public public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload @:public public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	@:overload @:public public function openWriter() : java.io.Writer;
	
	@:overload @:public public function getLastModified() : haxe.Int64;
	
	@:overload @:public public function delete() : Bool;
	
	@:overload @:public public function isSameFile(other : com.sun.tools.javac.nio.PathFileObject) : Bool;
	
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected @:static private static function toBinaryName(relativePath : java.nio.file.Path) : String;
	
	@:overload @:protected @:static private static function toBinaryName(relativePath : String, sep : String) : String;
	
	@:overload @:protected @:static private static function removeExtension(fileName : String) : String;
	
	
}
