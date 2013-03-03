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
extern class GenericURLContext implements javax.naming.Context
{
	/**
	* This abstract class is a generic URL context that accepts as the
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
	@:protected private var myEnv : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function new(env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getNameInNamespace() : String;
	
	/**
	* Resolves 'name' into a target context with remaining name.
	* For example, with a JNDI URL "jndi://dnsname/rest_name",
	* this method resolves "jndi://dnsname/" to a target context,
	* and returns the target context with "rest_name".
	* The definition of "root URL" and how much of the URL to
	* consume is implementation specific.
	* If rename() is supported for a particular URL scheme,
	* getRootURLContext(), getURLPrefix(), and getURLSuffix()
	* must be in sync wrt how URLs are parsed and returned.
	*/
	@:overload @:abstract @:protected private function getRootURLContext(url : String, env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.spi.ResolveResult;
	
	/**
	* Returns the suffix of the url. The result should be identical to
	* that of calling getRootURLContext().getRemainingName(), but
	* without the overhead of doing anything with the prefix like
	* creating a context.
	*<p>
	* This method returns a Name instead of a String because to give
	* the provider an opportunity to return a Name (for example,
	* for weakly separated naming systems like COS naming).
	*<p>
	* The default implementation uses skips 'prefix', calls
	* UrlUtil.decode() on it, and returns the result as a single component
	* CompositeName.
	* Subclass should override if this is not appropriate.
	* This method is used only by rename().
	* If rename() is supported for a particular URL scheme,
	* getRootURLContext(), getURLPrefix(), and getURLSuffix()
	* must be in sync wrt how URLs are parsed and returned.
	*<p>
	* For many URL schemes, this method is very similar to URL.getFile(),
	* except getFile() will return a leading slash in the
	* 2nd, 3rd, and 4th cases. For schemes like "ldap" and "iiop",
	* the leading slash must be skipped before the name is an acceptable
	* format for operation by the Context methods. For schemes that treat the
	* leading slash as significant (such as "file"),
	* the subclass must override getURLSuffix() to get the correct behavior.
	* Remember, the behavior must match getRootURLContext().
	*
	* URL                                     Suffix
	* foo://host:port                         <empty string>
	* foo://host:port/rest/of/name            rest/of/name
	* foo:///rest/of/name                     rest/of/name
	* foo:/rest/of/name                       rest/of/name
	* foo:rest/of/name                        rest/of/name
	*/
	@:overload @:protected private function getURLSuffix(prefix : String, url : String) : javax.naming.Name;
	
	/**
	* Finds the prefix of a URL.
	* Default implementation looks for slashes and then extracts
	* prefixes using String.substring().
	* Subclass should override if this is not appropriate.
	* This method is used only by rename().
	* If rename() is supported for a particular URL scheme,
	* getRootURLContext(), getURLPrefix(), and getURLSuffix()
	* must be in sync wrt how URLs are parsed and returned.
	*<p>
	* URL                                     Prefix
	* foo://host:port                         foo://host:port
	* foo://host:port/rest/of/name            foo://host:port
	* foo:///rest/of/name                     foo://
	* foo:/rest/of/name                       foo:
	* foo:rest/of/name                        foo:
	*/
	@:overload @:protected private function getURLPrefix(url : String) : String;
	
	/**
	* Determines whether two URLs are the same.
	* Default implementation uses String.equals().
	* Subclass should override if this is not appropriate.
	* This method is used by rename().
	*/
	@:overload @:protected private function urlEquals(url1 : String, url2 : String) : Bool;
	
	/**
	* Gets the context in which to continue the operation. This method
	* is called when this context is asked to process a multicomponent
	* Name in which the first component is a URL.
	* Treat the first component like a junction: resolve it and then use
	* NamingManager.getContinuationContext() to get the target context in
	* which to operate on the remainder of the name (n.getSuffix(1)).
	*/
	@:overload @:protected private function getContinuationContext(n : javax.naming.Name) : javax.naming.Context;
	
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function bind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function unbind(name : String) : Void;
	
	@:overload @:public public function unbind(name : javax.naming.Name) : Void;
	
	@:overload @:public public function rename(oldName : String, newName : String) : Void;
	
	@:overload @:public public function rename(name : javax.naming.Name, newName : javax.naming.Name) : Void;
	
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
	
	@:overload @:public public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:public public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
