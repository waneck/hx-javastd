package java.security.spec;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ECFieldFp implements java.security.spec.ECField
{
	/**
	* Creates an elliptic curve prime finite field
	* with the specified prime <code>p</code>.
	* @param p the prime.
	* @exception NullPointerException if <code>p</code> is null.
	* @exception IllegalArgumentException if <code>p</code>
	* is not positive.
	*/
	@:overload @:public public function new(p : java.math.BigInteger) : Void;
	
	/**
	* Returns the field size in bits which is size of prime p
	* for this prime finite field.
	* @return the field size in bits.
	*/
	@:overload @:public public function getFieldSize() : Int;
	
	/**
	* Returns the prime <code>p</code> of this prime finite field.
	* @return the prime.
	*/
	@:overload @:public public function getP() : java.math.BigInteger;
	
	/**
	* Compares this prime finite field for equality with the
	* specified object.
	* @param obj the object to be compared.
	* @return true if <code>obj</code> is an instance
	* of ECFieldFp and the prime value match, false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this prime finite field.
	* @return a hash code value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
