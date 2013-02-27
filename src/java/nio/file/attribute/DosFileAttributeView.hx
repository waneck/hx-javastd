package java.nio.file.attribute;
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
extern interface DosFileAttributeView extends java.nio.file.attribute.BasicFileAttributeView
{
	/**
	* Returns the name of the attribute view. Attribute views of this type
	* have the name {@code "dos"}.
	*/
	@:overload public function name() : String;
	
	/**
	* @throws  IOException                             {@inheritDoc}
	* @throws  SecurityException                       {@inheritDoc}
	*/
	@:overload public function readAttributes() : java.nio.file.attribute.DosFileAttributes;
	
	/**
	* Updates the value of the read-only attribute.
	*
	* <p> It is implementation specific if the attribute can be updated as an
	* atomic operation with respect to other file system operations. An
	* implementation may, for example, require to read the existing value of
	* the DOS attribute in order to update this attribute.
	*
	* @param   value
	*          the new value of the attribute
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default, and a security manager is installed,
	*          its  {@link SecurityManager#checkWrite(String) checkWrite} method
	*          is invoked to check write access to the file
	*/
	@:overload public function setReadOnly(value : Bool) : Void;
	
	/**
	* Updates the value of the hidden attribute.
	*
	* <p> It is implementation specific if the attribute can be updated as an
	* atomic operation with respect to other file system operations. An
	* implementation may, for example, require to read the existing value of
	* the DOS attribute in order to update this attribute.
	*
	* @param   value
	*          the new value of the attribute
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default, and a security manager is installed,
	*          its  {@link SecurityManager#checkWrite(String) checkWrite} method
	*          is invoked to check write access to the file
	*/
	@:overload public function setHidden(value : Bool) : Void;
	
	/**
	* Updates the value of the system attribute.
	*
	* <p> It is implementation specific if the attribute can be updated as an
	* atomic operation with respect to other file system operations. An
	* implementation may, for example, require to read the existing value of
	* the DOS attribute in order to update this attribute.
	*
	* @param   value
	*          the new value of the attribute
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default, and a security manager is installed,
	*          its  {@link SecurityManager#checkWrite(String) checkWrite} method
	*          is invoked to check write access to the file
	*/
	@:overload public function setSystem(value : Bool) : Void;
	
	/**
	* Updates the value of the archive attribute.
	*
	* <p> It is implementation specific if the attribute can be updated as an
	* atomic operation with respect to other file system operations. An
	* implementation may, for example, require to read the existing value of
	* the DOS attribute in order to update this attribute.
	*
	* @param   value
	*          the new value of the attribute
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default, and a security manager is installed,
	*          its  {@link SecurityManager#checkWrite(String) checkWrite} method
	*          is invoked to check write access to the file
	*/
	@:overload public function setArchive(value : Bool) : Void;
	
	
}
