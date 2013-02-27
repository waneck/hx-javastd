package javax.tools;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleJavaFileObject implements javax.tools.JavaFileObject
{
	/**
	* A URI for this file object.
	*/
	private var uri(default, null) : java.net.URI;
	
	/**
	* The kind of this file object.
	*/
	private var kind(default, null) : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	/**
	* Construct a SimpleJavaFileObject of the given kind and with the
	* given URI.
	*
	* @param uri  the URI for this file object
	* @param kind the kind of this file object
	*/
	@:overload private function new(uri : java.net.URI, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Void;
	
	@:overload public function toUri() : java.net.URI;
	
	@:overload public function getName() : String;
	
	/**
	* This implementation always throws {@linkplain
	* UnsupportedOperationException}.  Subclasses can change this
	* behavior as long as the contract of {@link FileObject} is
	* obeyed.
	*/
	@:overload public function openInputStream() : java.io.InputStream;
	
	/**
	* This implementation always throws {@linkplain
	* UnsupportedOperationException}.  Subclasses can change this
	* behavior as long as the contract of {@link FileObject} is
	* obeyed.
	*/
	@:overload public function openOutputStream() : java.io.OutputStream;
	
	/**
	* Wraps the result of {@linkplain #getCharContent} in a Reader.
	* Subclasses can change this behavior as long as the contract of
	* {@link FileObject} is obeyed.
	*
	* @param  ignoreEncodingErrors {@inheritDoc}
	* @return a Reader wrapping the result of getCharContent
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	/**
	* This implementation always throws {@linkplain
	* UnsupportedOperationException}.  Subclasses can change this
	* behavior as long as the contract of {@link FileObject} is
	* obeyed.
	*/
	@:overload public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	/**
	* Wraps the result of openOutputStream in a Writer.  Subclasses
	* can change this behavior as long as the contract of {@link
	* FileObject} is obeyed.
	*
	* @return a Writer wrapping the result of openOutputStream
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload public function openWriter() : java.io.Writer;
	
	/**
	* This implementation returns {@code 0L}.  Subclasses can change
	* this behavior as long as the contract of {@link FileObject} is
	* obeyed.
	*
	* @return {@code 0L}
	*/
	@:overload public function getLastModified() : haxe.Int64;
	
	/**
	* This implementation does nothing.  Subclasses can change this
	* behavior as long as the contract of {@link FileObject} is
	* obeyed.
	*
	* @return {@code false}
	*/
	@:overload public function delete() : Bool;
	
	/**
	* @return {@code this.kind}
	*/
	@:overload public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	/**
	* This implementation compares the path of its URI to the given
	* simple name.  This method returns true if the given kind is
	* equal to the kind of this object, and if the path is equal to
	* {@code simpleName + kind.extension} or if it ends with {@code
	* "/" + simpleName + kind.extension}.
	*
	* <p>This method calls {@link #getKind} and {@link #toUri} and
	* does not access the fields {@link #uri} and {@link #kind}
	* directly.
	*
	* <p>Subclasses can change this behavior as long as the contract
	* of {@link JavaFileObject} is obeyed.
	*/
	@:overload public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* This implementation returns {@code null}.  Subclasses can
	* change this behavior as long as the contract of
	* {@link JavaFileObject} is obeyed.
	*/
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	/**
	* This implementation returns {@code null}.  Subclasses can
	* change this behavior as long as the contract of
	* {@link JavaFileObject} is obeyed.
	*/
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	@:overload public function toString() : String;
	
	
}
