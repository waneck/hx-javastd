package java.nio.file;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleFileVisitor<T> implements java.nio.file.FileVisitor<T>
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Invoked for a directory before entries in the directory are visited.
	*
	* <p> Unless overridden, this method returns {@link FileVisitResult#CONTINUE
	* CONTINUE}.
	*/
	@:overload @:public public function preVisitDirectory(dir : T, attrs : java.nio.file.attribute.BasicFileAttributes) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a file in a directory.
	*
	* <p> Unless overridden, this method returns {@link FileVisitResult#CONTINUE
	* CONTINUE}.
	*/
	@:overload @:public public function visitFile(file : T, attrs : java.nio.file.attribute.BasicFileAttributes) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a file that could not be visited.
	*
	* <p> Unless overridden, this method re-throws the I/O exception that prevented
	* the file from being visited.
	*/
	@:overload @:public public function visitFileFailed(file : T, exc : java.io.IOException) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a directory after entries in the directory, and all of their
	* descendants, have been visited.
	*
	* <p> Unless overridden, this method returns {@link FileVisitResult#CONTINUE
	* CONTINUE} if the directory iteration completes without an I/O exception;
	* otherwise this method re-throws the I/O exception that caused the iteration
	* of the directory to terminate prematurely.
	*/
	@:overload @:public public function postVisitDirectory(dir : T, exc : java.io.IOException) : java.nio.file.FileVisitResult;
	
	
}
