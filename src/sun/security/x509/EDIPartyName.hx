package sun.security.x509;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the EDIPartyName of the GeneralName choice.
* The ASN.1 syntax for this is:
* <pre>
* EDIPartyName ::= SEQUENCE {
*     nameAssigner  [0]  DirectoryString OPTIONAL,
*     partyName     [1]  DirectoryString }
* </pre>
*
* @author Hemma Prafullchandra
* @see GeneralName
* @see GeneralNames
* @see GeneralNameInterface
*/
extern class EDIPartyName implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the EDIPartyName object from the specified names.
	*
	* @param assignerName the name of the assigner
	* @param partyName the name of the EDI party.
	*/
	@:overload @:public public function new(assignerName : String, partyName : String) : Void;
	
	/**
	* Create the EDIPartyName object from the specified name.
	*
	* @param partyName the name of the EDI party.
	*/
	@:overload @:public public function new(partyName : String) : Void;
	
	/**
	* Create the EDIPartyName object from the passed encoded Der value.
	*
	* @param derValue the encoded DER EDIPartyName.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Encode the EDI party name into the DerOutputStream.
	*
	* @param out the DER stream to encode the EDIPartyName to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Return the assignerName
	*
	* @returns String assignerName
	*/
	@:overload @:public public function getAssignerName() : String;
	
	/**
	* Return the partyName
	*
	* @returns String partyName
	*/
	@:overload @:public public function getPartyName() : String;
	
	/**
	* Compare this EDIPartyName with another.  Does a byte-string
	* comparison without regard to type of the partyName and
	* the assignerName.
	*
	* @returns true if the two names match
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this EDIPartyName.
	*
	* @return a hash code value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return the printable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return constraint type:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name (i.e. does not constrain)
	*   <li>NAME_MATCH = 0: input name matches name
	*   <li>NAME_NARROWS = 1: input name narrows name
	*   <li>NAME_WIDENS = 2: input name widens name
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name, but is same type
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	*
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is same type, but comparison operations are
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
