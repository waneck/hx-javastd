package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractBasicFileAttributeView implements java.nio.file.attribute.BasicFileAttributeView implements sun.nio.fs.DynamicFileAttributeView
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload @:public public function readAttributes(requested : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	/**
	* Updates any or all of the file's last modified time, last access time,
	* and create time attributes.
	*
	* <p> This method updates the file's timestamp attributes. The values are
	* converted to the epoch and precision supported by the file system.
	* Converting from finer to coarser granularities result in precision loss.
	* The behavior of this method when attempting to set a timestamp that is
	* not supported or to a value that is outside the range supported by the
	* underlying file store is not defined. It may or not fail by throwing an
	* {@code IOException}.
	*
	* <p> If any of the {@code lastModifiedTime}, {@code lastAccessTime},
	* or {@code createTime} parameters has the value {@code null} then the
	* corresponding timestamp is not changed. An implementation may require to
	* read the existing values of the file attributes when only some, but not
	* all, of the timestamp attributes are updated. Consequently, this method
	* may not be an atomic operation with respect to other file system
	* operations. Reading and re-writing existing values may also result in
	* precision loss. If all of the {@code lastModifiedTime}, {@code
	* lastAccessTime} and {@code createTime} parameters are {@code null} then
	* this method has no effect.
	*
	* <p> <b>Usage Example:</b>
	* Suppose we want to change a file's creation time.
	* <pre>
	*    Path path = ...
	*    FileTime time = ...
	*    Files.getFileAttributeView(path, BasicFileAttributeView.class).setTimes(null, null, time);
	* </pre>
	*
	* @param   lastModifiedTime
	*          the new last modified time, or {@code null} to not change the
	*          value
	* @param   lastAccessTime
	*          the last access time, or {@code null} to not change the value
	* @param   createTime
	*          the file's create time, or {@code null} to not change the value
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, its  {@link SecurityManager#checkWrite(String) checkWrite}
	*          method is invoked to check write access to the file
	*
	* @see java.nio.file.Files#setLastModifiedTime
	*/
	@:overload @:public public function setTimes(lastModifiedTime : java.nio.file.attribute.FileTime, lastAccessTime : java.nio.file.attribute.FileTime, createTime : java.nio.file.attribute.FileTime) : Void;
	
	/**
	* Reads the basic file attributes as a bulk operation.
	*
	* <p> It is implementation specific if all file attributes are read as an
	* atomic operation with respect to other file system operations.
	*
	* @return  the file attributes
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, its {@link SecurityManager#checkRead(String) checkRead}
	*          method is invoked to check read access to the file
	*/
	@:overload @:public public function readAttributes() : java.nio.file.attribute.BasicFileAttributes;
	
	
}
/**
* Used to build a map of attribute name/values.
*/
@:native('sun$nio$fs$AbstractBasicFileAttributeView$AttributesBuilder') @:internal extern class AbstractBasicFileAttributeView_AttributesBuilder
{
	
}
