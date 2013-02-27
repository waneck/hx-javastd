package com.sun.jndi.cosnaming;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class CNCtx implements javax.naming.Context
{
	public var _nc : org.omg.CosNaming.NamingContext;
	
	/**
	* This method is used by the iiop and iiopname URL Context factories.
	*/
	@:overload public static function createUsingURL(url : String, env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.spi.ResolveResult;
	
	@:overload public function getNameInNamespace() : String;
	
	/**
	* Converts the "String" name into a CompositeName
	* returns the object resolved by the COS Naming api,
	* resolve. Returns the current context if the name is empty.
	* Returns either an org.omg.CORBA.Object or javax.naming.Context object.
	* @param name string used to resolve the object.
	* @exception NamingException See callResolve.
	* @return the resolved object
	*/
	@:overload public function lookup(name : String) : Dynamic;
	
	/**
	* Converts the "Name" name into a NameComponent[] object and
	* returns the object resolved by the COS Naming api,
	* resolve. Returns the current context if the name is empty.
	* Returns either an org.omg.CORBA.Object or javax.naming.Context object.
	* @param name JNDI Name used to resolve the object.
	* @exception NamingException See callResolve.
	* @return the resolved object
	*/
	@:overload public function lookup(name : javax.naming.Name) : Dynamic;
	
	/**
	* Converts the "Name" name into a NameComponent[] object and
	* performs the bind operation. Uses callBindOrRebind. Throws an
	* invalid name exception if the name is empty. We need a name to
	* bind the object even when we work within the current context.
	* @param name JNDI Name object
	* @param obj Object to be bound.
	* @exception NamingException See callBindOrRebind
	*/
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	/**
	* Converts the "String" name into a CompositeName object and
	* performs the bind operation. Uses callBindOrRebind. Throws an
	* invalid name exception if the name is empty.
	* @param name string
	* @param obj Object to be bound.
	* @exception NamingException See callBindOrRebind
	*/
	@:overload public function bind(name : String, obj : Dynamic) : Void;
	
	/**
	* Converts the "Name" name into a NameComponent[] object and
	* performs the rebind operation. Uses callBindOrRebind. Throws an
	* invalid name exception if the name is empty. We must have a name
	* to rebind the object to even if we are working within the current
	* context.
	* @param name string
	* @param obj Object to be bound.
	* @exception NamingException See callBindOrRebind
	*/
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	/**
	* Converts the "String" name into a CompositeName object and
	* performs the rebind operation. Uses callBindOrRebind. Throws an
	* invalid name exception if the name is an empty string.
	* @param name string
	* @param obj Object to be bound.
	* @exception NamingException See callBindOrRebind
	*/
	@:overload public function rebind(name : String, obj : Dynamic) : Void;
	
	/**
	* Converts the "String" name into a CompositeName object and
	* performs the unbind operation. Uses callUnbind. If the name is
	* empty, throws an invalid name exception. Do we unbind the
	* current context (JNDI spec says work with the current context if
	* the name is empty) ?
	* @param name string
	* @exception NamingException See callUnbind
	*/
	@:overload public function unbind(name : String) : Void;
	
	/**
	* Converts the "Name" name into a NameComponent[] object and
	* performs the unbind operation. Uses callUnbind. Throws an
	* invalid name exception if the name is empty.
	* @param name string
	* @exception NamingException See callUnbind
	*/
	@:overload public function unbind(name : javax.naming.Name) : Void;
	
	/**
	* Renames an object. Since COS Naming does not support a rename
	* api, this method unbinds the object with the "oldName" and
	* creates a new binding.
	* @param oldName string, existing name for the binding.
	* @param newName string, name used to replace.
	* @exception NamingException See bind
	*/
	@:overload public function rename(oldName : String, newName : String) : Void;
	
	/**
	* Renames an object. Since COS Naming does not support a rename
	* api, this method unbinds the object with the "oldName" and
	* creates a new binding.
	* @param oldName JNDI Name, existing name for the binding.
	* @param newName JNDI Name, name used to replace.
	* @exception NamingException See bind
	*/
	@:overload public function rename(oldName : javax.naming.Name, newName : javax.naming.Name) : Void;
	
	/**
	* Returns a NameClassEnumeration object which has a list of name
	* class pairs. Lists the current context if the name is empty.
	* @param name string
	* @exception NamingException All exceptions thrown by lookup
	* with a non-null argument
	* @return a list of name-class objects as a NameClassEnumeration.
	*/
	@:overload public function list(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Returns a NameClassEnumeration object which has a list of name
	* class pairs. Lists the current context if the name is empty.
	* @param name JNDI Name
	* @exception NamingException All exceptions thrown by lookup
	* @return a list of name-class objects as a NameClassEnumeration.
	*/
	@:overload public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Returns a BindingEnumeration object which has a list of name
	* object pairs. Lists the current context if the name is empty.
	* @param name string
	* @exception NamingException all exceptions returned by lookup
	* @return a list of bindings as a BindingEnumeration.
	*/
	@:overload public function listBindings(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Returns a BindingEnumeration object which has a list of name
	* class pairs. Lists the current context if the name is empty.
	* @param name JNDI Name
	* @exception NamingException all exceptions returned by lookup.
	* @return a list of bindings as a BindingEnumeration.
	*/
	@:overload public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Uses the callDestroy function to destroy the context. If name is
	* empty destroys the current context.
	* @param name string
	* @exception OperationNotSupportedException when list is invoked
	* with a non-null argument
	*/
	@:overload public function destroySubcontext(name : String) : Void;
	
	/**
	* Uses the callDestroy function to destroy the context. Destroys
	* the current context if name is empty.
	* @param name JNDI Name
	* @exception OperationNotSupportedException when list is invoked
	* with a non-null argument
	*/
	@:overload public function destroySubcontext(name : javax.naming.Name) : Void;
	
	/**
	* Uses the callBindNewContext convenience function to create a new
	* context. Throws an invalid name exception if the name is empty.
	* @param name string
	* @exception NamingException See callBindNewContext
	* @return the new context object.
	*/
	@:overload public function createSubcontext(name : String) : javax.naming.Context;
	
	/**
	* Uses the callBindNewContext convenience function to create a new
	* context. Throws an invalid name exception if the name is empty.
	* @param name string
	* @exception NamingException See callBindNewContext
	* @return the new context object.
	*/
	@:overload public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	/**
	* Is mapped to resolve in the COS Naming api.
	* @param name string
	* @exception NamingException See lookup.
	* @return the resolved object.
	*/
	@:overload public function lookupLink(name : String) : Dynamic;
	
	/**
	* Is mapped to resolve in the COS Naming api.
	* @param name string
	* @exception NamingException See lookup.
	* @return the resolved object.
	*/
	@:overload public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	/**
	* Allow access to the name parser object.
	* @param String JNDI name, is ignored since there is only one Name
	* Parser object.
	* @exception NamingException --
	* @return NameParser object
	*/
	@:overload public function getNameParser(name : String) : javax.naming.NameParser;
	
	/**
	* Allow access to the name parser object.
	* @param Name JNDI name, is ignored since there is only one Name
	* Parser object.
	* @exception NamingException --
	* @return NameParser object
	*/
	@:overload public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
	/**
	* Returns the current environment.
	* @return Environment.
	*/
	@:overload public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload public function composeName(name : String, prefix : String) : String;
	
	@:overload public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds to the environment for the current context.
	* Record change but do not reinitialize ORB.
	*
	* @param propName The property name.
	* @param propVal  The ORB.
	* @return the previous value of this property if any.
	*/
	@:overload public function addToEnvironment(propName : String, propValue : Dynamic) : Dynamic;
	
	@:overload public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:synchronized public function incEnumCount() : Void;
	
	@:overload @:synchronized public function decEnumCount() : Void;
	
	@:overload @:synchronized public function close() : Void;
	
	@:overload private function finalize() : Void;
	
	
}
