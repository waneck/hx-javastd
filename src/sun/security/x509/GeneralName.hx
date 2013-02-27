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
* This class implements the ASN.1 GeneralName object class.
* <p>
* The ASN.1 syntax for this is:
* <pre>
* GeneralName ::= CHOICE {
*    otherName                       [0]     OtherName,
*    rfc822Name                      [1]     IA5String,
*    dNSName                         [2]     IA5String,
*    x400Address                     [3]     ORAddress,
*    directoryName                   [4]     Name,
*    ediPartyName                    [5]     EDIPartyName,
*    uniformResourceIdentifier       [6]     IA5String,
*    iPAddress                       [7]     OCTET STRING,
*    registeredID                    [8]     OBJECT IDENTIFIER
* }
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class GeneralName
{
	/**
	* Default constructor for the class.
	*
	* @param name the selected CHOICE from the list.
	* @throws NullPointerException if name is null
	*/
	@:overload public function new(name : sun.security.x509.GeneralNameInterface) : Void;
	
	/**
	* Create the object from its DER encoded value.
	*
	* @param encName the DER encoded GeneralName.
	*/
	@:overload public function new(encName : sun.security.util.DerValue) : Void;
	
	/**
	* Create the object from its DER encoded value.
	*
	* @param encName the DER encoded GeneralName.
	* @param nameConstraint true if general name is a name constraint
	*/
	@:overload public function new(encName : sun.security.util.DerValue, nameConstraint : Bool) : Void;
	
	/**
	* Return the type of the general name.
	*/
	@:overload public function getType() : Int;
	
	/**
	* Return the GeneralNameInterface name.
	*/
	@:overload public function getName() : sun.security.x509.GeneralNameInterface;
	
	/**
	* Return the name as user readable string
	*/
	@:overload public function toString() : String;
	
	/**
	* Compare this GeneralName with another
	*
	* @param other GeneralName to compare to this
	* @returns true if match
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this GeneralName.
	*
	* @return a hash code value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Encode the name to the specified DerOutputStream.
	*
	* @param out the DerOutputStream to encode the the GeneralName to.
	* @exception IOException on encoding errors.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	
}
