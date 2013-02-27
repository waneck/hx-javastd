package sun.security.x509;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Represent the CRL Reason Flags.
*
* <p>This extension, if present, defines the identifies
* the reason for the certificate revocation.
* <p>The ASN.1 syntax for this is:
* <pre>
* ReasonFlags ::= BIT STRING {
*    unused                  (0),
*    keyCompromise           (1),
*    cACompromise            (2),
*    affiliationChanged      (3),
*    superseded              (4),
*    cessationOfOperation    (5),
*    certificateHold         (6),
*    privilegeWithdrawn      (7),
*    aACompromise            (8) }
* </pre>
*
* @author Hemma Prafullchandra
*/
extern class ReasonFlags
{
	/**
	* Reasons
	*/
	public static var UNUSED(default, null) : String;
	
	public static var KEY_COMPROMISE(default, null) : String;
	
	public static var CA_COMPROMISE(default, null) : String;
	
	public static var AFFILIATION_CHANGED(default, null) : String;
	
	public static var SUPERSEDED(default, null) : String;
	
	public static var CESSATION_OF_OPERATION(default, null) : String;
	
	public static var CERTIFICATE_HOLD(default, null) : String;
	
	public static var PRIVILEGE_WITHDRAWN(default, null) : String;
	
	public static var AA_COMPROMISE(default, null) : String;
	
	/**
	* Create a ReasonFlags with the passed bit settings.
	*
	* @param reasons the bits to be set for the ReasonFlags.
	*/
	@:overload public function new(reasons : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a ReasonFlags with the passed bit settings.
	*
	* @param reasons the bits to be set for the ReasonFlags.
	*/
	@:overload public function new(reasons : java.NativeArray<Bool>) : Void;
	
	/**
	* Create a ReasonFlags with the passed bit settings.
	*
	* @param reasons the bits to be set for the ReasonFlags.
	*/
	@:overload public function new(reasons : sun.security.util.BitArray) : Void;
	
	/**
	* Create the object from the passed DER encoded value.
	*
	* @param in the DerInputStream to read the ReasonFlags from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Create the object from the passed DER encoded value.
	*
	* @param derVal the DerValue decoded from the stream.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Returns the reason flags as a boolean array.
	*/
	@:overload public function getFlags() : java.NativeArray<Bool>;
	
	/**
	* Set the attribute value.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns a printable representation of the ReasonFlags.
	*/
	@:overload public function toString() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	
}
