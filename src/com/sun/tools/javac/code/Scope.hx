package com.sun.tools.javac.code;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Scope
{
	/** Next enclosing scope (with whom this scope may share a hashtable)
	*/
	@:public public var next : com.sun.tools.javac.code.Scope;
	
	/** The scope's owner.
	*/
	@:public public var owner : com.sun.tools.javac.code.Symbol;
	
	/** A linear list that also contains all entries in
	*  reverse order of appearance (i.e later entries are pushed on top).
	*/
	@:public public var elems : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	/** A value for the empty scope.
	*/
	@:public @:static @:final public static var emptyScope(default, null) : com.sun.tools.javac.code.Scope;
	
	/** Construct a new scope, within scope next, with given owner,
	*  using a fresh table of length INITIAL_SIZE.
	*/
	@:overload @:public public function new(owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Construct a fresh scope within this scope, with same owner,
	*  which shares its table with the outer scope. Used in connection with
	*  method leave if scope access is stack-like in order to avoid allocation
	*  of fresh tables.
	*/
	@:overload @:public public function dup() : com.sun.tools.javac.code.Scope;
	
	/** Construct a fresh scope within this scope, with new owner,
	*  which shares its table with the outer scope. Used in connection with
	*  method leave if scope access is stack-like in order to avoid allocation
	*  of fresh tables.
	*/
	@:overload @:public public function dup(newOwner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Scope;
	
	/** Construct a fresh scope within this scope, with same owner,
	*  with a new hash table, whose contents initially are those of
	*  the table of its outer scope.
	*/
	@:overload @:public public function dupUnshared() : com.sun.tools.javac.code.Scope;
	
	/** Remove all entries of this scope from its table, if shared
	*  with next.
	*/
	@:overload @:public public function leave() : com.sun.tools.javac.code.Scope;
	
	/** Enter symbol sym in this scope.
	*/
	@:overload @:public public function enter(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function enter(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	/**
	* Enter symbol sym in this scope, but mark that it comes from
	* given scope `s' accessed through `origin'.  The last two
	* arguments are only used in import scopes.
	*/
	@:overload @:public public function enter(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope, origin : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function addScopeListener(sl : com.sun.tools.javac.code.Scope.Scope_ScopeListener) : Void;
	
	/** Remove symbol from this scope.  Used when an inner class
	*  attribute tells us that the class isn't a package member.
	*/
	@:overload @:public public function remove(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Enter symbol sym in this scope if not already there.
	*/
	@:overload @:public public function enterIfAbsent(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Given a class, is there already a class with same fully
	*  qualified name in this (import) scope?
	*/
	@:overload @:public public function includes(c : com.sun.tools.javac.code.Symbol) : Bool;
	
	/** Return the entry associated with given name, starting in
	*  this scope and proceeding outwards. If no entry was found,
	*  return the sentinel, which is characterized by having a null in
	*  both its scope and sym fields, whereas both fields are non-null
	*  for regular entries.
	*/
	@:overload @:public public function lookup(name : com.sun.tools.javac.util.Name) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	@:overload @:public public function lookup(name : com.sun.tools.javac.util.Name, sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	@:overload @:public public function getElements() : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function getElements(sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function getElementsByName(name : com.sun.tools.javac.util.Name) : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function getElementsByName(name : com.sun.tools.javac.util.Name, sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$code$Scope$ScopeListener') extern interface Scope_ScopeListener
{
	@:overload @:public public function symbolAdded(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function symbolRemoved(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	
}
/** A class for scope entries.
*/
@:native('com$sun$tools$javac$code$Scope$Entry') extern class Scope_Entry
{
	/** The referenced symbol.
	*  sym == null   iff   this == sentinel
	*/
	@:public public var sym : com.sun.tools.javac.code.Symbol;
	
	/** Next entry in same scope.
	*/
	@:public public var sibling : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	/** The entry's scope.
	*  scope == null   iff   this == sentinel
	*  for an entry in an import scope, this is the scope
	*  where the entry came from (i.e. was imported from).
	*/
	@:public public var scope : com.sun.tools.javac.code.Scope;
	
	@:overload @:public public function new(sym : com.sun.tools.javac.code.Symbol, shadowed : com.sun.tools.javac.code.Scope.Scope_Entry, sibling : com.sun.tools.javac.code.Scope.Scope_Entry, scope : com.sun.tools.javac.code.Scope) : Void;
	
	/** Return next entry with the same name as this entry, proceeding
	*  outwards if not found in this scope.
	*/
	@:overload @:public public function next() : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	@:overload @:public public function next(sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	@:overload @:public public function getOrigin() : com.sun.tools.javac.code.Scope;
	
	
}
@:native('com$sun$tools$javac$code$Scope$ImportScope') extern class Scope_ImportScope extends com.sun.tools.javac.code.Scope
{
	@:overload @:public public function new(owner : com.sun.tools.javac.code.Symbol) : Void;
	
	
}
@:native('com$sun$tools$javac$code$Scope$ImportScope$ImportEntry') @:internal extern class Scope_ImportScope_ImportEntry extends com.sun.tools.javac.code.Scope.Scope_Entry
{
	@:overload @:public override public function getOrigin() : com.sun.tools.javac.code.Scope;
	
	
}
@:native('com$sun$tools$javac$code$Scope$StarImportScope') extern class Scope_StarImportScope extends com.sun.tools.javac.code.Scope.Scope_ImportScope implements com.sun.tools.javac.code.Scope.Scope_ScopeListener
{
	@:overload @:public public function new(owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function importAll(fromScope : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function symbolRemoved(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function symbolAdded(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	
}
/** An empty scope, into which you can't place anything.  Used for
*  the scope for a variable initializer.
*/
@:native('com$sun$tools$javac$code$Scope$DelegatedScope') extern class Scope_DelegatedScope extends com.sun.tools.javac.code.Scope
{
	@:public @:static @:final public static var emptyTable(default, null) : java.NativeArray<com.sun.tools.javac.code.Scope.Scope_Entry>;
	
	@:overload @:public public function new(outer : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public override public function dup() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function dupUnshared() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function leave() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function enter(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function enter(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public override public function remove(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function lookup(name : com.sun.tools.javac.util.Name) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	
}
/** A class scope adds capabilities to keep track of changes in related
*  class scopes - this allows client to realize whether a class scope
*  has changed, either directly (because a new member has been added/removed
*  to this scope) or indirectly (i.e. because a new member has been
*  added/removed into a supertype scope)
*/
@:native('com$sun$tools$javac$code$Scope$CompoundScope') extern class Scope_CompoundScope extends com.sun.tools.javac.code.Scope implements com.sun.tools.javac.code.Scope.Scope_ScopeListener
{
	@:public @:static @:final public static var emptyTable(default, null) : java.NativeArray<com.sun.tools.javac.code.Scope.Scope_Entry>;
	
	@:overload @:public public function new(owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function addSubScope(that : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function symbolAdded(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function symbolRemoved(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public public function getMark() : Int;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function getElements(sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public override public function getElementsByName(name : com.sun.tools.javac.util.Name, sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : java.lang.Iterable<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public override public function lookup(name : com.sun.tools.javac.util.Name, sf : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	@:overload @:public override public function dup(newOwner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function enter(sym : com.sun.tools.javac.code.Symbol, s : com.sun.tools.javac.code.Scope, origin : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload @:public override public function remove(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	
}
@:native('com$sun$tools$javac$code$Scope$CompoundScope$CompoundScopeIterator') @:internal extern class Scope_CompoundScope_CompoundScopeIterator implements java.util.Iterator<com.sun.tools.javac.code.Symbol>
{
	@:overload @:public public function new(scopesToScan : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Scope>) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function remove() : Void;
	
	
}
/** An error scope, for which the owner should be an error symbol. */
@:native('com$sun$tools$javac$code$Scope$ErrorScope') extern class Scope_ErrorScope extends com.sun.tools.javac.code.Scope
{
	@:overload @:public public function new(errSymbol : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function dup() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function dupUnshared() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function lookup(name : com.sun.tools.javac.util.Name) : com.sun.tools.javac.code.Scope.Scope_Entry;
	
	
}
