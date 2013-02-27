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
extern class BaseFileObject implements javax.tools.JavaFileObject
{
	/**
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own risk.
	* This code and its internal interfaces are subject to change or
	* deletion without notice.</b>
*/
	@:overload private function new(fileManager : com.sun.tools.javac.file.JavacFileManager) : Void;
	
	/** Return a short name for the object, such as for use in raw diagnostics
	*/
	@:overload @:abstract public function getShortName() : String;
	
	@:overload public function toString() : String;
	
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	@:overload public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload private function getDecoder(ignoreEncodingErrors : Bool) : java.nio.charset.CharsetDecoder;
	
	@:overload @:abstract private function inferBinaryName(path : java.lang.Iterable<java.io.File>) : String;
	
	@:native('getKind') @:overload private static function _getKind(filename : String) : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload private static function removeExtension(fileName : String) : String;
	
	@:overload private static function createJarUri(jarFile : java.io.File, entryName : String) : java.net.URI;
	
	/** Return the last component of a presumed hierarchical URI.
	*  From the scheme specific part of the URI, it returns the substring
	*  after the last "/" if any, or everything if no "/" is found.
	*/
	@:overload public static function getSimpleName(fo : javax.tools.FileObject) : String;
	
	@:overload @:abstract public function equals(other : Dynamic) : Bool;
	
	@:overload @:abstract public function hashCode() : Int;
	
	/** The file manager that created this JavaFileObject. */
	private var fileManager(default, null) : com.sun.tools.javac.file.JavacFileManager;
	
	/**
	* Gets a user-friendly name for this file object.  The exact
	* value returned is not specified but implementations should take
	* care to preserve names as given by the user.  For example, if
	* the user writes the filename {@code "BobsApp\Test.java"} on
	* the command line, this method should return {@code
	* "BobsApp\Test.java"} whereas the {@linkplain #toUri toUri}
	* method might return {@code
	* file:///C:/Documents%20and%20Settings/UncleBob/BobsApp/Test.java}.
	*
	* @return a user-friendly name
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets a Writer for this file object.
	*
	* @return a Writer
	* @throws IllegalStateException if this file object was
	* opened for reading and does not support writing
	* @throws UnsupportedOperationException if this kind of
	* file object does not support character access
	* @throws IOException if an I/O error occurred
	*/
	@:overload public function openWriter() : java.io.Writer;
	
	/**
	* Gets the kind of this file object.
	*
	* @return the kind
	*/
	@:overload public function getKind() : JavaFileObject_Kind;
	
	/**
	* Gets the character content of this file object, if available.
	* Any byte that cannot be decoded will be replaced by the default
	* translation character.  In addition, a diagnostic may be
	* reported unless {@code ignoreEncodingErrors} is true.
	*
	* @param ignoreEncodingErrors ignore encoding errors if true
	* @return a CharSequence if available; {@code null} otherwise
	* @throws IllegalStateException if this file object was
	* opened for writing and does not support reading
	* @throws UnsupportedOperationException if this kind of
	* file object does not support character access
	* @throws IOException if an I/O error occurred
	*/
	@:overload public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
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
	
	/**
	* Gets an InputStream for this file object.
	*
	* @return an InputStream
	* @throws IllegalStateException if this file object was
	* opened for writing and does not support reading
	* @throws UnsupportedOperationException if this kind of file
	* object does not support byte access
	* @throws IOException if an I/O error occurred
	*/
	@:overload public function openInputStream() : java.io.InputStream;
	
	/**
	* Returns a URI identifying this file object.
	* @return a URI
	*/
	@:overload public function toUri() : java.net.URI;
	
	/**
	* Gets an OutputStream for this file object.
	*
	* @return an OutputStream
	* @throws IllegalStateException if this file object was
	* opened for reading and does not support writing
	* @throws UnsupportedOperationException if this kind of
	* file object does not support byte access
	* @throws IOException if an I/O error occurred
	*/
	@:overload public function openOutputStream() : java.io.OutputStream;
	
	/**
	* Gets the time this file object was last modified.  The time is
	* measured in milliseconds since the epoch (00:00:00 GMT, January
	* 1, 1970).
	*
	* @return the time this file object was last modified; or 0 if
	* the file object does not exist, if an I/O error occurred, or if
	* the operation is not supported
	*/
	@:overload public function getLastModified() : haxe.Int64;
	
	/**
	* Deletes this file object.  In case of errors, returns false.
	* @return true if and only if this file object is successfully
	* deleted; false otherwise
	*/
	@:overload public function delete() : Bool;
	
	
}
/** Used when URLSyntaxException is thrown unexpectedly during
*  implementations of (Base)FileObject.toURI(). */
@:native('com$sun$tools$javac$file$BaseFileObject$CannotCreateUriError') extern class BaseFileObject_CannotCreateUriError extends java.lang.Error
{
	@:overload public function new(value : String, cause : java.lang.Throwable) : Void;
	
	
}
