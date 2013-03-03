package javax.naming.spi;
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
/**
* This class is for dealing with federations/continuations.
*
* @author Rosanna Lee
* @author Scott Seligman
* @since 1.3
*/
@:require(java3) @:internal extern class ContinuationContext implements javax.naming.Context implements javax.naming.spi.Resolver
{
	@:protected private var cpe : javax.naming.CannotProceedException;
	
	@:protected private var env : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var contCtx : javax.naming.Context;
	
	@:overload @:protected private function new(cpe : javax.naming.CannotProceedException, env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:protected private function getTargetContext() : javax.naming.Context;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	@:overload @:public public function bind(name : javax.naming.Name, newObj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : String, newObj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, newObj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, newObj : Dynamic) : Void;
	
	@:overload @:public public function unbind(name : javax.naming.Name) : Void;
	
	@:overload @:public public function unbind(name : String) : Void;
	
	@:overload @:public public function rename(name : javax.naming.Name, newName : javax.naming.Name) : Void;
	
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
	
	@:overload @:public public function addToEnvironment(propName : String, value : Dynamic) : Dynamic;
	
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function getNameInNamespace() : String;
	
	@:overload @:public public function resolveToClass(name : javax.naming.Name, contextType : Class<javax.naming.Context>) : javax.naming.spi.ResolveResult;
	
	@:overload @:public public function resolveToClass(name : String, contextType : Class<javax.naming.Context>) : javax.naming.spi.ResolveResult;
	
	@:overload @:public public function close() : Void;
	
	
}
