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
extern class ForwardingJavaFileManager<M> implements javax.tools.JavaFileManager
{
	/**
	* The file manager which all methods are delegated to.
	*/
	private var fileManager(default, null) : M;
	
	/**
	* Creates a new instance of ForwardingJavaFileManager.
	* @param fileManager delegate to this file manager
	*/
	@:overload private function new(fileManager : M) : Void;
	
	/**
	* @throws SecurityException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function getClassLoader(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.ClassLoader;
	
	/**
	* @throws IOException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function list(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, kinds : java.util.Set<javax.tools.JavaFileObject.JavaFileObject_Kind>, recurse : Bool) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function inferBinaryName(location : javax.tools.JavaFileManager.JavaFileManager_Location, file : javax.tools.JavaFileObject) : String;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function isSameFile(a : javax.tools.FileObject, b : javax.tools.FileObject) : Bool;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function handleOption(current : String, remaining : java.util.Iterator<String>) : Bool;
	
	@:overload public function hasLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : Bool;
	
	@:overload public function isSupportedOption(option : String) : Int;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function getJavaFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : javax.tools.JavaFileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function getJavaFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, className : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind, sibling : javax.tools.FileObject) : javax.tools.JavaFileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function getFileForInput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String) : javax.tools.FileObject;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	* @throws IllegalStateException {@inheritDoc}
	*/
	@:overload public function getFileForOutput(location : javax.tools.JavaFileManager.JavaFileManager_Location, packageName : String, relativeName : String, sibling : javax.tools.FileObject) : javax.tools.FileObject;
	
	@:overload public function flush() : Void;
	
	@:overload public function close() : Void;
	
	
}
