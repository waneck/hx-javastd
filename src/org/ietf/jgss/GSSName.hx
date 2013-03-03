package org.ietf.jgss;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface GSSName
{
	/**
	* Compares two <code>GSSName</code> objects to determine if they refer to the
	* same entity.
	*
	* @param another the <code>GSSName</code> to compare this name with
	* @return true if the two names contain at least one primitive element
	* in common. If either of the names represents an anonymous entity, the
	* method will return false.
	*
	* @throws GSSException when the names cannot be compared, containing the following
	* major error codes:
	*         {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public public function equals(another : org.ietf.jgss.GSSName) : Bool;
	
	/**
	* Creates a name that is canonicalized for some
	* mechanism.
	*
	* @return a <code>GSSName</code> that contains just one primitive
	* element representing this name in a canonicalized form for the desired
	* mechanism.
	* @param mech the oid for the mechanism for which the canonical form of
	* the name is requested.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_MECH GSSException.BAD_MECH},
	*         {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*         {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public public function canonicalize(mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* Returns a canonical contiguous byte representation of a mechanism name
	* (MN), suitable for direct, byte by byte comparison by authorization
	* functions.  If the name is not an MN, implementations may throw a
	* GSSException with the NAME_NOT_MN status code.  If an implementation
	* chooses not to throw an exception, it should use some system specific
	* default mechanism to canonicalize the name and then export
	* it. Structurally, an exported name object consists of a header
	* containing an OID identifying the mechanism that authenticated the
	* name, and a trailer containing the name itself, where the syntax of
	* the trailer is defined by the individual mechanism specification. The
	* format of the header of the output buffer is specified in RFC 2743.<p>
	*
	* The exported name is useful when used in large access control lists
	* where the overhead of creating a <code>GSSName</code> object on each
	* name and invoking the equals method on each name from the ACL may be
	* prohibitive.<p>
	*
	* Exported names may be re-imported by using the byte array factory
	* method {@link GSSManager#createName(byte[], Oid)
	* GSSManager.createName} and specifying the NT_EXPORT_NAME as the name
	* type object identifier. The resulting <code>GSSName</code> name will
	* also be a MN.<p>
	* @return a byte[] containing the exported name. RFC 2743 defines the
	* "Mechanism-Independent Exported Name Object Format" for these bytes.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#BAD_NAME GSSException.BAD_NAME},
	*         {@link GSSException#BAD_NAMETYPE GSSException.BAD_NAMETYPE},
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the name type of the printable
	* representation of this name that can be obtained from the <code>
	* toString</code> method.
	*
	* @return an Oid representing the namespace of the name returned
	* from the toString method.
	*
	* @throws GSSException containing the following
	* major error codes:
	*         {@link GSSException#FAILURE GSSException.FAILURE}
	*/
	@:overload @:public public function getStringNameType() : org.ietf.jgss.Oid;
	
	/**
	* Tests if this name object represents an anonymous entity.
	*
	* @return true if this is an anonymous name, false otherwise.
	*/
	@:overload @:public public function isAnonymous() : Bool;
	
	/**
	* Tests if this name object represents a Mechanism Name (MN). An MN is
	* a GSSName the contains exactly one mechanism's primitive name
	* element.
	*
	* @return true if this is an MN, false otherwise.
	*/
	@:overload @:public public function isMN() : Bool;
	
	
}
