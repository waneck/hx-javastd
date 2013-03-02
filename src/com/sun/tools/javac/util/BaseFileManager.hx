package com.sun.tools.javac.util;
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
extern class BaseFileManager
{
	/**
	* Utility methods for building a filemanager.
	* There are no references here to file-system specific objects such as
	* java.io.File or java.nio.file.Path.
	*/
	@:overload private function new(charset : java.nio.charset.Charset) : Void;
	
	/**
	* Set the context for JavacPathFileManager.
	*/
	@:overload private function setContext(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* The log to be used for error reporting.
	*/
	public var log : com.sun.tools.javac.util.Log;
	
	/**
	* User provided charset (through javax.tools).
	*/
	private var charset : java.nio.charset.Charset;
	
	private var options : com.sun.tools.javac.util.Options;
	
	private var classLoaderClass : String;
	
	@:overload private function getSource() : com.sun.tools.javac.code.Source;
	
	@:overload private function getClassLoader(urls : java.NativeArray<java.net.URL>) : java.lang.ClassLoader;
	
	@:overload public function handleOption(current : String, remaining : java.util.Iterator<String>) : Bool;
	
	@:overload public function isSupportedOption(option : String) : Int;
	
	@:overload @:abstract public function isDefaultBootClassPath() : Bool;
	
	@:overload public function getEncodingName() : String;
	
	@:overload public function decode(inbuf : java.nio.ByteBuffer, ignoreEncodingErrors : Bool) : java.nio.CharBuffer;
	
	@:overload public function getDecoder(encodingName : String, ignoreEncodingErrors : Bool) : java.nio.charset.CharsetDecoder;
	
	/**
	* Make a byte buffer from an input stream.
	*/
	@:overload public function makeByteBuffer(_in : java.io.InputStream) : java.nio.ByteBuffer;
	
	@:overload public function recycleByteBuffer(bb : java.nio.ByteBuffer) : Void;
	
	@:overload public function getCachedContent(file : javax.tools.JavaFileObject) : java.nio.CharBuffer;
	
	@:overload public function cache(file : javax.tools.JavaFileObject, cb : java.nio.CharBuffer) : Void;
	
	@:overload public function flushCache(file : javax.tools.JavaFileObject) : Void;
	
	private var contentCache(default, null) : java.util.Map<javax.tools.JavaFileObject, com.sun.tools.javac.util.BaseFileManager.BaseFileManager_ContentCacheEntry>;
	
	@:overload public static function getKind(name : String) : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload private static function nullCheck<T>(o : T) : T;
	
	@:overload private static function nullCheck<T>(it : java.util.Collection<T>) : java.util.Collection<T>;
	
	
}
/**
* A single-element cache of direct byte buffers.
*/
@:native('com$sun$tools$javac$util$BaseFileManager$ByteBufferCache') @:internal extern class BaseFileManager_ByteBufferCache
{
	
}
@:native('com$sun$tools$javac$util$BaseFileManager$ContentCacheEntry') extern class BaseFileManager_ContentCacheEntry
{
	
}
