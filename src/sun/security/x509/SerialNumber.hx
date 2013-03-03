package sun.security.x509;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the SerialNumber class used by certificates.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class SerialNumber
{
	/**
	* The default constructor for this class using BigInteger.
	*
	* @param num the BigInteger number used to create the serial number.
	*/
	@:overload @:public public function new(num : java.math.BigInteger) : Void;
	
	/**
	* The default constructor for this class using int.
	*
	* @param num the BigInteger number used to create the serial number.
	*/
	@:overload @:public public function new(num : Int) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the SerialNumber from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Create the object, decoding the values from the passed DerValue.
	*
	* @param val the DerValue to read the SerialNumber from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Create the object, decoding the values from the passed stream.
	*
	* @param in the InputStream to read the SerialNumber from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Return the SerialNumber as user readable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Encode the SerialNumber in DER form to the stream.
	*
	* @param out the DerOutputStream to marshal the contents to.
	* @exception IOException on errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Return the serial number.
	*/
	@:overload @:public public function getNumber() : java.math.BigInteger;
	
	
}
