package com.sun.jndi.toolkit.url;
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
extern class GenericURLDirContext extends com.sun.jndi.toolkit.url.GenericURLContext implements javax.naming.directory.DirContext
{
	/**
	* This abstract class is a generic URL DirContext that accepts as the
	* name argument either a string URL or a Name whose first component
	* is a URL. It resolves the URL to a target context and then continues
	* the operation using the remaining name in the target context as if
	* the first component names a junction.
	*
	* A subclass must define getRootURLContext()
	* to process the URL into head/tail pieces. If it wants to control how
	* URL strings are parsed and compared for the rename() operation, then
	* it should override getNonRootURLSuffixes() and urlEquals().
	*
	* @author Scott Seligman
	* @author Rosanna Lee
	*/
	@:overload private function new(env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Gets the context in which to continue the operation. This method
	* is called when this context is asked to process a multicomponent
	* Name in which the first component is a URL.
	* Treat the first component like a junction: resolve it and then use
	* DirectoryManager.getContinuationDirContext() to get the target context in
	* which to operate on the remainder of the name (n.getSuffix(1)).
	* Do this in case intermediate contexts are not DirContext.
	*/
	@:overload private function getContinuationDirContext(n : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function getAttributes(name : String) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : String, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function createSubcontext(name : String, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function getSchema(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchema(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : String, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload public function search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	/**
	* Binds a name to an object.
	* See {@link #bind(Name, Object)} for details.
	*
	* @param name
	*          the name to bind; may not be empty
	* @param obj
	*          the object to bind; possibly null
	* @throws  NameAlreadyBoundException if name is already bound
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if object did not supply all mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function bind(name : String, obj : Dynamic) : Void;
	
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
	@:require(java3) @:overload public function getNameInNamespace() : String;
	
	/**
	* Binds a name to an object, overwriting any existing binding.
	* All intermediate contexts and the target context (that named by all
	* but terminal atomic component of the name) must already exist.
	*
	* <p> If the object is a <tt>DirContext</tt>, any existing attributes
	* associated with the name are replaced with those of the object.
	* Otherwise, any existing attributes associated with the name remain
	* unchanged.
	*
	* @param name
	*          the name to bind; may not be empty
	* @param obj
	*          the object to bind; possibly null
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if object did not supply all mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #rebind(String, Object)
	* @see #bind(Name, Object)
	* @see javax.naming.directory.DirContext#rebind(Name, Object,
	*          javax.naming.directory.Attributes)
	* @see javax.naming.directory.DirContext
	*/
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	/**
	* Destroys the named context and removes it from the namespace.
	* Any attributes associated with the name are also removed.
	* Intermediate contexts are not destroyed.
	*
	* <p> This method is idempotent.
	* It succeeds even if the terminal atomic name
	* is not bound in the target context, but throws
	* <tt>NameNotFoundException</tt>
	* if any of the intermediate contexts do not exist.
	*
	* <p> In a federated naming system, a context from one naming system
	* may be bound to a name in another.  One can subsequently
	* look up and perform operations on the foreign context using a
	* composite name.  However, an attempt destroy the context using
	* this composite name will fail with
	* <tt>NotContextException</tt>, because the foreign context is not
	* a "subcontext" of the context in which it is bound.
	* Instead, use <tt>unbind()</tt> to remove the
	* binding of the foreign context.  Destroying the foreign context
	* requires that the <tt>destroySubcontext()</tt> be performed
	* on a context from the foreign context's "native" naming system.
	*
	* @param name
	*          the name of the context to be destroyed; may not be empty
	* @throws  NameNotFoundException if an intermediate context does not exist
	* @throws  NotContextException if the name is bound but does not name a
	*          context, or does not name a context of the appropriate type
	* @throws  ContextNotEmptyException if the named context is not empty
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #destroySubcontext(String)
	*/
	@:overload public function destroySubcontext(name : javax.naming.Name) : Void;
	
	/**
	* Creates and binds a new context.
	* See {@link #createSubcontext(Name)} for details.
	*
	* @param name
	*          the name of the context to create; may not be empty
	* @return  the newly created context
	*
	* @throws  NameAlreadyBoundException if name is already bound
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if creation of the subcontext requires specification of
	*          mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function createSubcontext(name : String) : javax.naming.Context;
	
	/**
	* Composes the name of this context with a name relative to
	* this context.
	* See {@link #composeName(Name, Name)} for details.
	*
	* @param name
	*          a name relative to this context
	* @param prefix
	*          the name of this context relative to one of its ancestors
	* @return  the composition of <code>prefix</code> and <code>name</code>
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function composeName(name : String, prefix : String) : String;
	
	/**
	* Retrieves the named object.
	* See {@link #lookup(Name)} for details.
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function lookup(name : String) : Dynamic;
	
	/**
	* Enumerates the names bound in the named context, along with the
	* class names of objects bound to them.
	* The contents of any subcontexts are not included.
	*
	* <p> If a binding is added to or removed from this context,
	* its effect on an enumeration previously returned is undefined.
	*
	* @param name
	*          the name of the context to list
	* @return  an enumeration of the names and class names of the
	*          bindings in this context.  Each element of the
	*          enumeration is of type <tt>NameClassPair</tt>.
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #list(String)
	* @see #listBindings(Name)
	* @see NameClassPair
	*/
	@:overload public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<javax.naming.NameClassPair>;
	
	/**
	* Enumerates the names bound in the named context, along with the
	* class names of objects bound to them.
	* See {@link #list(Name)} for details.
	*
	* @param name
	*          the name of the context to list
	* @return  an enumeration of the names and class names of the
	*          bindings in this context.  Each element of the
	*          enumeration is of type <tt>NameClassPair</tt>.
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function list(name : String) : javax.naming.NamingEnumeration<javax.naming.NameClassPair>;
	
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
	@:overload public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
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
	@:overload public function close() : Void;
	
	/**
	* Binds a name to an object.
	* All intermediate contexts and the target context (that named by all
	* but terminal atomic component of the name) must already exist.
	*
	* @param name
	*          the name to bind; may not be empty
	* @param obj
	*          the object to bind; possibly null
	* @throws  NameAlreadyBoundException if name is already bound
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if object did not supply all mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #bind(String, Object)
	* @see #rebind(Name, Object)
	* @see javax.naming.directory.DirContext#bind(Name, Object,
	*          javax.naming.directory.Attributes)
	*/
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	/**
	* Retrieves the named object, following links except
	* for the terminal atomic component of the name.
	* If the object bound to <tt>name</tt> is not a link,
	* returns the object itself.
	*
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>, not following the
	*          terminal link (if any).
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #lookupLink(String)
	*/
	@:overload public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	/**
	* Retrieves the parser associated with the named context.
	* See {@link #getNameParser(Name)} for details.
	*
	* @param name
	*          the name of the context from which to get the parser
	* @return  a name parser that can parse compound names into their atomic
	*          components
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function getNameParser(name : String) : javax.naming.NameParser;
	
	/**
	* Unbinds the named object.
	* Removes the terminal atomic name in <code>name</code>
	* from the target context--that named by all but the terminal
	* atomic part of <code>name</code>.
	*
	* <p> This method is idempotent.
	* It succeeds even if the terminal atomic name
	* is not bound in the target context, but throws
	* <tt>NameNotFoundException</tt>
	* if any of the intermediate contexts do not exist.
	*
	* <p> Any attributes associated with the name are removed.
	* Intermediate contexts are not changed.
	*
	* @param name
	*          the name to unbind; may not be empty
	* @throws  NameNotFoundException if an intermediate context does not exist
	* @throws  NamingException if a naming exception is encountered
	* @see #unbind(String)
	*/
	@:overload public function unbind(name : javax.naming.Name) : Void;
	
	/**
	* Unbinds the named object.
	* See {@link #unbind(Name)} for details.
	*
	* @param name
	*          the name to unbind; may not be empty
	* @throws  NameNotFoundException if an intermediate context does not exist
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function unbind(name : String) : Void;
	
	/**
	* Creates and binds a new context.
	* Creates a new context with the given name and binds it in
	* the target context (that named by all but terminal atomic
	* component of the name).  All intermediate contexts and the
	* target context must already exist.
	*
	* @param name
	*          the name of the context to create; may not be empty
	* @return  the newly created context
	*
	* @throws  NameAlreadyBoundException if name is already bound
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if creation of the subcontext requires specification of
	*          mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #createSubcontext(String)
	* @see javax.naming.directory.DirContext#createSubcontext
	*/
	@:overload public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	/**
	* Retrieves the parser associated with the named context.
	* In a federation of namespaces, different naming systems will
	* parse names differently.  This method allows an application
	* to get a parser for parsing names into their atomic components
	* using the naming convention of a particular naming system.
	* Within any single naming system, <tt>NameParser</tt> objects
	* returned by this method must be equal (using the <tt>equals()</tt>
	* test).
	*
	* @param name
	*          the name of the context from which to get the parser
	* @return  a name parser that can parse compound names into their atomic
	*          components
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #getNameParser(String)
	* @see CompoundName
	*/
	@:overload public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
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
	@:overload public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	/**
	* Binds a new name to the object bound to an old name, and unbinds
	* the old name.  Both names are relative to this context.
	* Any attributes associated with the old name become associated
	* with the new name.
	* Intermediate contexts of the old name are not changed.
	*
	* @param oldName
	*          the name of the existing binding; may not be empty
	* @param newName
	*          the name of the new binding; may not be empty
	* @throws  NameAlreadyBoundException if <tt>newName</tt> is already bound
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #rename(String, String)
	* @see #bind(Name, Object)
	* @see #rebind(Name, Object)
	*/
	@:overload public function rename(oldName : javax.naming.Name, newName : javax.naming.Name) : Void;
	
	/**
	* Destroys the named context and removes it from the namespace.
	* See {@link #destroySubcontext(Name)} for details.
	*
	* @param name
	*          the name of the context to be destroyed; may not be empty
	* @throws  NameNotFoundException if an intermediate context does not exist
	* @throws  NotContextException if the name is bound but does not name a
	*          context, or does not name a context of the appropriate type
	* @throws  ContextNotEmptyException if the named context is not empty
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function destroySubcontext(name : String) : Void;
	
	/**
	* Binds a new name to the object bound to an old name, and unbinds
	* the old name.
	* See {@link #rename(Name, Name)} for details.
	*
	* @param oldName
	*          the name of the existing binding; may not be empty
	* @param newName
	*          the name of the new binding; may not be empty
	* @throws  NameAlreadyBoundException if <tt>newName</tt> is already bound
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function rename(oldName : String, newName : String) : Void;
	
	/**
	* Enumerates the names bound in the named context, along with the
	* objects bound to them.
	* The contents of any subcontexts are not included.
	*
	* <p> If a binding is added to or removed from this context,
	* its effect on an enumeration previously returned is undefined.
	*
	* @param name
	*          the name of the context to list
	* @return  an enumeration of the bindings in this context.
	*          Each element of the enumeration is of type
	*          <tt>Binding</tt>.
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #listBindings(String)
	* @see #list(Name)
	* @see Binding
	*/
	@:overload public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<javax.naming.Binding>;
	
	/**
	* Retrieves the named object, following links except
	* for the terminal atomic component of the name.
	* See {@link #lookupLink(Name)} for details.
	*
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>, not following the
	*          terminal link (if any)
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function lookupLink(name : String) : Dynamic;
	
	/**
	* Composes the name of this context with a name relative to
	* this context.
	* Given a name (<code>name</code>) relative to this context, and
	* the name (<code>prefix</code>) of this context relative to one
	* of its ancestors, this method returns the composition of the
	* two names using the syntax appropriate for the naming
	* system(s) involved.  That is, if <code>name</code> names an
	* object relative to this context, the result is the name of the
	* same object, but relative to the ancestor context.  None of the
	* names may be null.
	* <p>
	* For example, if this context is named "wiz.com" relative
	* to the initial context, then
	* <pre>
	*  composeName("east", "wiz.com")  </pre>
	* might return <code>"east.wiz.com"</code>.
	* If instead this context is named "org/research", then
	* <pre>
	*  composeName("user/jane", "org/research")        </pre>
	* might return <code>"org/research/user/jane"</code> while
	* <pre>
	*  composeName("user/jane", "research")    </pre>
	* returns <code>"research/user/jane"</code>.
	*
	* @param name
	*          a name relative to this context
	* @param prefix
	*          the name of this context relative to one of its ancestors
	* @return  the composition of <code>prefix</code> and <code>name</code>
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #composeName(String, String)
	*/
	@:overload public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Enumerates the names bound in the named context, along with the
	* objects bound to them.
	* See {@link #listBindings(Name)} for details.
	*
	* @param name
	*          the name of the context to list
	* @return  an enumeration of the bindings in this context.
	*          Each element of the enumeration is of type
	*          <tt>Binding</tt>.
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function listBindings(name : String) : javax.naming.NamingEnumeration<javax.naming.Binding>;
	
	/**
	* Binds a name to an object, overwriting any existing binding.
	* See {@link #rebind(Name, Object)} for details.
	*
	* @param name
	*          the name to bind; may not be empty
	* @param obj
	*          the object to bind; possibly null
	* @throws  javax.naming.directory.InvalidAttributesException
	*          if object did not supply all mandatory attributes
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload public function rebind(name : String, obj : Dynamic) : Void;
	
	/**
	* Retrieves the named object.
	* If <tt>name</tt> is empty, returns a new instance of this context
	* (which represents the same naming context as this context, but its
	* environment may be modified independently and it may be accessed
	* concurrently).
	*
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #lookup(String)
	* @see #lookupLink(Name)
	*/
	@:overload public function lookup(name : javax.naming.Name) : Dynamic;
	
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
	@:overload public function removeFromEnvironment(propName : String) : Dynamic;
	
	
}
