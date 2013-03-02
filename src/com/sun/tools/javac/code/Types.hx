package com.sun.tools.javac.code;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Types
{
	/**
	* Utility class containing various operations on types.
	*
	* <p>Unless other names are more illustrative, the following naming
	* conventions should be observed in this file:
	*
	* <dl>
	* <dt>t</dt>
	* <dd>If the first argument to an operation is a type, it should be named t.</dd>
	* <dt>s</dt>
	* <dd>Similarly, if the second argument to an operation is a type, it should be named s.</dd>
	* <dt>ts</dt>
	* <dd>If an operations takes a list of types, the first should be named ts.</dd>
	* <dt>ss</dt>
	* <dd>A second list of types should be named ss.</dd>
	* </dl>
	*
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own risk.
	* This code and its internal interfaces are subject to change or
	* deletion without notice.</b>
	*/
	private static var typesKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Types>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Types;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* The "rvalue conversion".<br>
	* The upper bound of most types is the type
	* itself.  Wildcards, on the other hand have upper
	* and lower bounds.
	* @param t a type
	* @return the upper bound of the given type
	*/
	@:overload public function upperBound(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* The "lvalue conversion".<br>
	* The lower bound of most types is the type
	* itself.  Wildcards, on the other hand have upper
	* and lower bounds.
	* @param t a type
	* @return the lower bound of the given type
	*/
	@:overload public function lowerBound(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Checks that all the arguments to a class are unbounded
	* wildcards or something else that doesn't make any restrictions
	* on the arguments. If a class isUnbounded, a raw super- or
	* subclass can be cast to it without a warning.
	* @param t a type
	* @return true iff the given type is unbounded or raw
	*/
	@:overload public function isUnbounded(t : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Return the least specific subtype of t that starts with symbol
	* sym.  If none exists, return null.  The least specific subtype
	* is determined as follows:
	*
	* <p>If there is exactly one parameterized instance of sym that is a
	* subtype of t, that parameterized instance is returned.<br>
	* Otherwise, if the plain type or raw type `sym' is a subtype of
	* type t, the type `sym' itself is returned.  Otherwise, null is
	* returned.
	*/
	@:overload public function asSub(t : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Type;
	
	/**
	* Is t a subtype of or convertible via boxing/unboxing
	* conversion to s?
	*/
	@:overload public function isConvertible(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Is t a subtype of or convertiable via boxing/unboxing
	* convertions to s?
	*/
	@:overload public function isConvertible(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Is t an unchecked subtype of s?
	*/
	@:overload public function isSubtypeUnchecked(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Is t an unchecked subtype of s?
	*/
	@:overload public function isSubtypeUnchecked(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Is t a subtype of s?<br>
	* (not defined for Method and ForAll types)
	*/
	@:overload @:final public function isSubtype(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload @:final public function isSubtypeNoCapture(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isSubtype(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, capture : Bool) : Bool;
	
	/**
	* Is t a subtype of every type in given list `ts'?<br>
	* (not defined for Method and ForAll types)<br>
	* Allows unchecked conversions.
	*/
	@:overload public function isSubtypeUnchecked(t : com.sun.tools.javac.code.Type, ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Are corresponding elements of ts subtypes of ss?  If lists are
	* of different length, return false.
	*/
	@:overload public function isSubtypes(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ss : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Bool;
	
	/**
	* Are corresponding elements of ts subtypes of ss, allowing
	* unchecked conversions?  If lists are of different length,
	* return false.
	**/
	@:overload public function isSubtypesUnchecked(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ss : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Is t a supertype of s?
	*/
	@:overload public function isSuperType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Are corresponding elements of the lists the same type?  If
	* lists are of different length, return false.
	*/
	@:overload public function isSameTypes(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ss : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Bool;
	
	/**
	* Is t the same type as s?
	*/
	@:overload public function isSameType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* A mapping that turns all unknown types in this type to fresh
	* unknown variables.
	*/
	public var fromUnknownFun : Mapping;
	
	@:overload public function containedBy(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Check if t contains s.
	*
	* <p>T contains S if:
	*
	* <p>{@code L(T) <: L(S) && U(S) <: U(T)}
	*
	* <p>This relation is only used by ClassType.isSubtype(), that
	* is,
	*
	* <p>{@code C<S> <: C<T> if T contains S.}
	*
	* <p>Because of F-bounds, this relation can lead to infinite
	* recursion.  Thus we must somehow break that recursion.  Notice
	* that containsType() is only called from ClassType.isSubtype().
	* Since the arguments have already been checked against their
	* bounds, we know:
	*
	* <p>{@code U(S) <: U(T) if T is "super" bound (U(T) *is* the bound)}
	*
	* <p>{@code L(T) <: L(S) if T is "extends" bound (L(T) is bottom)}
	*
	* @param t a type
	* @param s a type
	*/
	@:overload public function containsType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isCaptureOf(s : com.sun.tools.javac.code.Type, t : WildcardType) : Bool;
	
	@:overload public function isSameWildcard(t : WildcardType, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function containsTypeEquivalent(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ss : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Bool;
	
	@:overload public function isCastable(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Is t is castable to s?<br>
	* s is assumed to be an erased type.<br>
	* (not defined for Method and ForAll types).
	*/
	@:overload public function isCastable(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	@:overload public function disjointTypes(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ss : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Bool;
	
	/**
	* Two types or wildcards are considered disjoint if it can be
	* proven that no type can be contained in both. It is
	* conservative in that it is allowed to say that two types are
	* not disjoint, even though they actually are.
	*
	* The type C<X> is castable to C<Y> exactly if X and Y are not
	* disjoint.
	*/
	@:overload public function disjointType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Returns the lower bounds of the formals of a method.
	*/
	@:overload public function lowerBoundArgtypes(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* This relation answers the question: is impossible that
	* something of type `t' can be a subtype of `s'? This is
	* different from the question "is `t' not a subtype of `s'?"
	* when type variables are involved: Integer is not a subtype of T
	* where <T extends Number> but it is not true that Integer cannot
	* possibly be a subtype of T.
	*/
	@:overload public function notSoftSubtype(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isReifiable(t : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isArray(t : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* The element type of an array.
	*/
	@:overload public function elemtype(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function elemtypeOrType(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* The number of dimensions of an array type.
	*/
	@:overload public function dimensions(t : com.sun.tools.javac.code.Type) : Int;
	
	/**
	* Return the (most specific) base type of t that starts with the
	* given symbol.  If none exists, return null.
	*
	* @param t a type
	* @param sym a symbol
	*/
	@:overload public function asSuper(t : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Type;
	
	/**
	* Return the base type of t or any of its outer types that starts
	* with the given symbol.  If none exists, return null.
	*
	* @param t a type
	* @param sym a symbol
	*/
	@:overload public function asOuterSuper(t : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Type;
	
	/**
	* Return the base type of t or any of its enclosing types that
	* starts with the given symbol.  If none exists, return null.
	*
	* @param t a type
	* @param sym a symbol
	*/
	@:overload public function asEnclosingSuper(t : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Type;
	
	/**
	* The type of given symbol, seen as a member of t.
	*
	* @param t a type
	* @param sym a symbol
	*/
	@:overload public function memberType(t : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Type;
	
	@:overload public function isAssignable(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	/**
	* Is t assignable to s?<br>
	* Equivalent to subtype except for constant values and raw
	* types.<br>
	* (not defined for Method and ForAll types)
	*/
	@:overload public function isAssignable(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warn : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* The erasure of t {@code |t|} -- the type that results when all
	* type parameters in t are deleted.
	*/
	@:overload public function erasure(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function erasure(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function erasureRecursive(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function erasureRecursive(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Make a compound type from non-empty list of types
	*
	* @param bounds            the types from which the compound type is formed
	* @param supertype         is objectType if all bounds are interfaces,
	*                          null otherwise.
	*/
	@:overload public function makeCompoundType(bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, supertype : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Same as {@link #makeCompoundType(List,Type)}, except that the
	* second parameter is computed directly. Note that this might
	* cause a symbol completion.  Hence, this version of
	* makeCompoundType may not be called during a classfile read.
	*/
	@:overload public function makeCompoundType(bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	/**
	* A convenience wrapper for {@link #makeCompoundType(List)}; the
	* arguments are converted to a list and passed to the other
	* method.  Note that this might cause a symbol completion.
	* Hence, this version of makeCompoundType may not be called
	* during a classfile read.
	*/
	@:overload public function makeCompoundType(bound1 : com.sun.tools.javac.code.Type, bound2 : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function supertype(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Return the interfaces implemented by this class.
	*/
	@:overload public function interfaces(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function isDerivedRaw(t : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isDerivedRawInternal(t : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isDerivedRaw(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Bool;
	
	/**
	* Set the bounds field of the given type variable to reflect a
	* (possibly multiple) list of bounds.
	* @param t                 a type variable
	* @param bounds            the bounds, must be nonempty
	* @param supertype         is objectType if all bounds are interfaces,
	*                          null otherwise.
	*/
	@:overload public function setBounds(t : TypeVar, bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, supertype : com.sun.tools.javac.code.Type) : Void;
	
	/**
	* Same as {@link #setBounds(Type.TypeVar,List,Type)}, except that
	* third parameter is computed directly, as follows: if all
	* all bounds are interface types, the computed supertype is Object,
	* otherwise the supertype is simply left null (in this case, the supertype
	* is assumed to be the head of the bound list passed as second argument).
	* Note that this check might cause a symbol completion. Hence, this version of
	* setBounds may not be called during a classfile read.
	*/
	@:overload public function setBounds(t : TypeVar, bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Void;
	
	/**
	* Return list of bounds of the given type variable.
	*/
	@:overload public function getBounds(t : TypeVar) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* If the given type is a (possibly selected) type variable,
	* return the bounding class of this type, otherwise return the
	* type itself.
	*/
	@:overload public function classBound(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Returns true iff the first signature is a <em>sub
	* signature</em> of the other.  This is <b>not</b> an equivalence
	* relation.
	*
	* @jls section 8.4.2.
	* @see #overrideEquivalent(Type t, Type s)
	* @param t first signature (possibly raw).
	* @param s second signature (could be subjected to erasure).
	* @return true if t is a sub signature of s.
	*/
	@:overload public function isSubSignature(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function isSubSignature(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, strict : Bool) : Bool;
	
	/**
	* Returns true iff these signatures are related by <em>override
	* equivalence</em>.  This is the natural extension of
	* isSubSignature to an equivalence relation.
	*
	* @jls section 8.4.2.
	* @see #isSubSignature(Type t, Type s)
	* @param t a signature (possible raw, could be subjected to
	* erasure).
	* @param s a signature (possible raw, could be subjected to
	* erasure).
	* @return true if either argument is a sub signature of the other.
	*/
	@:overload public function overrideEquivalent(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function implementation(ms : MethodSymbol, origin : TypeSymbol, checkResult : Bool, implFilter : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : MethodSymbol;
	
	@:overload public function membersClosure(site : com.sun.tools.javac.code.Type, skipInterface : Bool) : CompoundScope;
	
	/**
	* Does t have the same arguments as s?  It is assumed that both
	* types are (possibly polymorphic) method types.  Monomorphic
	* method types "have the same arguments", if their argument lists
	* are equal.  Polymorphic method types "have the same arguments",
	* if they have the same arguments after renaming all type
	* variables of one to corresponding type variables in the other,
	* where correspondence is by position in the type parameter list.
	*/
	@:overload public function hasSameArgs(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function hasSameArgs(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, strict : Bool) : Bool;
	
	@:overload public function subst(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, from : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Substitute all occurrences of a type in `from' with the
	* corresponding type in `to' in 't'. Match lists `from' and `to'
	* from the right: If lists have different length, discard leading
	* elements of the longer list.
	*/
	@:overload public function subst(t : com.sun.tools.javac.code.Type, from : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	@:overload public function substBounds(tvars : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, from : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function substBound(t : TypeVar, from : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : TypeVar;
	
	/** Create new vector of type variables from list of variables
	*  changing all recursive bounds from old to new list.
	*/
	@:overload public function newInstances(tvars : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function createMethodTypeWithParameters(original : com.sun.tools.javac.code.Type, newParams : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	@:overload public function createMethodTypeWithThrown(original : com.sun.tools.javac.code.Type, newThrown : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	@:overload public function createMethodTypeWithReturn(original : com.sun.tools.javac.code.Type, newReturn : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function createErrorType(originalType : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function createErrorType(c : ClassSymbol, originalType : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function createErrorType(name : com.sun.tools.javac.util.Name, container : TypeSymbol, originalType : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* The rank of a class is the length of the longest path between
	* the class and java.lang.Object in the class inheritance
	* graph. Undefined for all but reference types.
	*/
	@:overload public function rank(t : com.sun.tools.javac.code.Type) : Int;
	
	/**
	* Helper method for generating a string representation of a given type
	* accordingly to a given locale
	*/
	@:overload public function toString(t : com.sun.tools.javac.code.Type, locale : java.util.Locale) : String;
	
	/**
	* Helper method for generating a string representation of a given type
	* accordingly to a given locale
	*/
	@:overload public function toString(t : com.sun.tools.javac.code.Symbol, locale : java.util.Locale) : String;
	
	/**
	* This toString is slightly more descriptive than the one on Type.
	*
	* @deprecated Types.toString(Type t, Locale l) provides better support
	* for localization
	*/
	@:overload public function toString(t : com.sun.tools.javac.code.Type) : String;
	
	/**
	* Returns the closure of a class or interface type.
	*/
	@:overload public function closure(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Insert a type in a closure
	*/
	@:overload public function insert(cl : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Form the union of two closures
	*/
	@:overload public function union(cl1 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, cl2 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Intersect two closures
	*/
	@:overload public function intersect(cl1 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, cl2 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Return the least upper bound of pair of types.  if the lub does
	* not exist return null.
	*/
	@:overload public function lub(t1 : com.sun.tools.javac.code.Type, t2 : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Return the least upper bound (lub) of set of types.  If the lub
	* does not exist return the type of null (bottom).
	*/
	@:overload public function lub(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	@:overload public function glb(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.code.Type;
	
	@:overload public function glb(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Compute a hash code on a type.
	*/
	@:overload public static function hashCode(t : com.sun.tools.javac.code.Type) : Int;
	
	/**
	* Does t have a result that is a subtype of the result type of s,
	* suitable for covariant returns?  It is assumed that both types
	* are (possibly polymorphic) method types.  Monomorphic method
	* types are handled in the obvious way.  Polymorphic method types
	* require renaming all type variables of one to corresponding
	* type variables in the other, where correspondence is by
	* position in the type parameter list. */
	@:overload public function resultSubtype(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warner : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Return-Type-Substitutable.
	* @jls section 8.4.5
	*/
	@:overload public function returnTypeSubstitutable(r1 : com.sun.tools.javac.code.Type, r2 : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function returnTypeSubstitutable(r1 : com.sun.tools.javac.code.Type, r2 : com.sun.tools.javac.code.Type, r2res : com.sun.tools.javac.code.Type, warner : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Is t an appropriate return type in an overrider for a
	* method that returns s?
	*/
	@:overload public function covariantReturnType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type, warner : com.sun.tools.javac.util.Warner) : Bool;
	
	/**
	* Return the class that boxes the given primitive.
	*/
	@:overload public function boxedClass(t : com.sun.tools.javac.code.Type) : ClassSymbol;
	
	/**
	* Return the boxed type if 't' is primitive, otherwise return 't' itself.
	*/
	@:overload public function boxedTypeOrType(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Return the primitive type corresponding to a boxed type.
	*/
	@:overload public function unboxedType(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	/**
	* Capture conversion as specified by the JLS.
	*/
	@:overload public function capture(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function capture(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function freshTypeVariables(types : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/**
	* Adapt a type by computing a substitution which maps a source
	* type to a target type.
	*
	* @param source    the source type
	* @param target    the target type
	* @param from      the type variables of the computed substitution
	* @param to        the types of the computed substitution.
	*/
	@:overload public function adapt(source : com.sun.tools.javac.code.Type, target : com.sun.tools.javac.code.Type, from : com.sun.tools.javac.util.ListBuffer<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.ListBuffer<com.sun.tools.javac.code.Type>) : Void;
	
	@:overload public function getRetention(a : com.sun.tools.javac.code.Attribute.Attribute_Compound) : com.sun.tools.javac.code.Attribute.Attribute_RetentionPolicy;
	
	
}
@:native('com$sun$tools$javac$code$Types$ImplementationCache') @:internal extern class Types_ImplementationCache
{
	
}
@:native('com$sun$tools$javac$code$Types$ImplementationCache$Entry') @:internal extern class Types_ImplementationCache_Entry
{
	@:overload public function new(cachedImpl : MethodSymbol, scopeFilter : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>, checkResult : Bool, prevMark : Int) : Void;
	
	
}
@:native('com$sun$tools$javac$code$Types$MembersClosureCache') @:internal extern class Types_MembersClosureCache extends Types_SimpleVisitor<CompoundScope, Null<Bool>>
{
	/** members closure visitor methods **/
	@:overload public function visitType(t : com.sun.tools.javac.code.Type, skipInterface : Null<Bool>) : CompoundScope;
	
	@:overload public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, skipInterface : Null<Bool>) : CompoundScope;
	
	@:overload public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, skipInterface : Null<Bool>) : CompoundScope;
	
	
}
@:native('com$sun$tools$javac$code$Types$MembersClosureCache$Entry') @:internal extern class Types_MembersClosureCache_Entry
{
	@:overload public function new(skipInterfaces : Bool, compoundScope : CompoundScope) : Void;
	
	
}
@:native('com$sun$tools$javac$code$Types$HasSameArgs') @:internal extern class Types_HasSameArgs extends Types_TypeRelation
{
	@:overload public function new(strict : Bool) : Void;
	
	@:overload public function visitType(t : com.sun.tools.javac.code.Type, s : com.sun.tools.javac.code.Type) : Null<Bool>;
	
	@:overload public function visitMethodType(t : com.sun.tools.javac.code.Type.Type_MethodType, s : com.sun.tools.javac.code.Type) : Null<Bool>;
	
	@:overload public function visitForAll(t : com.sun.tools.javac.code.Type.Type_ForAll, s : com.sun.tools.javac.code.Type) : Null<Bool>;
	
	@:overload public function visitErrorType(t : com.sun.tools.javac.code.Type.Type_ErrorType, s : com.sun.tools.javac.code.Type) : Null<Bool>;
	
	
}
@:native('com$sun$tools$javac$code$Types$Subst') @:internal extern class Types_Subst extends Types_UnaryVisitor<com.sun.tools.javac.code.Type>
{
	@:overload public function new(from : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, to : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Void;
	
	@:overload public function visitType(t : com.sun.tools.javac.code.Type, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitMethodType(t : com.sun.tools.javac.code.Type.Type_MethodType, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitWildcardType(t : com.sun.tools.javac.code.Type.Type_WildcardType, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitArrayType(t : com.sun.tools.javac.code.Type.Type_ArrayType, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitForAll(t : com.sun.tools.javac.code.Type.Type_ForAll, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitErrorType(t : com.sun.tools.javac.code.Type.Type_ErrorType, ignored : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	
}
@:native('com$sun$tools$javac$code$Types$TypePair') @:internal extern class Types_TypePair
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('com$sun$tools$javac$code$Types$Adapter') @:internal extern class Types_Adapter extends Types_SimpleVisitor<java.lang.Void, com.sun.tools.javac.code.Type>
{
	@:overload public function adapt(source : com.sun.tools.javac.code.Type, target : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function visitClassType(source : com.sun.tools.javac.code.Type.Type_ClassType, target : com.sun.tools.javac.code.Type) : java.lang.Void;
	
	@:overload public function visitArrayType(source : com.sun.tools.javac.code.Type.Type_ArrayType, target : com.sun.tools.javac.code.Type) : java.lang.Void;
	
	@:overload public function visitWildcardType(source : com.sun.tools.javac.code.Type.Type_WildcardType, target : com.sun.tools.javac.code.Type) : java.lang.Void;
	
	@:overload public function visitTypeVar(source : com.sun.tools.javac.code.Type.Type_TypeVar, target : com.sun.tools.javac.code.Type) : java.lang.Void;
	
	@:overload public function visitType(source : com.sun.tools.javac.code.Type, target : com.sun.tools.javac.code.Type) : java.lang.Void;
	
	
}
@:native('com$sun$tools$javac$code$Types$AdaptFailure') extern class Types_AdaptFailure extends java.lang.RuntimeException
{
	
}
@:native('com$sun$tools$javac$code$Types$Rewriter') @:internal extern class Types_Rewriter extends Types_UnaryVisitor<com.sun.tools.javac.code.Type>
{
	@:overload public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, s : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitType(t : com.sun.tools.javac.code.Type, s : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitCapturedType(t : com.sun.tools.javac.code.Type.Type_CapturedType, s : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, s : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitWildcardType(t : com.sun.tools.javac.code.Type.Type_WildcardType, s : java.lang.Void) : com.sun.tools.javac.code.Type;
	
	
}
/**
* A wrapper for a type that allows use in sets.
*/
@:native('com$sun$tools$javac$code$Types$SingletonType') @:internal extern class Types_SingletonType
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
/**
* A default visitor for types.  All visitor methods except
* visitType are implemented by delegating to visitType.  Concrete
* subclasses must provide an implementation of visitType and can
* override other methods as needed.
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
* @param <S> the type of the second argument (the first being the
* type itself) of the operation implemented by this visitor; use
* Void if a second argument is not needed.
*/
@:native('com$sun$tools$javac$code$Types$DefaultTypeVisitor') extern class Types_DefaultTypeVisitor<R, S> implements com.sun.tools.javac.code.Type.Type_Visitor<R, S>
{
	@:overload @:final public function visit(t : com.sun.tools.javac.code.Type, s : S) : R;
	
	@:overload public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, s : S) : R;
	
	@:overload public function visitWildcardType(t : com.sun.tools.javac.code.Type.Type_WildcardType, s : S) : R;
	
	@:overload public function visitArrayType(t : com.sun.tools.javac.code.Type.Type_ArrayType, s : S) : R;
	
	@:overload public function visitMethodType(t : com.sun.tools.javac.code.Type.Type_MethodType, s : S) : R;
	
	@:overload public function visitPackageType(t : com.sun.tools.javac.code.Type.Type_PackageType, s : S) : R;
	
	@:overload public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, s : S) : R;
	
	@:overload public function visitCapturedType(t : com.sun.tools.javac.code.Type.Type_CapturedType, s : S) : R;
	
	@:overload public function visitForAll(t : com.sun.tools.javac.code.Type.Type_ForAll, s : S) : R;
	
	@:overload public function visitUndetVar(t : com.sun.tools.javac.code.Type.Type_UndetVar, s : S) : R;
	
	@:overload public function visitErrorType(t : com.sun.tools.javac.code.Type.Type_ErrorType, s : S) : R;
	
	@:overload public function visitClassType(t : Type_ClassType, s : S) : R;
	
	@:overload public function visitMethodType(t : Type_MethodType, s : S) : R;
	
	@:overload public function visitUndetVar(t : Type_UndetVar, s : S) : R;
	
	@:overload public function visitErrorType(t : Type_ErrorType, s : S) : R;
	
	@:overload public function visitForAll(t : Type_ForAll, s : S) : R;
	
	@:overload public function visitCapturedType(t : Type_CapturedType, s : S) : R;
	
	@:overload public function visitType(t : Type, s : S) : R;
	
	@:overload public function visitWildcardType(t : Type_WildcardType, s : S) : R;
	
	@:overload public function visitTypeVar(t : Type_TypeVar, s : S) : R;
	
	@:overload public function visitArrayType(t : Type_ArrayType, s : S) : R;
	
	@:overload public function visitPackageType(t : Type_PackageType, s : S) : R;
	
	
}
/**
* A default visitor for symbols.  All visitor methods except
* visitSymbol are implemented by delegating to visitSymbol.  Concrete
* subclasses must provide an implementation of visitSymbol and can
* override other methods as needed.
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
* @param <S> the type of the second argument (the first being the
* symbol itself) of the operation implemented by this visitor; use
* Void if a second argument is not needed.
*/
@:native('com$sun$tools$javac$code$Types$DefaultSymbolVisitor') extern class Types_DefaultSymbolVisitor<R, S> implements com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, S>
{
	@:overload @:final public function visit(s : com.sun.tools.javac.code.Symbol, arg : S) : R;
	
	@:overload public function visitClassSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, arg : S) : R;
	
	@:overload public function visitMethodSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, arg : S) : R;
	
	@:overload public function visitOperatorSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_OperatorSymbol, arg : S) : R;
	
	@:overload public function visitPackageSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol, arg : S) : R;
	
	@:overload public function visitTypeSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, arg : S) : R;
	
	@:overload public function visitVarSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol, arg : S) : R;
	
	@:overload public function visitPackageSymbol(s : Symbol_PackageSymbol, arg : Dynamic) : R;
	
	@:overload public function visitClassSymbol(s : Symbol_ClassSymbol, arg : Dynamic) : R;
	
	@:overload public function visitTypeSymbol(s : Symbol_TypeSymbol, arg : Dynamic) : R;
	
	@:overload public function visitOperatorSymbol(s : Symbol_OperatorSymbol, arg : Dynamic) : R;
	
	@:overload public function visitSymbol(s : Symbol, arg : Dynamic) : R;
	
	@:overload public function visitMethodSymbol(s : Symbol_MethodSymbol, arg : Dynamic) : R;
	
	@:overload public function visitVarSymbol(s : Symbol_VarSymbol, arg : Dynamic) : R;
	
	
}
/**
* A <em>simple</em> visitor for types.  This visitor is simple as
* captured wildcards, for-all types (generic methods), and
* undetermined type variables (part of inference) are hidden.
* Captured wildcards are hidden by treating them as type
* variables and the rest are hidden by visiting their qtypes.
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
* @param <S> the type of the second argument (the first being the
* type itself) of the operation implemented by this visitor; use
* Void if a second argument is not needed.
*/
@:native('com$sun$tools$javac$code$Types$SimpleVisitor') extern class Types_SimpleVisitor<R, S> extends Types_DefaultTypeVisitor<R, S>
{
	@:overload public function visitCapturedType(t : CapturedType, s : S) : R;
	
	@:overload public function visitForAll(t : ForAll, s : S) : R;
	
	@:overload public function visitUndetVar(t : UndetVar, s : S) : R;
	
	
}
/**
* A plain relation on types.  That is a 2-ary function on the
* form Type&nbsp;&times;&nbsp;Type&nbsp;&rarr;&nbsp;Boolean.
* <!-- In plain text: Type x Type -> Boolean -->
*/
@:native('com$sun$tools$javac$code$Types$TypeRelation') extern class Types_TypeRelation extends Types_SimpleVisitor<Null<Bool>, com.sun.tools.javac.code.Type>
{
	
}
/**
* A convenience visitor for implementing operations that only
* require one argument (the type itself), that is, unary
* operations.
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
*/
@:native('com$sun$tools$javac$code$Types$UnaryVisitor') extern class Types_UnaryVisitor<R> extends Types_SimpleVisitor<R, java.lang.Void>
{
	@:overload @:final public function visit(t : com.sun.tools.javac.code.Type) : R;
	
	
}
/**
* A visitor for implementing a mapping from types to types.  The
* default behavior of this class is to implement the identity
* mapping (mapping a type to itself).  This can be overridden in
* subclasses.
*
* @param <S> the type of the second argument (the first being the
* type itself) of this mapping; use Void if a second argument is
* not needed.
*/
@:native('com$sun$tools$javac$code$Types$MapVisitor') extern class Types_MapVisitor<S> extends Types_DefaultTypeVisitor<com.sun.tools.javac.code.Type, S>
{
	@:overload @:final public function visit(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload override public function visitType(t : com.sun.tools.javac.code.Type, s : S) : com.sun.tools.javac.code.Type;
	
	
}
