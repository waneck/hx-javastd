package com.sun.jndi.toolkit.ctx;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class PartialCompositeContext implements javax.naming.Context implements javax.naming.spi.Resolver
{
	/**
	* PartialCompositeContext implements Context operations on
	* composite names using implementations of the p_ interfaces
	* defined by its subclasses.
	*
	* The main purpose provided by this class is that it deals with
	* partial resolutions and continuations, so that callers of the
	* Context operation don't have to.
	*
	* Types of clients that will be direct subclasses of
	* PartialCompositeContext may be service providers that implement
	* one of the JNDI protocols, but which do not deal with
	* continuations.  Usually, service providers will be using
	* one of the subclasses of PartialCompositeContext.
	*
	* @author Rosanna Lee
	*/
	@:protected @:static @:final private static var _PARTIAL(default, null) : Int;
	
	@:protected @:static @:final private static var _COMPONENT(default, null) : Int;
	
	@:protected @:static @:final private static var _ATOMIC(default, null) : Int;
	
	@:protected private var _contextType : Int;
	
	@:overload @:protected private function new() : Void;
	
	/* Equivalent to method in  Resolver interface */
	@:overload @:protected @:abstract private function p_resolveToClass(name : javax.naming.Name, contextType : Class<Dynamic>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.spi.ResolveResult;
	
	/* Equivalent to methods in Context interface */
	@:overload @:protected @:abstract private function p_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected @:abstract private function p_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected @:abstract private function p_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected @:abstract private function p_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected @:abstract private function p_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function p_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function p_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function p_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function p_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:protected @:abstract private function p_rename(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function p_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/**
	* A cheap way of getting the environment.
	* Default implemenation is NOT cheap because it simply calls
	* getEnvironment(), which most implementations clone before returning.
	* Subclass should ALWAYS override this with the cheapest possible way.
	* The toolkit knows to clone when necessary.
	* @return The possibly null environment of the context.
	*/
	@:overload @:protected private function p_getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	/* implementations for method in Resolver interface using p_ method */
	@:overload @:public public function resolveToClass(name : String, contextType : Class<javax.naming.Context>) : javax.naming.spi.ResolveResult;
	
	@:overload @:public public function resolveToClass(name : javax.naming.Name, contextType : Class<javax.naming.Context>) : javax.naming.spi.ResolveResult;
	
	/* implementations for methods in Context interface using p_ methods */
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function bind(name : String, newObj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, newObj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, newObj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, newObj : Dynamic) : Void;
	
	@:overload @:public public function unbind(name : String) : Void;
	
	@:overload @:public public function unbind(name : javax.naming.Name) : Void;
	
	@:overload @:public public function rename(oldName : String, newName : String) : Void;
	
	@:overload @:public public function rename(oldName : javax.naming.Name, newName : javax.naming.Name) : Void;
	
	@:overload @:public public function list(name : String) : javax.naming.NamingEnumeration<javax.naming.NameClassPair>;
	
	@:overload @:public public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<javax.naming.NameClassPair>;
	
	@:overload @:public public function listBindings(name : String) : javax.naming.NamingEnumeration<javax.naming.Binding>;
	
	@:overload @:public public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<javax.naming.Binding>;
	
	@:overload @:public public function destroySubcontext(name : String) : Void;
	
	@:overload @:public public function destroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload @:public public function createSubcontext(name : String) : javax.naming.Context;
	
	@:overload @:public public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	@:overload @:public public function lookupLink(name : String) : Dynamic;
	
	@:overload @:public public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function getNameParser(name : String) : javax.naming.NameParser;
	
	@:overload @:public public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
	@:overload @:public public function composeName(name : String, prefix : String) : String;
	
	/**
	* This default implementation simply concatenates the two names.
	* There's one twist when the "java.naming.provider.compose.elideEmpty"
	* environment setting is set to "true":  if each name contains a
	* nonempty component, and if 'prefix' ends with an empty component or
	* 'name' starts with one, then one empty component is dropped.
	* For example:
	* <pre>
	*                            elideEmpty=false     elideEmpty=true
	* {"a"} + {"b"}          =>  {"a", "b"}           {"a", "b"}
	* {"a"} + {""}           =>  {"a", ""}            {"a", ""}
	* {"a"} + {"", "b"}      =>  {"a", "", "b"}       {"a", "b"}
	* {"a", ""} + {"b", ""}  =>  {"a", "", "b", ""}   {"a", "b", ""}
	* {"a", ""} + {"", "b"}  =>  {"a", "", "", "b"}   {"a", "", "b"}
	* </pre>
	*/
	@:overload @:public public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Tests whether a name contains a nonempty component.
	*/
	@:overload @:protected @:static private static function allEmpty(name : javax.naming.Name) : Bool;
	
	/**
	* Retrieves a PartialCompositeContext for the resolved object in
	* cont.  Throws CannotProceedException if not successful.
	*/
	@:overload @:protected @:static private static function getPCContext(cont : com.sun.jndi.toolkit.ctx.Continuation) : com.sun.jndi.toolkit.ctx.PartialCompositeContext;
	
	/**
	* Retrieves the full name of this context within its own namespace.
	*
	* <p> Many naming services have a notion of a "full name" for objects
	* in their respective namespaces.  For example, an LDAP entry has
	* a distinguished name, and a DNS record has a fully qualified name.
	* This method allows the client application to retrieve this name.
	* The string returned by this method is not a JNDI composite name
	* and should not be passed directly to context methods.
	* In naming systems for which the notion of full name does not
	* make sense, <tt>OperationNotSupportedException</tt> is thrown.
	*
	* @return  this context's name in its own namespace; never null
	* @throws  OperationNotSupportedException if the naming system does
	*          not have the notion of a full name
	* @throws  NamingException if a naming exception is encountered
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getNameInNamespace() : String;
	
	/**
	* Retrieves the environment in effect for this context.
	* See class description for more details on environment properties.
	*
	* <p> The caller should not make any changes to the object returned:
	* their effect on the context is undefined.
	* The environment of this context may be changed using
	* <tt>addToEnvironment()</tt> and <tt>removeFromEnvironment()</tt>.
	*
	* @return  the environment of this context; never null
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #addToEnvironment(String, Object)
	* @see #removeFromEnvironment(String)
	*/
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Closes this context.
	* This method releases this context's resources immediately, instead of
	* waiting for them to be released automatically by the garbage collector.
	*
	* <p> This method is idempotent:  invoking it on a context that has
	* already been closed has no effect.  Invoking any other method
	* on a closed context is not allowed, and results in undefined behaviour.
	*
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Adds a new environment property to the environment of this
	* context.  If the property already exists, its value is overwritten.
	* See class description for more details on environment properties.
	*
	* @param propName
	*          the name of the environment property to add; may not be null
	* @param propVal
	*          the value of the property to add; may not be null
	* @return  the previous value of the property, or null if the property was
	*          not in the environment before
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #getEnvironment()
	* @see #removeFromEnvironment(String)
	*/
	@:overload @:public public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	/**
	* Removes an environment property from the environment of this
	* context.  See class description for more details on environment
	* properties.
	*
	* @param propName
	*          the name of the environment property to remove; may not be null
	* @return  the previous value of the property, or null if the property was
	*          not in the environment
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #getEnvironment()
	* @see #addToEnvironment(String, Object)
	*/
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	
}
