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
* An entry in an access control list (ACL).
*
* <p> The ACL entry represented by this class is based on the ACL model
* specified in <a href="http://www.ietf.org/rfc/rfc3530.txt"><i>RFC&nbsp;3530:
* Network File System (NFS) version 4 Protocol</i></a>. Each entry has four
* components as follows:
*
* <ol>
*    <li><p> The {@link #type() type} component determines if the entry
*    grants or denies access. </p></li>
*
*    <li><p> The {@link #principal() principal} component, sometimes called the
*    "who" component, is a {@link UserPrincipal} corresponding to the identity
*    that the entry grants or denies access
*    </p></li>
*
*    <li><p> The {@link #permissions permissions} component is a set of
*    {@link AclEntryPermission permissions}
*    </p></li>
*
*    <li><p> The {@link #flags flags} component is a set of {@link AclEntryFlag
*    flags} to indicate how entries are inherited and propagated </p></li>
* </ol>
*
* <p> ACL entries are created using an associated {@link Builder} object by
* invoking its {@link Builder#build build} method.
*
* <p> ACL entries are immutable and are safe for use by multiple concurrent
* threads.
*
* @since 1.7
*/
@:require(java7) extern class AclEntry
{
	/**
	* Constructs a new builder. The initial value of the type and who
	* components is {@code null}. The initial value of the permissions and
	* flags components is the empty set.
	*
	* @return  a new builder
	*/
	@:overload public static function newBuilder() : AclEntry_Builder;
	
	/**
	* Constructs a new builder with the components of an existing ACL entry.
	*
	* @param   entry
	*          an ACL entry
	*
	* @return  a new builder
	*/
	@:overload public static function newBuilder(entry : AclEntry) : AclEntry_Builder;
	
	/**
	* Returns the ACL entry type.
	*/
	@:overload public function type() : java.nio.file.attribute.AclEntryType;
	
	/**
	* Returns the principal component.
	*/
	@:overload public function principal() : java.nio.file.attribute.UserPrincipal;
	
	/**
	* Returns a copy of the permissions component.
	*
	* <p> The returned set is a modifiable copy of the permissions.
	*/
	@:overload public function permissions() : java.util.Set<java.nio.file.attribute.AclEntryPermission>;
	
	/**
	* Returns a copy of the flags component.
	*
	* <p> The returned set is a modifiable copy of the flags.
	*/
	@:overload public function flags() : java.util.Set<java.nio.file.attribute.AclEntryFlag>;
	
	/**
	* Compares the specified object with this ACL entry for equality.
	*
	* <p> If the given object is not an {@code AclEntry} then this method
	* immediately returns {@code false}.
	*
	* <p> For two ACL entries to be considered equals requires that they are
	* both the same type, their who components are equal, their permissions
	* components are equal, and their flags components are equal.
	*
	* <p> This method satisfies the general contract of the {@link
	* java.lang.Object#equals(Object) Object.equals} method. </p>
	*
	* @param   ob   the object to which this object is to be compared
	*
	* @return  {@code true} if, and only if, the given object is an AclEntry that
	*          is identical to this AclEntry
	*/
	@:overload public function equals(ob : Dynamic) : Bool;
	
	/**
	* Returns the hash-code value for this ACL entry.
	*
	* <p> This method satisfies the general contract of the {@link
	* Object#hashCode} method.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the string representation of this ACL entry.
	*
	* @return  the string representation of this entry
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A builder of {@link AclEntry} objects.
*
* <p> A {@code Builder} object is obtained by invoking one of the {@link
* AclEntry#newBuilder newBuilder} methods defined by the {@code AclEntry}
* class.
*
* <p> Builder objects are mutable and are not safe for use by multiple
* concurrent threads without appropriate synchronization.
*
* @since 1.7
*/
@:require(java7) @:native('java$nio$file$attribute$AclEntry$Builder') extern class AclEntry_Builder
{
	/**
	* Constructs an {@link AclEntry} from the components of this builder.
	* The type and who components are required to have been set in order
	* to construct an {@code AclEntry}.
	*
	* @return  a new ACL entry
	*
	* @throws  IllegalStateException
	*          if the type or who component have not been set
	*/
	@:overload public function build() : AclEntry;
	
	/**
	* Sets the type component of this builder.
	*
	* @return  this builder
	*/
	@:overload public function setType(type : java.nio.file.attribute.AclEntryType) : AclEntry_Builder;
	
	/**
	* Sets the principal component of this builder.
	*
	* @return  this builder
	*/
	@:overload public function setPrincipal(who : java.nio.file.attribute.UserPrincipal) : AclEntry_Builder;
	
	/**
	* Sets the permissions component of this builder. On return, the
	* permissions component of this builder is a copy of the given set.
	*
	* @return  this builder
	*
	* @throws  ClassCastException
	*          if the set contains elements that are not of type {@code
	*          AclEntryPermission}
	*/
	@:overload public function setPermissions(perms : java.util.Set<java.nio.file.attribute.AclEntryPermission>) : AclEntry_Builder;
	
	/**
	* Sets the permissions component of this builder. On return, the
	* permissions component of this builder is a copy of the permissions in
	* the given array.
	*
	* @return  this builder
	*/
	@:overload public function setPermissions(perms : java.NativeArray<java.nio.file.attribute.AclEntryPermission>) : AclEntry_Builder;
	
	/**
	* Sets the flags component of this builder. On return, the flags
	* component of this builder is a copy of the given set.
	*
	* @return  this builder
	*
	* @throws  ClassCastException
	*          if the set contains elements that are not of type {@code
	*          AclEntryFlag}
	*/
	@:overload public function setFlags(flags : java.util.Set<java.nio.file.attribute.AclEntryFlag>) : AclEntry_Builder;
	
	/**
	* Sets the flags component of this builder. On return, the flags
	* component of this builder is a copy of the flags in the given
	* array.
	*
	* @return  this builder
	*/
	@:overload public function setFlags(flags : java.NativeArray<java.nio.file.attribute.AclEntryFlag>) : AclEntry_Builder;
	
	
}
