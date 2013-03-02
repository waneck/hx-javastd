package com.sun.corba.se.impl.naming.pcosnaming;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
//// Import general CORBA classes
extern class PersistentBindingIterator extends com.sun.corba.se.impl.naming.cosnaming.BindingIteratorImpl
{
	/**
	* Constructs a new PersistentBindingIterator object.
	* @param orb a org.omg.CORBA.ORB object.
	* @param aTable A hashtable containing InternalBindingValues which is
	* the content of the PersistentNamingContext.
	* @param java.lang.Exception a Java exception.
	* @exception Exception a Java exception thrown of the base class cannot
	* initialize.
	*/
	@:overload public function new(orb : org.omg.CORBA.ORB, aTable : java.util.Hashtable<Dynamic, Dynamic>, thePOA : org.omg.PortableServer.POA) : Void;
	
	/**
	* Returns the next binding in the NamingContext. Uses the enumeration
	* object to determine if there are more bindings and if so, returns
	* the next binding from the InternalBindingValue.
	* @param b The Binding as an out parameter.
	* @return true if there were more bindings.
	*/
	@:overload @:final public function NextOne(b : org.omg.CosNaming.BindingHolder) : Bool;
	
	/**
	* Destroys this BindingIterator by disconnecting from the ORB
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload @:final public function Destroy() : Void;
	
	/**
	* Returns the remaining number of elements in the iterator.
	* @return the remaining number of elements in the iterator.
	*/
	@:overload @:final public function RemainingElements() : Int;
	
	
}
