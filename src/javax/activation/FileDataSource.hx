package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class FileDataSource implements javax.activation.DataSource
{
	/**
	* Creates a FileDataSource from a File object. <i>Note:
	* The file will not actually be opened until a method is
	* called that requires the file to be opened.</i>
	*
	* @param file the file
	*/
	@:overload @:public public function new(file : java.io.File) : Void;
	
	/**
	* Creates a FileDataSource from
	* the specified path name. <i>Note:
	* The file will not actually be opened until a method is
	* called that requires the file to be opened.</i>
	*
	* @param name the system-dependent file name.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* This method will return an InputStream representing the
	* the data and will throw an IOException if it can
	* not do so. This method will return a new
	* instance of InputStream with each invocation.
	*
	* @return an InputStream
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* This method will return an OutputStream representing the
	* the data and will throw an IOException if it can
	* not do so. This method will return a new instance of
	* OutputStream with each invocation.
	*
	* @return an OutputStream
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	/**
	* This method returns the MIME type of the data in the form of a
	* string. This method uses the currently installed FileTypeMap. If
	* there is no FileTypeMap explictly set, the FileDataSource will
	* call the <code>getDefaultFileTypeMap</code> method on
	* FileTypeMap to acquire a default FileTypeMap. <i>Note: By
	* default, the FileTypeMap used will be a MimetypesFileTypeMap.</i>
	*
	* @return the MIME Type
	* @see javax.activation.FileTypeMap#getDefaultFileTypeMap
	*/
	@:overload @:public public function getContentType() : String;
	
	/**
	* Return the <i>name</i> of this object. The FileDataSource
	* will return the file name of the object.
	*
	* @return the name of the object.
	* @see javax.activation.DataSource
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the File object that corresponds to this FileDataSource.
	* @return the File object for the file represented by this object.
	*/
	@:overload @:public public function getFile() : java.io.File;
	
	/**
	* Set the FileTypeMap to use with this FileDataSource
	*
	* @param map The FileTypeMap for this object.
	*/
	@:overload @:public public function setFileTypeMap(map : javax.activation.FileTypeMap) : Void;
	
	
}
