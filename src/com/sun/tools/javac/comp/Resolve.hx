package com.sun.tools.javac.comp;
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
extern class Resolve
{
	/** Helper class for name resolution, used mostly by the attribution phase.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	private static var resolveKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Resolve>;
	
	public var boxingEnabled(default, null) : Bool;
	
	public var varargsEnabled(default, null) : Bool;
	
	public var allowMethodHandles(default, null) : Bool;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Resolve;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Is class accessible in given evironment?
	*  @param env    The current environment.
	*  @param c      The class whose accessibility is checked.
	*/
	@:overload public function isAccessible(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, c : TypeSymbol) : Bool;
	
	@:overload public function isAccessible(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, c : TypeSymbol, checkInner : Bool) : Bool;
	
	/** Is symbol accessible as a member of given type in given evironment?
	*  @param env    The current environment.
	*  @param site   The type of which the tested symbol is regarded
	*                as a member.
	*  @param sym    The symbol.
	*/
	@:overload public function isAccessible(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, site : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : Bool;
	
	@:overload public function isAccessible(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, site : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol, checkInner : Bool) : Bool;
	
	/** Resolve a field identifier, throw a fatal error if not found.
	*  @param pos       The position to use for error reporting.
	*  @param env       The environment current at the method invocation.
	*  @param site      The type of the qualifying expression, in which
	*                   identifier is searched.
	*  @param name      The identifier's name.
	*/
	@:overload public function resolveInternalField(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, site : com.sun.tools.javac.code.Type, name : com.sun.tools.javac.util.Name) : VarSymbol;
	
	/** print all scopes starting with scope s and proceeding outwards.
	*  used for debugging.
	*/
	@:overload public function printscopes(s : com.sun.tools.javac.code.Scope) : Void;
	
	@:overload public function printscopes(t : com.sun.tools.javac.code.Type) : Void;
	
	/** Resolve a qualified method identifier, throw a fatal error if not
	*  found.
	*  @param pos       The position to use for error reporting.
	*  @param env       The environment current at the method invocation.
	*  @param site      The type of the qualifying expression, in which
	*                   identifier is searched.
	*  @param name      The identifier's name.
	*  @param argtypes  The types of the invocation's value arguments.
	*  @param typeargtypes  The types of the invocation's type arguments.
	*/
	@:overload public function resolveInternalMethod(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, site : com.sun.tools.javac.code.Type, name : com.sun.tools.javac.util.Name, argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, typeargtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : MethodSymbol;
	
	/** Resolve a constructor, throw a fatal error if not found.
	*  @param pos       The position to use for error reporting.
	*  @param env       The environment current at the method invocation.
	*  @param site      The type to be constructed.
	*  @param argtypes  The types of the invocation's value arguments.
	*  @param typeargtypes  The types of the invocation's type arguments.
	*/
	@:overload public function resolveInternalConstructor(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, site : com.sun.tools.javac.code.Type, argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, typeargtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : MethodSymbol;
	
	/* ***************************************************************************
	*  ResolveError classes, indicating error situations when accessing symbols
	****************************************************************************/
	@:overload public function logAccessErrorInternal(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, tree : com.sun.tools.javac.tree.JCTree, type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function methodArguments(argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Dynamic;
	
	
}
@:native('com$sun$tools$javac$comp$Resolve$InapplicableMethodException') extern class Resolve_InapplicableMethodException extends java.lang.RuntimeException
{
	@:overload public function getDiagnostic() : com.sun.tools.javac.util.JCDiagnostic;
	
	
}
/**
* Root class for resolution errors. Subclass of ResolveError
* represent a different kinds of resolution error - as such they must
* specify how they map into concrete compiler diagnostics.
*/
@:native('com$sun$tools$javac$comp$Resolve$ResolveError') @:internal extern class Resolve_ResolveError extends com.sun.tools.javac.code.Symbol
{
	@:overload override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload override public function toString() : String;
	
	@:overload override public function exists() : Bool;
	
	/**
	* Create an external representation for this erroneous symbol to be
	* used during attribution - by default this returns the symbol of a
	* brand new error type which stores the original type found
	* during resolution.
	*
	* @param name     the name used during resolution
	* @param location the location from which the symbol is accessed
	*/
	@:overload private function access(name : com.sun.tools.javac.util.Name, location : TypeSymbol) : com.sun.tools.javac.code.Symbol;
	
	
}
/**
* This class is the root class of all resolution errors caused by
* an invalid symbol being found during resolution.
*/
@:native('com$sun$tools$javac$comp$Resolve$InvalidSymbolError') @:internal extern class Resolve_InvalidSymbolError extends Resolve_ResolveError
{
	@:overload override public function exists() : Bool;
	
	@:overload override public function toString() : String;
	
	@:overload override public function access(name : com.sun.tools.javac.util.Name, location : TypeSymbol) : com.sun.tools.javac.code.Symbol;
	
	
}
/**
* InvalidSymbolError error class indicating that a symbol matching a
* given name does not exists in a given site.
*/
@:native('com$sun$tools$javac$comp$Resolve$SymbolNotFoundError') @:internal extern class Resolve_SymbolNotFoundError extends Resolve_ResolveError
{
	
}
/**
* InvalidSymbolError error class indicating that a given symbol
* (either a method, a constructor or an operand) is not applicable
* given an actual arguments/type argument list.
*/
@:native('com$sun$tools$javac$comp$Resolve$InapplicableSymbolError') @:internal extern class Resolve_InapplicableSymbolError extends Resolve_InvalidSymbolError
{
	@:overload override public function toString() : String;
	
	@:overload override public function access(name : com.sun.tools.javac.util.Name, location : TypeSymbol) : com.sun.tools.javac.code.Symbol;
	
	
}
/**
* ResolveError error class indicating that a set of symbols
* (either methods, constructors or operands) is not applicable
* given an actual arguments/type argument list.
*/
@:native('com$sun$tools$javac$comp$Resolve$InapplicableSymbolsError') @:internal extern class Resolve_InapplicableSymbolsError extends Resolve_ResolveError
{
	
}
@:native('com$sun$tools$javac$comp$Resolve$InapplicableSymbolsError$Candidate') @:internal extern class Resolve_InapplicableSymbolsError_Candidate
{
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
/**
* An InvalidSymbolError error class indicating that a symbol is not
* accessible from a given site
*/
@:native('com$sun$tools$javac$comp$Resolve$AccessError') @:internal extern class Resolve_AccessError extends Resolve_InvalidSymbolError
{
	@:overload override public function exists() : Bool;
	
	
}
/**
* InvalidSymbolError error class indicating that an instance member
* has erroneously been accessed from a static context.
*/
@:native('com$sun$tools$javac$comp$Resolve$StaticError') @:internal extern class Resolve_StaticError extends Resolve_InvalidSymbolError
{
	
}
/**
* InvalidSymbolError error class indicating that a pair of symbols
* (either methods, constructors or operands) are ambiguous
* given an actual arguments/type argument list.
*/
@:native('com$sun$tools$javac$comp$Resolve$AmbiguityError') @:internal extern class Resolve_AmbiguityError extends Resolve_InvalidSymbolError
{
	
}
@:native('com$sun$tools$javac$comp$Resolve$MethodResolutionPhase') extern enum Resolve_MethodResolutionPhase
{
	BASIC;
	BOX;
	VARARITY;
	
}

