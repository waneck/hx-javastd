package sun.security.jgss;
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
extern class GSSNameImpl implements org.ietf.jgss.GSSName
{
	@:overload public function canonicalize(mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* This method may return false negatives. But if it says two
	* names are equals, then there is some mechanism that
	* authenticates them as the same principal.
	*/
	@:overload public function equals(other : org.ietf.jgss.GSSName) : Bool;
	
	/**
	* Returns a hashcode value for this GSSName.
	*
	* @return a hashCode value
	*/
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(another : Dynamic) : Bool;
	
	/**
	* Returns a flat name representation for this object. The name
	* format is defined in RFC 2743:
	*<pre>
	* Length           Name          Description
	* 2               TOK_ID          Token Identifier
	*                                 For exported name objects, this
	*                                 must be hex 04 01.
	* 2               MECH_OID_LEN    Length of the Mechanism OID
	* MECH_OID_LEN    MECH_OID        Mechanism OID, in DER
	* 4               NAME_LEN        Length of name
	* NAME_LEN        NAME            Exported name; format defined in
	*                                 applicable mechanism draft.
	*</pre>
	*
	* Note that it is not required to canonicalize a name before
	* calling export(). i.e., the name need not be an MN. If it is
	* not an MN, an implementation defined algorithm can be used for
	* choosing the mechanism which should export this name.
	*
	* @return the flat name representation for this object
	* @exception GSSException with major codes NAME_NOT_MN, BAD_NAME,
	*  BAD_NAME, FAILURE.
	*/
	@:overload public function export() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function toString() : String;
	
	@:overload public function getStringNameType() : org.ietf.jgss.Oid;
	
	@:overload public function isAnonymous() : Bool;
	
	@:overload public function isMN() : Bool;
	
	@:overload @:synchronized public function getElement(mechOid : org.ietf.jgss.Oid) : sun.security.jgss.spi.GSSNameSpi;
	
	
}
