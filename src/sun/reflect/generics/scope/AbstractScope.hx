package sun.reflect.generics.scope;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractScope<D> implements sun.reflect.generics.scope.Scope
{
	/**
	* Constructor. Takes a reflective object whose scope the newly
	* constructed instance will represent.
	* @param D - A generic declaration whose scope the newly
	* constructed instance will represent
	*/
	@:overload private function new(decl : D) : Void;
	
	/**
	* Accessor for the receiver - the object whose scope this <tt>Scope</tt>
	* object represents.
	* @return The object whose scope this <tt>Scope</tt> object represents
	*/
	@:overload private function getRecvr() : D;
	
	/** This method must be implemented by any concrete subclass.
	* It must return the enclosing scope of this scope. If this scope
	* is a top-level scope, an instance of  DummyScope must be returned.
	* @return The enclosing scope of this scope
	*/
	@:overload @:abstract private function computeEnclosingScope() : sun.reflect.generics.scope.Scope;
	
	/**
	* Accessor for the enclosing scope, which is computed lazily and cached.
	* @return the enclosing scope
	*/
	@:overload private function getEnclosingScope() : sun.reflect.generics.scope.Scope;
	
	/**
	* Lookup a type variable in the scope, using its name. Returns null if
	* no type variable with this name is declared in this scope or any of its
	* surrounding scopes.
	* @param name - the name of the type variable being looked up
	* @return the requested type variable, if found
	*/
	@:overload public function lookup(name : String) : java.lang.reflect.TypeVariable<Dynamic>;
	
	
}
