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
extern interface PosixFileAttributeView extends java.nio.file.attribute.BasicFileAttributeView extends java.nio.file.attribute.FileOwnerAttributeView
{
	/**
	* Returns the name of the attribute view. Attribute views of this type
	* have the name {@code "posix"}.
	*/
	@:overload public function name() : String;
	
	/**
	* @throws  IOException                {@inheritDoc}
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link RuntimePermission}<tt>("accessUserInformation")</tt>
	*          or its {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*/
	@:overload public function readAttributes() : java.nio.file.attribute.PosixFileAttributes;
	
	/**
	* Updates the file permissions.
	*
	* @param   perms
	*          the new set of permissions
	*
	* @throws  ClassCastException
	*          if the sets contains elements that are not of type {@code
	*          PosixFilePermission}
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link RuntimePermission}<tt>("accessUserInformation")</tt>
	*          or its {@link SecurityManager#checkWrite(String) checkWrite}
	*          method denies write access to the file.
	*/
	@:overload public function setPermissions(perms : java.util.Set<java.nio.file.attribute.PosixFilePermission>) : Void;
	
	/**
	* Updates the file group-owner.
	*
	* @param   group
	*          the new file group-owner
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, it denies {@link RuntimePermission}<tt>("accessUserInformation")</tt>
	*          or its {@link SecurityManager#checkWrite(String) checkWrite}
	*          method denies write access to the file.
	*/
	@:overload public function setGroup(group : java.nio.file.attribute.GroupPrincipal) : Void;
	
	
}
