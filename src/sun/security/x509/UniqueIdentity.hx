package sun.security.x509;
/*
* Copyright (c) 1997, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the UniqueIdentity class used by certificates.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class UniqueIdentity
{
	/**
	* The default constructor for this class.
	*
	* @param id the byte array containing the unique identifier.
	*/
	@:overload public function new(id : sun.security.util.BitArray) : Void;
	
	/**
	* The default constructor for this class.
	*
	* @param id the byte array containing the unique identifier.
	*/
	@:overload public function new(id : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the UniqueIdentity from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param derVal the DerValue decoded from the stream.
	* @param tag the tag the value is encoded under.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Return the UniqueIdentity as a printable string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Encode the UniqueIdentity in DER form to the stream.
	*
	* @param out the DerOutputStream to marshal the contents to.
	* @param tag enocode it under the following tag.
	* @exception IOException on errors.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream, tag : java.StdTypes.Int8) : Void;
	
	/**
	* Return the unique id.
	*/
	@:overload public function getId() : java.NativeArray<Bool>;
	
	
}
