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
extern interface SecureDirectoryStream<T> extends java.nio.file.DirectoryStream<T>
{
	/**
	* Opens the directory identified by the given path, returning a {@code
	* SecureDirectoryStream} to iterate over the entries in the directory.
	*
	* <p> This method works in exactly the manner specified by the {@link
	* Files#newDirectoryStream(Path) newDirectoryStream} method for the case that
	* the {@code path} parameter is an {@link Path#isAbsolute absolute} path.
	* When the parameter is a relative path then the directory to open is
	* relative to this open directory. The {@link
	* LinkOption#NOFOLLOW_LINKS NOFOLLOW_LINKS} option may be used to
	* ensure that this method fails if the file is a symbolic link.
	*
	* <p> The new directory stream, once created, is not dependent upon the
	* directory stream used to create it. Closing this directory stream has no
	* effect upon newly created directory stream.
	*
	* @param   path
	*          the path to the directory to open
	* @param   options
	*          options indicating how symbolic links are handled
	*
	* @return  a new and open {@code SecureDirectoryStream} object
	*
	* @throws  ClosedDirectoryStreamException
	*          if the directory stream is closed
	* @throws  NotDirectoryException
	*          if the file could not otherwise be opened because it is not
	*          a directory <i>(optional specific exception)</i>
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, the {@link SecurityManager#checkRead(String) checkRead}
	*          method is invoked to check read access to the directory.
	*/
	@:overload public function newDirectoryStream(path : T, options : java.NativeArray<java.nio.file.LinkOption>) : SecureDirectoryStream<T>;
	
	/**
	* Opens or creates a file in this directory, returning a seekable byte
	* channel to access the file.
	*
	* <p> This method works in exactly the manner specified by the {@link
	* Files#newByteChannel Files.newByteChannel} method for the
	* case that the {@code path} parameter is an {@link Path#isAbsolute absolute}
	* path. When the parameter is a relative path then the file to open or
	* create is relative to this open directory. In addition to the options
	* defined by the {@code Files.newByteChannel} method, the {@link
	* LinkOption#NOFOLLOW_LINKS NOFOLLOW_LINKS} option may be used to
	* ensure that this method fails if the file is a symbolic link.
	*
	* <p> The channel, once created, is not dependent upon the directory stream
	* used to create it. Closing this directory stream has no effect upon the
	* channel.
	*
	* @param   path
	*          the path of the file to open open or create
	* @param   options
	*          options specifying how the file is opened
	* @param   attrs
	*          an optional list of attributes to set atomically when creating
	*          the file
	*
	* @throws  ClosedDirectoryStreamException
	*          if the directory stream is closed
	* @throws  IllegalArgumentException
	*          if the set contains an invalid combination of options
	* @throws  UnsupportedOperationException
	*          if an unsupported open option is specified or the array contains
	*          attributes that cannot be set atomically when creating the file
	* @throws  FileAlreadyExistsException
	*          if a file of that name already exists and the {@link
	*          StandardOpenOption#CREATE_NEW CREATE_NEW} option is specified
	*          <i>(optional specific exception)</i>
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, the {@link SecurityManager#checkRead(String) checkRead}
	*          method is invoked to check read access to the path if the file
	*          is opened for reading. The {@link SecurityManager#checkWrite(String)
	*          checkWrite} method is invoked to check write access to the path
	*          if the file is opened for writing.
	*/
	@:overload public function newByteChannel(path : T, options : java.util.Set<java.nio.file.OpenOption>, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.SeekableByteChannel;
	
	/**
	* Deletes a file.
	*
	* <p> Unlike the {@link Files#delete delete()} method, this method does
	* not first examine the file to determine if the file is a directory.
	* Whether a directory is deleted by this method is system dependent and
	* therefore not specified. If the file is a symbolic link, then the link
	* itself, not the final target of the link, is deleted. When the
	* parameter is a relative path then the file to delete is relative to
	* this open directory.
	*
	* @param   path
	*          the path of the file to delete
	*
	* @throws  ClosedDirectoryStreamException
	*          if the directory stream is closed
	* @throws  NoSuchFileException
	*          if the file does not exist <i>(optional specific exception)</i>
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, the {@link SecurityManager#checkDelete(String) checkDelete}
	*          method is invoked to check delete access to the file
	*/
	@:overload public function deleteFile(path : T) : Void;
	
	/**
	* Deletes a directory.
	*
	* <p> Unlike the {@link Files#delete delete()} method, this method
	* does not first examine the file to determine if the file is a directory.
	* Whether non-directories are deleted by this method is system dependent and
	* therefore not specified. When the parameter is a relative path then the
	* directory to delete is relative to this open directory.
	*
	* @param   path
	*          the path of the directory to delete
	*
	* @throws  ClosedDirectoryStreamException
	*          if the directory stream is closed
	* @throws  NoSuchFileException
	*          if the directory does not exist <i>(optional specific exception)</i>
	* @throws  DirectoryNotEmptyException
	*          if the directory could not otherwise be deleted because it is
	*          not empty <i>(optional specific exception)</i>
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, the {@link SecurityManager#checkDelete(String) checkDelete}
	*          method is invoked to check delete access to the directory
	*/
	@:overload public function deleteDirectory(path : T) : Void;
	
	/**
	* Move a file from this directory to another directory.
	*
	* <p> This method works in a similar manner to {@link Files#move move}
	* method when the {@link StandardCopyOption#ATOMIC_MOVE ATOMIC_MOVE} option
	* is specified. That is, this method moves a file as an atomic file system
	* operation. If the {@code srcpath} parameter is an {@link Path#isAbsolute
	* absolute} path then it locates the source file. If the parameter is a
	* relative path then it is located relative to this open directory. If
	* the {@code targetpath} parameter is absolute then it locates the target
	* file (the {@code targetdir} parameter is ignored). If the parameter is
	* a relative path it is located relative to the open directory identified
	* by the {@code targetdir} parameter. In all cases, if the target file
	* exists then it is implementation specific if it is replaced or this
	* method fails.
	*
	* @param   srcpath
	*          the name of the file to move
	* @param   targetdir
	*          the destination directory
	* @param   targetpath
	*          the name to give the file in the destination directory
	*
	* @throws  ClosedDirectoryStreamException
	*          if this or the target directory stream is closed
	* @throws  FileAlreadyExistsException
	*          if the file already exists in the target directory and cannot
	*          be replaced <i>(optional specific exception)</i>
	* @throws  AtomicMoveNotSupportedException
	*          if the file cannot be moved as an atomic file system operation
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, the {@link SecurityManager#checkWrite(String) checkWrite}
	*          method is invoked to check write access to both the source and
	*          target file.
	*/
	@:overload public function move(srcpath : T, targetdir : SecureDirectoryStream<T>, targetpath : T) : Void;
	
	/**
	* Returns a new file attribute view to access the file attributes of this
	* directory.
	*
	* <p> The resulting file attribute view can be used to read or update the
	* attributes of this (open) directory. The {@code type} parameter specifies
	* the type of the attribute view and the method returns an instance of that
	* type if supported. Invoking this method to obtain a {@link
	* BasicFileAttributeView} always returns an instance of that class that is
	* bound to this open directory.
	*
	* <p> The state of resulting file attribute view is intimately connected
	* to this directory stream. Once the directory stream is {@link #close closed},
	* then all methods to read or update attributes will throw {@link
	* ClosedDirectoryStreamException ClosedDirectoryStreamException}.
	*
	* @param   type
	*          the {@code Class} object corresponding to the file attribute view
	*
	* @return  a new file attribute view of the specified type bound to
	*          this directory stream, or {@code null} if the attribute view
	*          type is not available
	*/
	@:overload public function getFileAttributeView<V : java.nio.file.attribute.FileAttributeView>(type : Class<V>) : V;
	
	/**
	* Returns a new file attribute view to access the file attributes of a file
	* in this directory.
	*
	* <p> The resulting file attribute view can be used to read or update the
	* attributes of file in this directory. The {@code type} parameter specifies
	* the type of the attribute view and the method returns an instance of that
	* type if supported. Invoking this method to obtain a {@link
	* BasicFileAttributeView} always returns an instance of that class that is
	* bound to the file in the directory.
	*
	* <p> The state of resulting file attribute view is intimately connected
	* to this directory stream. Once the directory stream {@link #close closed},
	* then all methods to read or update attributes will throw {@link
	* ClosedDirectoryStreamException ClosedDirectoryStreamException}. The
	* file is not required to exist at the time that the file attribute view
	* is created but methods to read or update attributes of the file will
	* fail when invoked and the file does not exist.
	*
	* @param   path
	*          the path of the file
	* @param   type
	*          the {@code Class} object corresponding to the file attribute view
	* @param   options
	*          options indicating how symbolic links are handled
	*
	* @return  a new file attribute view of the specified type bound to a
	*          this directory stream, or {@code null} if the attribute view
	*          type is not available
	*
	*/
	@:overload public function getFileAttributeView<V : java.nio.file.attribute.FileAttributeView>(path : T, type : Class<V>, options : java.NativeArray<java.nio.file.LinkOption>) : V;
	
	
}
