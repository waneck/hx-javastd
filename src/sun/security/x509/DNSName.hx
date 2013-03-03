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
* This class implements the DNSName as required by the GeneralNames
* ASN.1 object.
* <p>
* [RFC2459] When the subjectAltName extension contains a domain name service
* label, the domain name MUST be stored in the dNSName (an IA5String).
* The name MUST be in the "preferred name syntax," as specified by RFC
* 1034 [RFC 1034]. Note that while upper and lower case letters are
* allowed in domain names, no signifigance is attached to the case.  In
* addition, while the string " " is a legal domain name, subjectAltName
* extensions with a dNSName " " are not permitted.  Finally, the use of
* the DNS representation for Internet mail addresses (wpolk.nist.gov
* instead of wpolk@nist.gov) is not permitted; such identities are to
* be encoded as rfc822Name.
* <p>
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class DNSName implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the DNSName object from the passed encoded Der value.
	*
	* @param derValue the encoded DER DNSName.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Create the DNSName object with the specified name.
	*
	* @param name the DNSName.
	* @throws IOException if the name is not a valid DNSName subjectAltName
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Return the actual name value of the GeneralName.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Encode the DNS name into the DerOutputStream.
	*
	* @param out the DER stream to encode the DNSName to.
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
	* Return type of constraint inputName places on this name:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name (i.e. does not constrain).
	*   <li>NAME_MATCH = 0: input name matches name.
	*   <li>NAME_NARROWS = 1: input name narrows name (is lower in the naming subtree)
	*   <li>NAME_WIDENS = 2: input name widens name (is higher in the naming subtree)
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name, but is same type.
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	* <p>
	* RFC2459: DNS name restrictions are expressed as foo.bar.com. Any subdomain
	* satisfies the name constraint. For example, www.foo.bar.com would
	* satisfy the constraint but bigfoo.bar.com would not.
	* <p>
	* draft-ietf-pkix-new-part1-00.txt:  DNS name restrictions are expressed as foo.bar.com.
	* Any DNS name that
	* can be constructed by simply adding to the left hand side of the name
	* satisfies the name constraint. For example, www.foo.bar.com would
	* satisfy the constraint but foo1.bar.com would not.
	* <p>
	* RFC1034: By convention, domain names can be stored with arbitrary case, but
	* domain name comparisons for all present domain functions are done in a
	* case-insensitive manner, assuming an ASCII character set, and a high
	* order zero bit.
	* <p>
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is not exact match, but narrowing and widening are
	*          not supported for this name type.
	*/
	@:overload @:public public function constrains(inputName : sun.security.x509.GeneralNameInterface) : Int;
	
	/**
	* Return subtree depth of this name for purposes of determining
	* NameConstraints minimum and maximum bounds and for calculating
	* path lengths in name subtrees.
	*
	* @returns distance of name from root
	* @throws UnsupportedOperationException if not supported for this name type
	*/
	@:overload @:public public function subtreeDepth() : Int;
	
	
}
