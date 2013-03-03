package javax.tools;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ForwardingFileObject<F> implements javax.tools.FileObject
{
	/**
	* The file object which all methods are delegated to.
	*/
	@:protected @:final private var fileObject(default, null) : F;
	
	/**
	* Creates a new instance of ForwardingFileObject.
	* @param fileObject delegate to this file object
	*/
	@:overload @:protected private function new(fileObject : F) : Void;
	
	@:overload @:public public function toUri() : java.net.URI;
	
	@:overload @:public public function getName() : String;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload @:public public function openInputStream() : java.io.InputStream;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload @:public public function openOutputStream() : java.io.OutputStream;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload @:public public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload @:public public function getCharContent(ignoreEncodingErrors : Bool) : java.lang.CharSequence;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IOException {@inheritDoc}
	*/
	@:overload @:public public function openWriter() : java.io.Writer;
	
	@:overload @:public public function getLastModified() : haxe.Int64;
	
	@:overload @:public public function delete() : Bool;
	
	
}
