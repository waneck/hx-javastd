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
extern class TransientNamingContext extends com.sun.corba.se.impl.naming.cosnaming.NamingContextImpl implements com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore
{
	/**
	* Constructs a new TransientNamingContext object.
	* @param orb an orb object.
	* @param initial the initial naming context.
	* @exception Exception a Java exception thrown of the base class cannot
	* initialize.
	*/
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, initial : org.omg.CORBA.Object, nsPOA : org.omg.PortableServer.POA) : Void;
	
	/**
	* Binds the object to the name component as the specified binding type.
	* It creates a InternalBindingKey object and a InternalBindingValue
	* object and inserts them in the hash table.
	* @param n A single org.omg.CosNaming::NameComponent under which the
	* object will be bound.
	* @param obj An object reference to be bound under the supplied name.
	* @param bt The type of the binding (i.e., as object or as context).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function Bind(n : org.omg.CosNaming.NameComponent, obj : org.omg.CORBA.Object, bt : org.omg.CosNaming.BindingType) : Void;
	
	/**
	* Resolves the supplied name to an object reference and returns
	* the type of the resolved binding. It creates a InternalBindingKey
	* and uses the key for looking up in the hash table. If nothing
	* is found an exception is thrown, otherwise the object reference
	* is returned and the binding type set.
	* @param n a NameComponent which is the name to be resolved.
	* @param bth the BindingType as an out parameter.
	* @return the object reference bound under the supplied name, null if not
	* found.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function Resolve(n : org.omg.CosNaming.NameComponent, bth : org.omg.CosNaming.BindingTypeHolder) : org.omg.CORBA.Object;
	
	/**
	* Deletes the binding with the supplied name. It creates a
	* InternalBindingKey and uses it to remove the value associated
	* with the key. If nothing is found an exception is thrown, otherwise
	* the element is removed from the hash table.
	* @param n a NameComponent which is the name to unbind
	* @return the object reference bound to the name, or null if not found.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function Unbind(n : org.omg.CosNaming.NameComponent) : org.omg.CORBA.Object;
	
	/**
	* List the contents of this NamingContext. It creates a new
	* TransientBindingIterator object and passes it a clone of the
	* hash table and an orb object. It then uses the
	* newly created object to return the required number of bindings.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @param bi The BindingIterator as an out parameter.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function List(how_many : Int, bl : org.omg.CosNaming.BindingListHolder, bi : org.omg.CosNaming.BindingIteratorHolder) : Void;
	
	/**
	* Create a new NamingContext. It creates a new TransientNamingContext
	* object, passing it the orb object.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function NewContext() : org.omg.CosNaming.NamingContext;
	
	/**
	* Destroys this NamingContext by disconnecting from the ORB.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:public @:final override public function Destroy() : Void;
	
	/**
	* Return whether this NamingContext contains any bindings. It forwards
	* this request to the hash table.
	* @return true if this NamingContext contains no bindings.
	*/
	@:overload @:public @:final override public function IsEmpty() : Bool;
	
	/**
	* The local root naming context.
	*/
	@:public public var localRoot : org.omg.CORBA.Object;
	
	
}
