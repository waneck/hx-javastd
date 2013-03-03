package sun.security.x509;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the RFC822Name as required by the GeneralNames
* ASN.1 object.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see GeneralName
* @see GeneralNames
* @see GeneralNameInterface
*/
extern class RFC822Name implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the RFC822Name object from the passed encoded Der value.
	*
	* @param derValue the encoded DER RFC822Name.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Create the RFC822Name object with the specified name.
	*
	* @param name the RFC822Name.
	* @throws IOException on invalid input name
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Parse an RFC822Name string to see if it is a valid
	* addr-spec according to IETF RFC822 and RFC2459:
	* [local-part@]domain
	* <p>
	* local-part@ could be empty for an RFC822Name NameConstraint,
	* but the domain at least must be non-empty.  Case is not
	* significant.
	*
	* @param name the RFC822Name string
	* @throws IOException if name is not valid
	*/
	@:overload @:public public function parseName(name : String) : Void;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Return the actual name value of the GeneralName.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Encode the RFC822 name into the DerOutputStream.
	*
	* @param out the DER stream to encode the RFC822Name to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Convert the name into user readable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares this name with another, for equality.
	*
	* @return true iff the names are equivalent
	* according to RFC2459.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return constraint type:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name (i.e. does not constrain)
	*   <li>NAME_MATCH = 0: input name matches name
	*   <li>NAME_NARROWS = 1: input name narrows name
	*   <li>NAME_WIDENS = 2: input name widens name
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name, but is same type
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	* <p>
	* [RFC2459]    When the subjectAltName extension contains an Internet mail address,
	* the address MUST be included as an rfc822Name. The format of an
	* rfc822Name is an "addr-spec" as defined in RFC 822 [RFC 822]. An
	* addr-spec has the form "local-part@domain". Note that an addr-spec
	* has no phrase (such as a common name) before it, has no comment (text
	* surrounded in parentheses) after it, and is not surrounded by "&lt;" and
	* "&gt;". Note that while upper and lower case letters are allowed in an
	* RFC 822 addr-spec, no significance is attached to the case.
	* <p>
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is not exact match, but narrowing and widening are
	*          not supported for this name type.
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
