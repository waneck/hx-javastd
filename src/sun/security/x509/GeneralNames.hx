package sun.security.x509;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This object class represents the GeneralNames type required in
* X509 certificates.
* <p>The ASN.1 syntax for this is:
* <pre>
* GeneralNames ::= SEQUENCE SIZE (1..MAX) OF GeneralName
* </pre>
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*
*/
extern class GeneralNames
{
	/**
	* Create the GeneralNames, decoding from the passed DerValue.
	*
	* @param derVal the DerValue to construct the GeneralNames from.
	* @exception IOException on error.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* The default constructor for this class.
	*/
	@:overload public function new() : Void;
	
	@:overload public function add(name : sun.security.x509.GeneralName) : GeneralNames;
	
	@:overload public function get(index : Int) : sun.security.x509.GeneralName;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function size() : Int;
	
	@:overload public function iterator() : java.util.Iterator<sun.security.x509.GeneralName>;
	
	@:overload public function names() : java.util.List<sun.security.x509.GeneralName>;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on error.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* compare this GeneralNames to other object for equality
	*
	* @returns true iff this equals other
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
