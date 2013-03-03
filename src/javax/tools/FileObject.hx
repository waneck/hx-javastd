package javax.tools;
/*
* Copyright (c) 2006, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface FileObject
{
	/**
	* Returns a URI identifying this file object.
	* @return a URI
	*/
	@:overload @:public public function toUri() : java.net.URI;
	
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
	@:overload @:public public function getName() : String;
	
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
	@:overload @:public public function openInputStream() : java.io.InputStream;
	
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
	@:overload @:public public function openOutputStream() : java.io.OutputStream;
	
	/**
	* Gets a reader for this object.  The returned reader will
	* replace bytes that cannot be decoded with the default
	* translation character.  In addition, the reader may report a
	* diagnostic unless {@code ignoreEncodingErrors} is true.
	*
	* @param ignoreEncodingErrors ignore encoding errors if true
	* @return a Reader
	* @throws IllegalStateException if this file object was
	* opened for writing and does not support reading
	* @throws UnsupportedOperationException if this kind of
	* file object does not support character access
	* @throws IOException if an I/O error occurred
	*/
	@:overload public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
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
	@:overload @:public public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
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
	@:overload @:public public function openWriter() : java.io.Writer;
	
	/**
	* Gets the time this file object was last modified.  The time is
	* measured in milliseconds since the epoch (00:00:00 GMT, January
	* 1, 1970).
	*
	* @return the time this file object was last modified; or 0 if
	* the file object does not exist, if an I/O error occurred, or if
	* the operation is not supported
	*/
	@:overload @:public public function getLastModified() : haxe.Int64;
	
	/**
	* Deletes this file object.  In case of errors, returns false.
	* @return true if and only if this file object is successfully
	* deleted; false otherwise
	*/
	@:overload @:public public function delete() : Bool;
	
	
}
