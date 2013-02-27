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
extern class MimetypesFileTypeMap extends javax.activation.FileTypeMap
{
	/**
	* The default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a MimetypesFileTypeMap with programmatic entries
	* added from the named file.
	*
	* @param mimeTypeFileName  the file name
	*/
	@:overload public function new(mimeTypeFileName : String) : Void;
	
	/**
	* Construct a MimetypesFileTypeMap with programmatic entries
	* added from the InputStream.
	*
	* @param is        the input stream to read from
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Prepend the MIME type values to the registry.
	*
	* @param mime_types A .mime.types formatted string of entries.
	*/
	@:overload @:synchronized public function addMimeTypes(mime_types : String) : Void;
	
	/**
	* Return the MIME type of the file object.
	* The implementation in this class calls
	* <code>getContentType(f.getName())</code>.
	*
	* @param f the file
	* @return  the file's MIME type
	*/
	@:overload override public function getContentType(f : java.io.File) : String;
	
	/**
	* Return the MIME type based on the specified file name.
	* The MIME type entries are searched as described above under
	* <i>MIME types file search order</i>.
	* If no entry is found, the type "application/octet-stream" is returned.
	*
	* @param filename  the file name
	* @return          the file's MIME type
	*/
	@:overload @:synchronized override public function getContentType(filename : String) : String;
	
	
}
