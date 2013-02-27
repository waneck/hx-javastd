package com.sun.tools.javac.api;
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
/**
* Wraps all calls to a given file manager.  Subclasses of this class
* might override some of these methods and might also provide
* additional fields and methods.
*
* <p>This class might be moved to {@link javax.tools} in a future
* release.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*
* @param <M> the type of file manager wrapped to by this object
*
* @author Peter von der Ah&eacute;
* @since 1.6
*/
@:require(java6) extern class WrappingJavaFileManager<M> extends javax.tools.ForwardingJavaFileManager<M>
{
	/**
	* Creates a new instance of WrappingJavaFileManager.
	* @param fileManager file manager to be wrapped
	*/
	@:overload private function new(fileManager : M) : Void;
	
	/**
	* This implementation returns the given file object.  Subclasses
	* may override this behavior.
	*
	* @param fileObject a file object
	*/
	@:overload private function wrap(fileObject : javax.tools.FileObject) : javax.tools.FileObject;
	
	/**
	* This implementation forwards to {@link #wrap(FileObject)}.
	* Subclasses may override this behavior.
	*
	* @param fileObject a file object
	* @throws ClassCastException if the file object returned from the
	* forwarded call is not a subtype of {@linkplain JavaFileObject}
	*/
	@:overload private function wrap(fileObject : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	/**
	* This implementation returns the given file object.  Subclasses
	* may override this behavior.
	*
	* @param fileObject a file object
	*/
	@:overload private function unwrap(fileObject : javax.tools.FileObject) : javax.tools.FileObject;
	
	/**
	* This implementation forwards to {@link #unwrap(FileObject)}.
	* Subclasses may override this behavior.
	*
	* @param fileObject a file object
	* @throws ClassCastException if the file object returned from the
	* forwarded call is not a subtype of {@linkplain JavaFileObject}
	*/
	@:overload private function unwrap(fileObject : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	/**
	* This implementation maps the given list of file objects by
	* calling wrap on each.  Subclasses may override this behavior.
	*
	* @param fileObjects a list of file objects
	* @return the mapping
	*/
	@:overload private function wrap(fileObjects : java.lang.Iterable<javax.tools.JavaFileObject>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* This implementation returns the given URI.  Subclasses may
	* override this behavior.
	*
	* @param uri a URI
	*/
	@:overload private function unwrap(uri : java.net.URI) : java.net.URI;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function list(location : Location, packageName : String, kinds : java.util.Set<javax.tools.JavaFileObject.JavaFileObject_Kind>, recurse : Bool) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function inferBinaryName(location : Location, file : javax.tools.JavaFileObject) : String;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function getJavaFileForInput(location : Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : javax.tools.JavaFileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function getJavaFileForOutput(location : Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.FileObject) : javax.tools.JavaFileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function getFileForInput(location : Location, packageName : String, relativeName : String) : javax.tools.FileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload override public function getFileForOutput(location : Location, packageName : String, relativeName : String, sibling : javax.tools.FileObject) : javax.tools.FileObject;
	
	
}
