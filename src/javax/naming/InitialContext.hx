package javax.naming;
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
extern class InitialContext implements javax.naming.Context
{
	/**
	* The environment associated with this InitialContext.
	* It is initialized to null and is updated by the constructor
	* that accepts an environment or by the <tt>init()</tt> method.
	* @see #addToEnvironment
	* @see #removeFromEnvironment
	* @see #getEnvironment
	*/
	@:protected private var myProps : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Field holding the result of calling NamingManager.getInitialContext().
	* It is set by getDefaultInitCtx() the first time getDefaultInitCtx()
	* is called. Subsequent invocations of getDefaultInitCtx() return
	* the value of defaultInitCtx.
	* @see #getDefaultInitCtx
	*/
	@:protected private var defaultInitCtx : javax.naming.Context;
	
	/**
	* Field indicating whether the initial context has been obtained
	* by calling NamingManager.getInitialContext().
	* If true, its result is in <code>defaultInitCtx</code>.
	*/
	@:protected private var gotDefault : Bool;
	
	/**
	* Constructs an initial context with the option of not
	* initializing it.  This may be used by a constructor in
	* a subclass when the value of the environment parameter
	* is not yet known at the time the <tt>InitialContext</tt>
	* constructor is called.  The subclass's constructor will
	* call this constructor, compute the value of the environment,
	* and then call <tt>init()</tt> before returning.
	*
	* @param lazy
	*          true means do not initialize the initial context; false
	*          is equivalent to calling <tt>new InitialContext()</tt>
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #init(Hashtable)
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function new(lazy : Bool) : Void;
	
	/**
	* Constructs an initial context.
	* No environment properties are supplied.
	* Equivalent to <tt>new InitialContext(null)</tt>.
	*
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #InitialContext(Hashtable)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an initial context using the supplied environment.
	* Environment properties are discussed in the class description.
	*
	* <p> This constructor will not modify <tt>environment</tt>
	* or save a reference to it, but may save a clone.
	* Caller should not modify mutable keys and values in
	* <tt>environment</tt> after it has been passed to the constructor.
	*
	* @param environment
	*          environment used to create the initial context.
	*          Null indicates an empty environment.
	*
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload @:public public function new(environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Initializes the initial context using the supplied environment.
	* Environment properties are discussed in the class description.
	*
	* <p> This method will modify <tt>environment</tt> and save
	* a reference to it.  The caller may no longer modify it.
	*
	* @param environment
	*          environment used to create the initial context.
	*          Null indicates an empty environment.
	*
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #InitialContext(boolean)
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function init(environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* A static method to retrieve the named object.
	* This is a shortcut method equivalent to invoking:
	* <p>
	* <code>
	*        InitialContext ic = new InitialContext();
	*        Object obj = ic.lookup();
	* </code>
	* <p> If <tt>name</tt> is empty, returns a new instance of this context
	* (which represents the same naming context as this context, but its
	* environment may be modified independently and it may be accessed
	* concurrently).
	*
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #doLookup(String)
	* @see #lookup(Name)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function doLookup<T>(name : javax.naming.Name) : T;
	
	/**
	* A static method to retrieve the named object.
	* See {@link #doLookup(Name)} for details.
	* @param name
	*          the name of the object to look up
	* @return  the object bound to <tt>name</tt>
	* @throws  NamingException if a naming exception is encountered
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function doLookup<T>(name : String) : T;
	
	/**
	* Retrieves the initial context by calling
	* <code>NamingManager.getInitialContext()</code>
	* and cache it in defaultInitCtx.
	* Set <code>gotDefault</code> so that we know we've tried this before.
	* @return The non-null cached initial context.
	* @exception NoInitialContextException If cannot find an initial context.
	* @exception NamingException If a naming exception was encountered.
	*/
	@:overload @:protected private function getDefaultInitCtx() : javax.naming.Context;
	
	/**
	* Retrieves a context for resolving the string name <code>name</code>.
	* If <code>name</code> name is a URL string, then attempt
	* to find a URL context for it. If none is found, or if
	* <code>name</code> is not a URL string, then return
	* <code>getDefaultInitCtx()</code>.
	*<p>
	* See getURLOrDefaultInitCtx(Name) for description
	* of how a subclass should use this method.
	* @param name The non-null name for which to get the context.
	* @return A URL context for <code>name</code> or the cached
	*         initial context. The result cannot be null.
	* @exception NoInitialContextException If cannot find an initial context.
	* @exception NamingException In a naming exception is encountered.
	* @see javax.naming.spi.NamingManager#getURLContext
	*/
	@:overload @:protected private function getURLOrDefaultInitCtx(name : String) : javax.naming.Context;
	
	/**
	* Retrieves a context for resolving <code>name</code>.
	* If the first component of <code>name</code> name is a URL string,
	* then attempt to find a URL context for it. If none is found, or if
	* the first component of <code>name</code> is not a URL string,
	* then return <code>getDefaultInitCtx()</code>.
	*<p>
	* When creating a subclass of InitialContext, use this method as
	* follows.
	* Define a new method that uses this method to get an initial
	* context of the desired subclass.
	* <p><blockquote><pre>
	* protected XXXContext getURLOrDefaultInitXXXCtx(Name name)
	* throws NamingException {
	*  Context answer = getURLOrDefaultInitCtx(name);
	*  if (!(answer instanceof XXXContext)) {
	*    if (answer == null) {
	*      throw new NoInitialContextException();
	*    } else {
	*      throw new NotContextException("Not an XXXContext");
	*    }
	*  }
	*  return (XXXContext)answer;
	* }
	* </pre></blockquote>
	* When providing implementations for the new methods in the subclass,
	* use this newly defined method to get the initial context.
	* <p><blockquote><pre>
	* public Object XXXMethod1(Name name, ...) {
	*  throws NamingException {
	*    return getURLOrDefaultInitXXXCtx(name).XXXMethod1(name, ...);
	* }
	* </pre></blockquote>
	*
	* @param name The non-null name for which to get the context.
	* @return A URL context for <code>name</code> or the cached
	*         initial context. The result cannot be null.
	* @exception NoInitialContextException If cannot find an initial context.
	* @exception NamingException In a naming exception is encountered.
	*
	* @see javax.naming.spi.NamingManager#getURLContext
	*/
	@:overload @:protected private function getURLOrDefaultInitCtx(name : javax.naming.Name) : javax.naming.Context;
	
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function bind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
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
	
	/**
	* Composes the name of this context with a name relative to
	* this context.
	* Since an initial context may never be named relative
	* to any context other than itself, the value of the
	* <tt>prefix</tt> parameter must be an empty name (<tt>""</tt>).
	*/
	@:overload @:public public function composeName(name : String, prefix : String) : String;
	
	/**
	* Composes the name of this context with a name relative to
	* this context.
	* Since an initial context may never be named relative
	* to any context other than itself, the value of the
	* <tt>prefix</tt> parameter must be an empty name.
	*/
	@:overload @:public public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getNameInNamespace() : String;
	
	
}
