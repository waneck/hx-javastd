package javax.naming;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Reference implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Contains the fully-qualified name of the class of the object to which
	* this Reference refers.
	* @serial
	* @see java.lang.Class#getName
	*/
	private var className : String;
	
	/**
	* Contains the addresses contained in this Reference.
	* Initialized by constructor.
	* @serial
	*/
	private var addrs : java.util.Vector<javax.naming.RefAddr>;
	
	/**
	* Contains the name of the factory class for creating
	* an instance of the object to which this Reference refers.
	* Initialized to null.
	* @serial
	*/
	private var classFactory : String;
	
	/**
	* Contains the location of the factory class.
	* Initialized to null.
	* @serial
	*/
	private var classFactoryLocation : String;
	
	/**
	* Constructs a new reference for an object with class name 'className'.
	* Class factory and class factory location are set to null.
	* The newly created reference contains zero addresses.
	*
	* @param className The non-null class name of the object to which
	* this reference refers.
	*/
	@:overload public function new(className : String) : Void;
	
	/**
	* Constructs a new reference for an object with class name 'className' and
	* an address.
	* Class factory and class factory location are set to null.
	*
	* @param className The non-null class name of the object to
	* which this reference refers.
	* @param addr The non-null address of the object.
	*/
	@:overload public function new(className : String, addr : javax.naming.RefAddr) : Void;
	
	/**
	* Constructs a new reference for an object with class name 'className',
	* and the class name and location of the object's factory.
	*
	* @param className The non-null class name of the object to which
	*                         this reference refers.
	* @param factory  The possibly null class name of the object's factory.
	* @param factoryLocation
	*         The possibly null location from which to load
	*         the factory (e.g. URL)
	* @see javax.naming.spi.ObjectFactory
	* @see javax.naming.spi.NamingManager#getObjectInstance
	*/
	@:overload public function new(className : String, factory : String, factoryLocation : String) : Void;
	
	/**
	* Constructs a new reference for an object with class name 'className',
	* the class name and location of the object's factory, and the address for
	* the object.
	*
	* @param className The non-null class name of the object to
	*         which this reference refers.
	* @param factory  The possibly null class name of the object's factory.
	* @param factoryLocation  The possibly null location from which
	*                         to load the factory (e.g. URL)
	* @param addr     The non-null address of the object.
	* @see javax.naming.spi.ObjectFactory
	* @see javax.naming.spi.NamingManager#getObjectInstance
	*/
	@:overload public function new(className : String, addr : javax.naming.RefAddr, factory : String, factoryLocation : String) : Void;
	
	/**
	* Retrieves the class name of the object to which this reference refers.
	*
	* @return The non-null fully-qualified class name of the object.
	*         (e.g. "java.lang.String")
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Retrieves the class name of the factory of the object
	* to which this reference refers.
	*
	* @return The possibly null fully-qualified class name of the factory.
	*         (e.g. "java.lang.String")
	*/
	@:overload public function getFactoryClassName() : String;
	
	/**
	* Retrieves the location of the factory of the object
	* to which this reference refers.
	* If it is a codebase, then it is an ordered list of URLs,
	* separated by spaces, listing locations from where the factory
	* class definition should be loaded.
	*
	* @return The possibly null string containing the
	*                 location for loading in the factory's class.
	*/
	@:overload public function getFactoryClassLocation() : String;
	
	/**
	* Retrieves the first address that has the address type 'addrType'.
	* String.compareTo() is used to test the equality of the address types.
	*
	* @param addrType The non-null address type for which to find the address.
	* @return The address in this reference with address type 'addrType;
	*         null if no such address exist.
	*/
	@:overload public function get(addrType : String) : javax.naming.RefAddr;
	
	/**
	* Retrieves the address at index posn.
	* @param posn The index of the address to retrieve.
	* @return The address at the 0-based index posn. It must be in the
	*         range [0,getAddressCount()).
	* @exception ArrayIndexOutOfBoundsException If posn not in the specified
	*         range.
	*/
	@:overload public function get(posn : Int) : javax.naming.RefAddr;
	
	/**
	* Retrieves an enumeration of the addresses in this reference.
	* When addresses are added, changed or removed from this reference,
	* its effects on this enumeration are undefined.
	*
	* @return An non-null enumeration of the addresses
	*         (<tt>RefAddr</tt>) in this reference.
	*         If this reference has zero addresses, an enumeration with
	*         zero elements is returned.
	*/
	@:overload public function getAll() : java.util.Enumeration<javax.naming.RefAddr>;
	
	/**
	* Retrieves the number of addresses in this reference.
	*
	* @return The nonnegative number of addresses in this reference.
	*/
	@:overload public function size() : Int;
	
	/**
	* Adds an address to the end of the list of addresses.
	*
	* @param addr The non-null address to add.
	*/
	@:overload public function add(addr : javax.naming.RefAddr) : Void;
	
	/**
	* Adds an address to the list of addresses at index posn.
	* All addresses at index posn or greater are shifted up
	* the list by one (away from index 0).
	*
	* @param posn The 0-based index of the list to insert addr.
	* @param addr The non-null address to add.
	* @exception ArrayIndexOutOfBoundsException If posn not in the specified
	*         range.
	*/
	@:overload public function add(posn : Int, addr : javax.naming.RefAddr) : Void;
	
	/**
	* Deletes the address at index posn from the list of addresses.
	* All addresses at index greater than posn are shifted down
	* the list by one (towards index 0).
	*
	* @param posn The 0-based index of in address to delete.
	* @return The address removed.
	* @exception ArrayIndexOutOfBoundsException If posn not in the specified
	*         range.
	*/
	@:overload public function remove(posn : Int) : Dynamic;
	
	/**
	* Deletes all addresses from this reference.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Determines whether obj is a reference with the same addresses
	* (in same order) as this reference.
	* The addresses are checked using RefAddr.equals().
	* In addition to having the same addresses, the Reference also needs to
	* have the same class name as this reference.
	* The class factory and class factory location are not checked.
	* If obj is null or not an instance of Reference, null is returned.
	*
	* @param obj The possibly null object to check.
	* @return true if obj is equal to this reference; false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes the hash code of this reference.
	* The hash code is the sum of the hash code of its addresses.
	*
	* @return A hash code of this reference as an int.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Generates the string representation of this reference.
	* The string consists of the class name to which this reference refers,
	* and the string representation of each of its addresses.
	* This representation is intended for display only and not to be parsed.
	*
	* @return The non-null string representation of this reference.
	*/
	@:overload public function toString() : String;
	
	/**
	* Makes a copy of this reference using its class name
	* list of addresses, class factory name and class factory location.
	* Changes to the newly created copy does not affect this Reference
	* and vice versa.
	*/
	@:overload public function clone() : Dynamic;
	
	
}
