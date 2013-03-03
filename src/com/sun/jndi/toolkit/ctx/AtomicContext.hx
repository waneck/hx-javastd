package com.sun.jndi.toolkit.ctx;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class AtomicContext extends com.sun.jndi.toolkit.ctx.ComponentContext
{
	@:overload @:protected private function new() : Void;
	
	/* Equivalent to Context methods */
	@:overload @:protected @:abstract private function a_lookup(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected @:abstract private function a_lookupLink(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected @:abstract private function a_list(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected @:abstract private function a_listBindings(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected @:abstract private function a_bind(name : String, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function a_rebind(name : String, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function a_unbind(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function a_destroySubcontext(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function a_createSubcontext(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:protected @:abstract private function a_rename(oldname : String, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected @:abstract private function a_getNameParser(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/**
	* Parse 'inputName' into two parts:
	* head: the first component in this name
	* tail: the rest of the unused name.
	*
	* Subclasses should provide an implementation for this method
	* which parses inputName using its own name syntax.
	*/
	@:overload @:protected @:abstract private function c_parseComponent(inputName : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : com.sun.jndi.toolkit.ctx.StringHeadTail;
	
	/**
	* Resolves the nns for 'name' when the named context is acting
	* as an intermediate context.
	*
	* For a system that supports junctions, this would be equilvalent to
	*         a_lookup(name, cont);
	* because for junctions, an intermediate slash simply signifies
	* a syntactic separator.
	*
	* For a system that supports implicit nns, this would be equivalent to
	*         a_lookup_nns(name, cont);
	* because for implicit nns, a slash always signifies the implicit nns,
	* regardless of whether it is intermediate or trailing.
	*
	* By default this method supports junctions, and also allows for an
	* implicit nns to be dynamically determined through the use of the
	* "nns" reference (see a_processJunction_nns()).
	* Contexts that implement implicit nns directly should provide an
	* appropriate override.
	*/
	@:overload @:protected private function a_resolveIntermediate_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	/* Equivalent of Context Methods for supporting nns */
	@:overload @:protected private function a_lookup_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected private function a_lookupLink_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected private function a_list_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected private function a_listBindings_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected private function a_bind_nns(name : String, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected private function a_rebind_nns(name : String, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected private function a_unbind_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected private function a_createSubcontext_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:protected private function a_destroySubcontext_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected private function a_rename_nns(oldname : String, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected private function a_getNameParser_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	@:overload @:protected private function isEmpty(name : String) : Bool;
	
	/* Equivalent to methods in  Context interface */
	@:overload @:protected override private function c_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected override private function c_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected override private function c_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected override private function c_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected override private function c_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:protected override private function c_rename(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/* From ComponentContext */
	@:overload @:protected override private function c_resolveIntermediate_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	/* Equivalent to methods in Context interface for nns */
	@:overload @:protected override private function c_lookup_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected override private function c_lookupLink_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:protected override private function c_list_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected override private function c_listBindings_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected override private function c_bind_nns(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_rebind_nns(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_unbind_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_createSubcontext_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:protected override private function c_destroySubcontext_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_rename_nns(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:protected override private function c_getNameParser_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/**
	* This function is used when implementing a naming system that
	* supports junctions.  For example, when the a_bind_nns(name, newobj)
	* method is invoked, that means the caller is attempting to bind the
	* object 'newobj' to the nns of 'name'.  For context that supports
	* junctions, 'name' names a junction and is pointing to the root
	* of another naming system, which in turn might have an nns.
	* This means that a_bind_nns() should first resolve 'name' and attempt to
	* continue the operation in the context named by 'name'.  (i.e. bind
	* to the nns of the context named by 'name').
	* If name is already empty, then throw NameNotFoundException because
	* this context by default does not have any nns.
	*/
	@:overload @:protected private function a_processJunction_nns(name : String, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	/**
	* This function is used when implementing a naming system that
	* supports junctions.  For example, when the a_list_nns(newobj)
	* method is invoked, that means the caller is attempting to list the
	* the nns context of of this context.  For a context that supports
	* junctions, it by default does not have any nns.  Consequently,
	* a NameNotFoundException is thrown.
	*/
	@:overload @:protected private function a_processJunction_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	/** Resolve to context named by 'name'.
	* Returns true if at named context (i.e. 'name' is empty name).
	* Returns false otherwise, and sets Continuation on parts of 'name'
	* not yet resolved.
	*/
	@:overload @:protected private function resolve_to_context(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Bool;
	
	/**
	* Resolves to penultimate context named by 'name'.
	* Returns true if penultimate context has been reached (i.e. name
	* only has one atomic component left).
	* Returns false otherwise, and sets Continuation to parts of name
	* not yet resolved.
	*/
	@:overload @:protected private function resolve_to_penultimate_context(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Bool;
	
	/**
	* This function is similar to resolve_to_penultimate_context()
	* except it should only be called by the nns() functions.
	* This function fixes any exception or continuations so that
	* it will have the proper nns name.
	*/
	@:overload @:protected private function resolve_to_penultimate_context_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Bool;
	
	/**
	* Resolves to nns associated with 'name' and set Continuation
	* to the result.
	*/
	@:overload @:protected private function resolve_to_nns_and_continue(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	
}
