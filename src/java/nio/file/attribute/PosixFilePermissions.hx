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
/**
* This class consists exclusively of static methods that operate on sets of
* {@link PosixFilePermission} objects.
*
* @since 1.7
*/
@:require(java7) extern class PosixFilePermissions
{
	/**
	* Returns the {@code String} representation of a set of permissions. It
	* is guaranteed that the returned {@code String} can be parsed by the
	* {@link #fromString} method.
	*
	* <p> If the set contains {@code null} or elements that are not of type
	* {@code PosixFilePermission} then these elements are ignored.
	*
	* @param   perms
	*          the set of permissions
	*
	* @return  the string representation of the permission set
	*/
	@:overload public static function toString(perms : java.util.Set<java.nio.file.attribute.PosixFilePermission>) : String;
	
	/**
	* Returns the set of permissions corresponding to a given {@code String}
	* representation.
	*
	* <p> The {@code perms} parameter is a {@code String} representing the
	* permissions. It has 9 characters that are interpreted as three sets of
	* three. The first set refers to the owner's permissions; the next to the
	* group permissions and the last to others. Within each set, the first
	* character is {@code 'r'} to indicate permission to read, the second
	* character is {@code 'w'} to indicate permission to write, and the third
	* character is {@code 'x'} for execute permission. Where a permission is
	* not set then the corresponding character is set to {@code '-'}.
	*
	* <p> <b>Usage Example:</b>
	* Suppose we require the set of permissions that indicate the owner has read,
	* write, and execute permissions, the group has read and execute permissions
	* and others have none.
	* <pre>
	*   Set&lt;PosixFilePermission&gt; perms = PosixFilePermissions.fromString("rwxr-x---");
	* </pre>
	*
	* @param   perms
	*          string representing a set of permissions
	*
	* @return  the resulting set of permissions
	*
	* @throws  IllegalArgumentException
	*          if the string cannot be converted to a set of permissions
	*
	* @see #toString(Set)
	*/
	@:overload public static function fromString(perms : String) : java.util.Set<java.nio.file.attribute.PosixFilePermission>;
	
	/**
	* Creates a {@link FileAttribute}, encapsulating a copy of the given file
	* permissions, suitable for passing to the {@link java.nio.file.Files#createFile
	* createFile} or {@link java.nio.file.Files#createDirectory createDirectory}
	* methods.
	*
	* @param   perms
	*          the set of permissions
	*
	* @return  an attribute encapsulating the given file permissions with
	*          {@link FileAttribute#name name} {@code "posix:permissions"}
	*
	* @throws  ClassCastException
	*          if the set contains elements that are not of type {@code
	*          PosixFilePermission}
	*/
	@:overload public static function asFileAttribute(perms : java.util.Set<java.nio.file.attribute.PosixFilePermission>) : java.nio.file.attribute.FileAttribute<java.util.Set<java.nio.file.attribute.PosixFilePermission>>;
	
	
}
