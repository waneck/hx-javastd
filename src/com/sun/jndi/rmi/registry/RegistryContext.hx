package com.sun.jndi.rmi.registry;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class RegistryContext implements javax.naming.Context implements javax.naming.Referenceable
{
	@:public @:static @:final public static var SECURITY_MGR(default, null) : String;
	
	/**
	* Returns a context for the registry at a given host and port.
	* If "host" is null, uses default host.
	* If "port" is non-positive, uses default port.
	* Cloning of "env" is handled by caller; see comments within
	* RegistryContextFactory.getObjectInstance(), for example.
	*/
	@:overload @:public public function new(host : String, port : Int, env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:protected private function finalize() : Void;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	/**
	* If the object to be bound is both Remote and Referenceable, binds the
	* object itself, not its Reference.
	*/
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function unbind(name : javax.naming.Name) : Void;
	
	@:overload @:public public function unbind(name : String) : Void;
	
	/**
	* Rename is implemented by this sequence of operations:
	* lookup, bind, unbind.  The sequence is not performed atomically.
	*/
	@:overload @:public public function rename(oldName : javax.naming.Name, newName : javax.naming.Name) : Void;
	
	@:overload @:public public function rename(name : String, newName : String) : Void;
	
	@:overload @:public public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function list(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function listBindings(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function destroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload @:public public function destroySubcontext(name : String) : Void;
	
	@:overload @:public public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	@:overload @:public public function createSubcontext(name : String) : javax.naming.Context;
	
	@:overload @:public public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function lookupLink(name : String) : Dynamic;
	
	@:overload @:public public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
	@:overload @:public public function getNameParser(name : String) : javax.naming.NameParser;
	
	@:overload @:public public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function composeName(name : String, prefix : String) : String;
	
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:public public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getNameInNamespace() : String;
	
	/**
	* Returns an RMI registry reference for this context.
	*<p>
	* If this context was created from a reference, that reference is
	* returned.  Otherwise, an exception is thrown if the registry's
	* host is "localhost" or the default (null).  Although this could
	* possibly make for a valid reference, it's far more likely to be
	* an easily made error.
	*
	* @see RegistryContextFactory
	*/
	@:overload @:public public function getReference() : javax.naming.Reference;
	
	/**
	* Wrap a RemoteException inside a NamingException.
	*/
	@:overload @:public @:static public static function wrapRemoteException(re : java.rmi.RemoteException) : javax.naming.NamingException;
	
	
}
@:internal extern class AtomicNameParser implements javax.naming.NameParser
{
	@:overload @:public public function parse(name : String) : javax.naming.Name;
	
	
}
@:internal extern class NameClassPairEnumeration implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function close() : Void;
	
	
}
@:internal extern class BindingEnumeration implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload @:protected private function finalize() : Void;
	
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function close() : Void;
	
	
}
