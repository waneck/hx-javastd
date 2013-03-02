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
extern class FileTypeMap
{
	/**
	* The default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Return the type of the file object. This method should
	* always return a valid MIME type.
	*
	* @param file A file to be typed.
	* @return The content type.
	*/
	@:overload @:abstract public function getContentType(file : java.io.File) : String;
	
	/**
	* Return the type of the file passed in.  This method should
	* always return a valid MIME type.
	*
	* @param filename the pathname of the file.
	* @return The content type.
	*/
	@:overload @:abstract public function getContentType(filename : String) : String;
	
	/**
	* Sets the default FileTypeMap for the system. This instance
	* will be returned to callers of getDefaultFileTypeMap.
	*
	* @param map The FileTypeMap.
	* @exception SecurityException if the caller doesn't have permission
	*                                  to change the default
	*/
	@:overload public static function setDefaultFileTypeMap(map : javax.activation.FileTypeMap) : Void;
	
	/**
	* Return the default FileTypeMap for the system.
	* If setDefaultFileTypeMap was called, return
	* that instance, otherwise return an instance of
	* <code>MimetypesFileTypeMap</code>.
	*
	* @return The default FileTypeMap
	* @see javax.activation.FileTypeMap#setDefaultFileTypeMap
	*/
	@:overload public static function getDefaultFileTypeMap() : javax.activation.FileTypeMap;
	
	
}
