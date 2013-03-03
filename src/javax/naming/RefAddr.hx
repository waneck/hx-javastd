package javax.naming;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
* This class represents the address of a communications end-point.
* It consists of a type that describes the communication mechanism
* and an address contents determined by an RefAddr subclass.
*<p>
* For example, an address type could be "BSD Printer Address",
* which specifies that it is an address to be used with the BSD printing
* protocol. Its contents could be the machine name identifying the
* location of the printer server that understands this protocol.
*<p>
* A RefAddr is contained within a Reference.
*<p>
* RefAddr is an abstract class. Concrete implementations of it
* determine its synchronization properties.
*
* @author Rosanna Lee
* @author Scott Seligman
*
* @see Reference
* @see LinkRef
* @see StringRefAddr
* @see BinaryRefAddr
* @since 1.3
*/
/*<p>
* The serialized form of a RefAddr object consists of only its type name
* String.
*/
@:require(java3) extern class RefAddr implements java.io.Serializable
{
	/**
	* Contains the type of this address.
	* @serial
	*/
	@:protected private var addrType : String;
	
	/**
	* Constructs a new instance of RefAddr using its address type.
	*
	* @param addrType A non-null string describing the type of the address.
	*/
	@:overload @:protected private function new(addrType : String) : Void;
	
	/**
	* Retrieves the address type of this address.
	*
	* @return The non-null address type of this address.
	*/
	@:overload @:public public function getType() : String;
	
	/**
	* Retrieves the contents of this address.
	*
	* @return The possibly null address contents.
	*/
	@:overload @:public @:abstract public function getContent() : Dynamic;
	
	/**
	* Determines whether obj is equal to this RefAddr.
	*<p>
	* obj is equal to this RefAddr all of these conditions are true
	*<ul> non-null
	*<li> instance of RefAddr
	*<li> obj has the same address type as this RefAddr (using String.compareTo())
	*<li> both obj and this RefAddr's contents are null or they are equal
	*         (using the equals() test).
	*</ul>
	* @param obj possibly null obj to check.
	* @return true if obj is equal to this refaddr; false otherwise.
	* @see #getContent
	* @see #getType
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes the hash code of this address using its address type and contents.
	* The hash code is the sum of the hash code of the address type and
	* the hash code of the address contents.
	*
	* @return The hash code of this address as an int.
	* @see java.lang.Object#hashCode
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Generates the string representation of this address.
	* The string consists of the address's type and contents with labels.
	* This representation is intended for display only and not to be parsed.
	* @return The non-null string representation of this address.
	*/
	@:overload @:public public function toString() : String;
	
	
}
