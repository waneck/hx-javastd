package sun.security.x509;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class represents the OtherName as required by the GeneralNames
* ASN.1 object. It supplies the generic framework to allow specific
* Other Name types, and also provides minimal support for unrecognized
* Other Name types.
*
* The ASN.1 definition for OtherName is:
* <pre>
* OtherName ::= SEQUENCE {
*     type-id    OBJECT IDENTIFIER,
*     value      [0] EXPLICIT ANY DEFINED BY type-id
* }
* </pre>
* @author Hemma Prafullchandra
*/
extern class OtherName implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the OtherName object from a passed ObjectIdentfier and
	* byte array name value
	*
	* @param oid ObjectIdentifier of this OtherName object
	* @param value the DER-encoded value of the OtherName
	* @throws IOException on error
	*/
	@:overload @:public public function new(oid : sun.security.util.ObjectIdentifier, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create the OtherName object from the passed encoded Der value.
	*
	* @param derValue the encoded DER OtherName.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Get ObjectIdentifier
	*/
	@:overload @:public public function getOID() : sun.security.util.ObjectIdentifier;
	
	/**
	* Get name value
	*/
	@:overload @:public public function getNameValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Encode the Other name into the DerOutputStream.
	*
	* @param out the DER stream to encode the Other-Name to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Compares this name with another, for equality.
	*
	* @return true iff the names are identical.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this OtherName.
	*
	* @return a hash code value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Convert the name into user readable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return type of constraint inputName places on this name:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name
	*       (i.e. does not constrain).
	*   <li>NAME_MATCH = 0: input name matches name.
	*   <li>NAME_NARROWS = 1: input name narrows name (is lower in the
	*       naming subtree)
	*   <li>NAME_WIDENS = 2: input name widens name (is higher in the
	*       naming subtree)
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name,
	*       but is same type.
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	*
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is same type, but
	*         comparison operations are not supported for this name type.
	*/
	@:overload @:public public function constrains(inputName : sun.security.x509.GeneralNameInterface) : Int;
	
	/**
	* Return subtree depth of this name for purposes of determining
	* NameConstraints minimum and maximum bounds.
	*
	* @returns distance of name from root
	* @throws UnsupportedOperationException if not supported for this name type
	*/
	@:overload @:public public function subtreeDepth() : Int;
	
	
}
