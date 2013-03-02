package com.sun.jndi.toolkit.ctx;
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
extern class ComponentContext extends com.sun.jndi.toolkit.ctx.PartialCompositeContext
{
	@:overload private function new() : Void;
	
	/* Equivalent methods in Context interface */
	@:overload @:abstract private function c_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:abstract private function c_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload @:abstract private function c_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:abstract private function c_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:abstract private function c_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function c_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function c_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function c_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function c_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload @:abstract private function c_rename(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function c_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/**
	* Determines which of the first components of 'name' belong
	* to this naming system.
	* If no components belong to this naming system, return
	* the empty name (new CompositeName()) as the head,
	* and the entire name as the tail.
	*
	* The default implementation supports strong separation.
	* If the name is empty or if the first component is empty,
	* head is the empty name and tail is the entire name.
	* (This means that this context does not have any name to work with).
	* Otherwise, it returns the first component as head, and the rest of
	* the components as tail.
	*
	* Subclass should override this method according its own policies.
	*
	* For example, a weakly separated system with dynamic boundary
	* determination would simply return as head 'name'.
	* A weakly separated with static boundary
	* determination would select the components in the front of 'name'
	* that conform to some syntax rules.  (e.g. in X.500 syntax, perhaps
	* select front components that have a equal sign).
	* If none conforms, return an empty name.
	*/
	@:overload private function p_parseComponent(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : com.sun.jndi.toolkit.ctx.HeadTail;
	
	/**
	* Resolves the nns for 'name' when the named context is acting
	* as an intermediate context.
	*
	* For a system that supports only junctions, this would be
	* equilvalent to
	*         c_lookup(name, cont);
	* because for junctions, an intermediate slash simply signifies
	* a syntactic separator.
	*
	* For a system that supports only implicit nns, this would be
	* equivalent to
	*         c_lookup_nns(name, cont);
	* because for implicit nns, a slash always signifies the implicit nns,
	* regardless of whether it is intermediate or trailing.
	*
	* By default this method supports junctions, and also allows for an
	* implicit nns to be dynamically determined through the use of the
	* "nns" reference (see c_processJunction_nns()).
	* Contexts that implement implicit nns directly should provide an
	* appropriate override.
	*
	* A junction, by definition, is a binding of a name in one
	* namespace to an object in another.  The default implementation
	* of this method detects the crossover into another namespace
	* using the following heuristic:  there is a junction when "name"
	* resolves to a context that is not an instance of
	* this.getClass().  Contexts supporting junctions for which this
	* heuristic is inappropriate should override this method.
	*/
	@:overload private function c_resolveIntermediate_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	/* Equivalent of Context Methods for supporting nns */
	@:overload private function c_lookup_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload private function c_lookupLink_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload private function c_list_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function c_listBindings_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function c_bind_nns(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function c_rebind_nns(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function c_unbind_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function c_createSubcontext_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload private function c_destroySubcontext_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function c_rename_nns(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function c_getNameParser_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	/**
	* Locates the nns using the default policy.  This policy fully
	* handles junctions, but otherwise throws an exception when an
	* attempt is made to resolve an implicit nns.
	*
	* The default policy is as follows:  If there is a junction in
	* the namespace, then resolve to the junction and continue the
	* operation there (thus deferring to that context to find its own
	* nns).  Otherwise, resolve as far as possible and then throw
	* CannotProceedException with the resolved object being a reference:
	* the address type is "nns", and the address contents is this
	* context.
	*
	* For example, when c_bind_nns(name, obj, ...) is invoked, the
	* caller is attempting to bind the object "obj" to the nns of
	* "name".  If "name" is a junction, it names an object in another
	* naming system that (presumably) has an nns.  c_bind_nns() will
	* first resolve "name" to a context and then attempt to continue
	* the bind operation there, (thus binding to the nns of the
	* context named by "name").  If "name" is empty then throw an
	* exception, since this context does not by default support an
	* implicit nns.
	*
	* To implement a context that does support an implicit nns, it is
	* necessary to override this default policy.  This is done by
	* overriding the c_*_nns() methods (which each call this method
	* by default).
	*/
	@:overload private function c_processJunction_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	private static var USE_CONTINUATION(default, null) : java.StdTypes.Int8;
	
	private static var TERMINAL_COMPONENT(default, null) : java.StdTypes.Int8;
	
	private static var TERMINAL_NNS_COMPONENT(default, null) : java.StdTypes.Int8;
	
	/**
	* Determine whether 'name' is a terminal component in
	* this naming system.
	* If so, return status indicating so, so that caller
	* can perform context operation on this name.
	*
	* If not, then the first component(s) of 'name' names
	* an intermediate context.  In that case, resolve these components
	* and set Continuation to be the object named.
	*
	* see test cases at bottom of file.
	*/
	@:overload private function p_resolveIntermediate(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : com.sun.jndi.toolkit.ctx.HeadTail;
	
	@:overload private function isAllEmpty(n : javax.naming.Name) : Bool;
	
	/* implementation for Resolver method */
	@:overload private function p_resolveToClass(name : javax.naming.Name, contextType : Class<Dynamic>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.spi.ResolveResult;
	
	/* implementations of p_ Context methods */
	@:overload private function p_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload private function p_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function p_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function p_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function p_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function p_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function p_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function p_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload private function p_rename(oldName : javax.naming.Name, newName : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function p_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	@:overload private function p_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	
}
