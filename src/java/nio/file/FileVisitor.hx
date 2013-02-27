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
extern interface FileVisitor<T>
{
	/**
	* Invoked for a directory before entries in the directory are visited.
	*
	* <p> If this method returns {@link FileVisitResult#CONTINUE CONTINUE},
	* then entries in the directory are visited. If this method returns {@link
	* FileVisitResult#SKIP_SUBTREE SKIP_SUBTREE} or {@link
	* FileVisitResult#SKIP_SIBLINGS SKIP_SIBLINGS} then entries in the
	* directory (and any descendants) will not be visited.
	*
	* @param   dir
	*          a reference to the directory
	* @param   attrs
	*          the directory's basic attributes
	*
	* @return  the visit result
	*
	* @throws  IOException
	*          if an I/O error occurs
	*/
	@:overload public function preVisitDirectory(dir : T, attrs : java.nio.file.attribute.BasicFileAttributes) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a file in a directory.
	*
	* @param   file
	*          a reference to the file
	* @param   attrs
	*          the file's basic attributes
	*
	* @return  the visit result
	*
	* @throws  IOException
	*          if an I/O error occurs
	*/
	@:overload public function visitFile(file : T, attrs : java.nio.file.attribute.BasicFileAttributes) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a file that could not be visited. This method is invoked
	* if the file's attributes could not be read, the file is a directory
	* that could not be opened, and other reasons.
	*
	* @param   file
	*          a reference to the file
	* @param   exc
	*          the I/O exception that prevented the file from being visited
	*
	* @return  the visit result
	*
	* @throws  IOException
	*          if an I/O error occurs
	*/
	@:overload public function visitFileFailed(file : T, exc : java.io.IOException) : java.nio.file.FileVisitResult;
	
	/**
	* Invoked for a directory after entries in the directory, and all of their
	* descendants, have been visited. This method is also invoked when iteration
	* of the directory completes prematurely (by a {@link #visitFile visitFile}
	* method returning {@link FileVisitResult#SKIP_SIBLINGS SKIP_SIBLINGS},
	* or an I/O error when iterating over the directory).
	*
	* @param   dir
	*          a reference to the directory
	* @param   exc
	*          {@code null} if the iteration of the directory completes without
	*          an error; otherwise the I/O exception that caused the iteration
	*          of the directory to complete prematurely
	*
	* @return  the visit result
	*
	* @throws  IOException
	*          if an I/O error occurs
	*/
	@:overload public function postVisitDirectory(dir : T, exc : java.io.IOException) : java.nio.file.FileVisitResult;
	
	
}
