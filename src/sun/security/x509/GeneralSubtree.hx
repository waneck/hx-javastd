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
* Represent the GeneralSubtree ASN.1 object, whose syntax is:
* <pre>
* GeneralSubtree ::= SEQUENCE {
*    base             GeneralName,
*    minimum  [0]     BaseDistance DEFAULT 0,
*    maximum  [1]     BaseDistance OPTIONAL
* }
* BaseDistance ::= INTEGER (0..MAX)
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class GeneralSubtree
{
	/**
	* The default constructor for the class.
	*
	* @params name the GeneralName
	* @params min the minimum BaseDistance
	* @params max the maximum BaseDistance
	*/
	@:overload @:public public function new(name : sun.security.x509.GeneralName, min : Int, max : Int) : Void;
	
	/**
	* Create the object from its DER encoded form.
	*
	* @param val the DER encoded from of the same.
	*/
	@:overload @:public public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Return the GeneralName.
	*
	* @return the GeneralName
	*/
	@:overload @:public public function getName() : sun.security.x509.GeneralName;
	
	/**
	* Return the minimum BaseDistance.
	*
	* @return the minimum BaseDistance. Default is 0 if not set.
	*/
	@:overload @:public public function getMinimum() : Int;
	
	/**
	* Return the maximum BaseDistance.
	*
	* @return the maximum BaseDistance, or -1 if not set.
	*/
	@:overload @:public public function getMaximum() : Int;
	
	/**
	* Return a printable string of the GeneralSubtree.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compare this GeneralSubtree with another
	*
	* @param other GeneralSubtree to compare to this
	* @returns true if match
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this GeneralSubtree.
	*
	* @return a hash code value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Encode the GeneralSubtree.
	*
	* @params out the DerOutputStream to encode this object to.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	
}
