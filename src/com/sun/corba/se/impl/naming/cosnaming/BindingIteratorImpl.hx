package com.sun.corba.se.impl.naming.cosnaming;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BindingIteratorImpl extends org.omg.CosNaming.BindingIteratorPOA
{
	/**
	* Class BindingIteratorImpl implements the org.omg.CosNaming::BindingIterator
	* interface, but does not implement the method to retrieve the next
	* binding in the NamingContext for which it was created. This is left
	* to a subclass, which is why this class is abstract; BindingIteratorImpl
	* provides an implementation of the interface operations on top of two
	* subclass methods, allowing multiple implementations of iterators that
	* differ in storage and access to the contents of a NamingContext
	* implementation.
	* <p>
	* The operation next_one() is implemented by the subclass, whereas
	* next_n() is implemented on top of the next_one() implementation.
	* Destroy must also be implemented by the subclass.
	* <p>
	* A subclass must implement NextOne() and Destroy(); these
	* methods are invoked from synchronized methods and need therefore
	* not be synchronized themselves.
	*/
	private var orb : org.omg.CORBA.ORB;
	
	/**
	* Create a binding iterator servant.
	* runs the super constructor.
	* @param orb an ORB object.
	* @exception java.lang.Exception a Java exception.
	*/
	@:overload public function new(orb : org.omg.CORBA.ORB) : Void;
	
	/**
	* Return the next binding. It also returns true or false, indicating
	* whether there were more bindings.
	* @param b The Binding as an out parameter.
	* @return true if there were more bindings.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see NextOne
	*/
	@:overload @:synchronized override public function next_one(b : org.omg.CosNaming.BindingHolder) : Bool;
	
	/**
	* Return the next n bindings. It also returns true or false, indicating
	* whether there were more bindings.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @return true if there were more bindings.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see NextOne
	*/
	@:overload @:synchronized override public function next_n(how_many : Int, blh : org.omg.CosNaming.BindingListHolder) : Bool;
	
	/**
	* lists next n bindings. It returns true or false, indicating
	* whether there were more bindings. This method has the package private
	* scope, It will be called from NamingContext.list() operation or
	* this.next_n().
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @return true if there were more bindings.
	*/
	@:overload public function list(how_many : Int, blh : org.omg.CosNaming.BindingListHolder) : Bool;
	
	/**
	* Destroy this BindingIterator object. The object corresponding to this
	* object reference is destroyed.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see Destroy
	*/
	@:overload @:synchronized override public function destroy() : Void;
	
	/**
	* Abstract method for returning the next binding in the NamingContext
	* for which this BindingIterator was created.
	* @param b The Binding as an out parameter.
	* @return true if there were more bindings.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:abstract private function NextOne(b : org.omg.CosNaming.BindingHolder) : Bool;
	
	/**
	* Abstract method for destroying this BindingIterator.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:abstract private function Destroy() : Void;
	
	/**
	* Abstract method for returning the remaining number of elements.
	* @return the remaining number of elements in the iterator.
	*/
	@:overload @:abstract private function RemainingElements() : Int;
	
	
}
