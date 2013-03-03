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
@:internal extern class AbstractAclFileAttributeView implements java.nio.file.attribute.AclFileAttributeView implements sun.nio.fs.DynamicFileAttributeView
{
	@:overload @:public @:final public function name() : String;
	
	@:overload @:public @:final public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload @:public @:final public function readAttributes(attributes : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	/**
	* Reads the access control list.
	*
	* <p> When the file system uses an ACL model that differs from the NFSv4
	* defined ACL model, then this method returns an ACL that is the translation
	* of the ACL to the NFSv4 ACL model.
	*
	* <p> The returned list is modifiable so as to facilitate changes to the
	* existing ACL. The {@link #setAcl setAcl} method is used to update
	* the file's ACL attribute.
	*
	* @return  an ordered list of {@link AclEntry entries} representing the
	*          ACL
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link RuntimePermission}<tt>("accessUserInformation")</tt>
	*          or its {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*/
	@:overload @:public public function getAcl() : java.util.List<java.nio.file.attribute.AclEntry>;
	
	/**
	* Read the file owner.
	*
	* <p> It it implementation specific if the file owner can be a {@link
	* GroupPrincipal group}.
	*
	* @return  the file owner
	*
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserInformation")</tt> or its
	*          {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*/
	@:overload @:public public function getOwner() : java.nio.file.attribute.UserPrincipal;
	
	/**
	* Updates the file owner.
	*
	* <p> It it implementation specific if the file owner can be a {@link
	* GroupPrincipal group}. To ensure consistent and correct behavior
	* across platforms it is recommended that this method should only be used
	* to set the file owner to a user principal that is not a group.
	*
	* @param   owner
	*          the new file owner
	*
	* @throws  IOException
	*          if an I/O error occurs, or the {@code owner} parameter is a
	*          group and this implementation does not support setting the owner
	*          to a group
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserInformation")</tt> or its
	*          {@link SecurityManager#checkWrite(String) checkWrite} method
	*          denies write access to the file.
	*/
	@:overload @:public public function setOwner(owner : java.nio.file.attribute.UserPrincipal) : Void;
	
	/**
	* Updates (replace) the access control list.
	*
	* <p> Where the file system supports Access Control Lists, and it uses an
	* ACL model that differs from the NFSv4 defined ACL model, then this method
	* must translate the ACL to the model supported by the file system. This
	* method should reject (by throwing {@link IOException IOException}) any
	* attempt to write an ACL that would appear to make the file more secure
	* than would be the case if the ACL were updated. Where an implementation
	* does not support a mapping of {@link AclEntryType#AUDIT} or {@link
	* AclEntryType#ALARM} entries, then this method ignores these entries when
	* writing the ACL.
	*
	* <p> If an ACL entry contains a {@link AclEntry#principal user-principal}
	* that is not associated with the same provider as this attribute view then
	* {@link ProviderMismatchException} is thrown. Additional validation, if
	* any, is implementation dependent.
	*
	* <p> If the file system supports other security related file attributes
	* (such as a file {@link PosixFileAttributes#permissions
	* access-permissions} for example), the updating the access control list
	* may also cause these security related attributes to be updated.
	*
	* @param   acl
	*          the new access control list
	*
	* @throws  IOException
	*          if an I/O error occurs or the ACL is invalid
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, it denies {@link RuntimePermission}<tt>("accessUserInformation")</tt>
	*          or its {@link SecurityManager#checkWrite(String) checkWrite}
	*          method denies write access to the file.
	*/
	@:overload @:public public function setAcl(acl : java.util.List<java.nio.file.attribute.AclEntry>) : Void;
	
	
}
