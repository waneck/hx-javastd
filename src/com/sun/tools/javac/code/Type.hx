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
/** This class represents Java types. The class itself defines the behavior of
*  the following types:
*  <pre>
*  base types (tags: BYTE, CHAR, SHORT, INT, LONG, FLOAT, DOUBLE, BOOLEAN),
*  type `void' (tag: VOID),
*  the bottom type (tag: BOT),
*  the missing type (tag: NONE).
*  </pre>
*  <p>The behavior of the following types is defined in subclasses, which are
*  all static inner classes of this class:
*  <pre>
*  class types (tag: CLASS, class: ClassType),
*  array types (tag: ARRAY, class: ArrayType),
*  method types (tag: METHOD, class: MethodType),
*  package types (tag: PACKAGE, class: PackageType),
*  type variables (tag: TYPEVAR, class: TypeVar),
*  type arguments (tag: WILDCARD, class: WildcardType),
*  polymorphic types (tag: FORALL, class: ForAll),
*  the error type (tag: ERROR, class: ErrorType).
*  </pre>
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*
*  @see TypeTags
*/
extern class Type implements javax.lang.model.type.PrimitiveType
{
	/** Constant type: no type at all. */
	public static var noType(default, null) : Type_JCNoType;
	
	/** If this switch is turned on, the names of type variables
	*  and anonymous classes are printed with hashcodes appended.
	*/
	public static var moreInfo : Bool;
	
	/** The tag of this type.
	*
	*  @see TypeTags
	*/
	public var tag : Int;
	
	/** The defining class / interface / package / type variable
	*/
	public var tsym : TypeSymbol;
	
	/**
	* The constant value of this type, null if this type does not
	* have a constant value attribute. Only primitive types and
	* strings (ClassType) can have a constant value attribute.
	* @return the constant value attribute of this type
	*/
	@:overload public function constValue() : Dynamic;
	
	/**
	* Get the representation of this type used for modelling purposes.
	* By default, this is itself. For ErrorType, a different value
	* may be provided,
	*/
	@:overload public function getModelType() : Type;
	
	@:overload public static function getModelTypes(ts : com.sun.tools.javac.util.List<Type>) : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	/** Define a type given its tag and type symbol
	*/
	@:overload public function new(tag : Int, tsym : TypeSymbol) : Void;
	
	/** map a type function over all immediate descendants of this type
	*/
	@:overload public function map(f : Type_Mapping) : Type;
	
	/** map a type function over a list of types
	*/
	@:native('map') @:overload public static function _map(ts : com.sun.tools.javac.util.List<Type>, f : Type_Mapping) : com.sun.tools.javac.util.List<Type>;
	
	/** Define a constant type, of the same kind as this type
	*  and with given constant value
	*/
	@:overload public function constType(constValue : Dynamic) : Type;
	
	/**
	* If this is a constant type, return its underlying type.
	* Otherwise, return the type itself.
	*/
	@:overload public function baseType() : Type;
	
	/** Return the base types of a list of types.
	*/
	@:overload public static function baseTypes(ts : com.sun.tools.javac.util.List<Type>) : com.sun.tools.javac.util.List<Type>;
	
	/** The Java source which this type represents.
	*/
	@:overload public function toString() : String;
	
	/**
	* The Java source which this type list represents.  A List is
	* represented as a comma-spearated listing of the elements in
	* that list.
	*/
	@:native('toString') @:overload public static function _toString(ts : com.sun.tools.javac.util.List<Type>) : String;
	
	/**
	* The constant value of this type, converted to String
	*/
	@:overload public function stringValue() : String;
	
	/**
	* This method is analogous to isSameType, but weaker, since we
	* never complete classes. Where isSameType would complete a
	* class, equals assumes that the two types are different.
	*/
	@:overload public function equals(t : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/** Is this a constant type whose value is false?
	*/
	@:overload public function isFalse() : Bool;
	
	/** Is this a constant type whose value is true?
	*/
	@:overload public function isTrue() : Bool;
	
	@:overload public function argtypes(varargs : Bool) : String;
	
	/** Access methods.
	*/
	@:overload public function getTypeArguments() : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function getEnclosingType() : Type;
	
	@:overload public function getParameterTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function getReturnType() : Type;
	
	@:overload public function getThrownTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function getUpperBound() : Type;
	
	@:overload public function getLowerBound() : Type;
	
	/** Return all parameters of this type and all its outer types in order
	*  outer (first) to inner (last).
	*/
	@:overload public function allparams() : com.sun.tools.javac.util.List<Type>;
	
	/** Does this type contain "error" elements?
	*/
	@:overload public function isErroneous() : Bool;
	
	@:native('isErroneous') @:overload public static function _isErroneous(ts : com.sun.tools.javac.util.List<Type>) : Bool;
	
	/** Is this type parameterized?
	*  A class type is parameterized if it has some parameters.
	*  An array type is parameterized if its element type is parameterized.
	*  All other types are not parameterized.
	*/
	@:overload public function isParameterized() : Bool;
	
	/** Is this type a raw type?
	*  A class type is a raw type if it misses some of its parameters.
	*  An array type is a raw type if its element type is raw.
	*  All other types are not raw.
	*  Type validation will ensure that the only raw types
	*  in a program are types that miss all their type variables.
	*/
	@:overload public function isRaw() : Bool;
	
	@:overload public function isCompound() : Bool;
	
	@:overload public function isInterface() : Bool;
	
	@:overload public function isFinal() : Bool;
	
	@:overload public function isPrimitive() : Bool;
	
	/**
	* Does this type contain occurrences of type t?
	*/
	@:overload public function contains(t : Type) : Bool;
	
	@:native('contains') @:overload public static function _contains(ts : com.sun.tools.javac.util.List<Type>, t : Type) : Bool;
	
	/** Does this type contain an occurrence of some type in 'ts'?
	*/
	@:overload public function containsAny(ts : com.sun.tools.javac.util.List<Type>) : Bool;
	
	@:native('containsAny') @:overload public static function _containsAny(ts1 : com.sun.tools.javac.util.List<Type>, ts2 : com.sun.tools.javac.util.List<Type>) : Bool;
	
	@:overload public static function filter(ts : com.sun.tools.javac.util.List<Type>, tf : com.sun.tools.javac.util.Filter<Type>) : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function isSuperBound() : Bool;
	
	@:overload public function isExtendsBound() : Bool;
	
	@:overload public function isUnbound() : Bool;
	
	@:overload public function withTypeVar(t : Type) : Type;
	
	/** The underlying method type of this type.
	*/
	@:overload public function asMethodType() : Type_MethodType;
	
	/** Complete loading all classes in this type.
	*/
	@:overload public function complete() : Void;
	
	@:overload public function asElement() : TypeSymbol;
	
	@:overload public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
/** An abstract class for mappings from types to types
*/
@:native('com$sun$tools$javac$code$Type$Mapping') extern class Type_Mapping
{
	@:overload public function new(name : String) : Void;
	
	@:overload @:abstract public function apply(t : Type) : Type;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$code$Type$WildcardType') extern class Type_WildcardType extends Type implements javax.lang.model.type.WildcardType
{
	public var type : Type;
	
	public var kind : com.sun.tools.javac.code.BoundKind;
	
	public var bound : Type_TypeVar;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload public function new(type : Type, kind : com.sun.tools.javac.code.BoundKind, tsym : TypeSymbol) : Void;
	
	@:overload public function new(t : Type_WildcardType, bound : Type_TypeVar) : Void;
	
	@:overload public function new(type : Type, kind : com.sun.tools.javac.code.BoundKind, tsym : TypeSymbol, bound : Type_TypeVar) : Void;
	
	@:overload override public function contains(t : Type) : Bool;
	
	@:overload override public function isSuperBound() : Bool;
	
	@:overload override public function isExtendsBound() : Bool;
	
	@:overload override public function isUnbound() : Bool;
	
	@:overload override public function withTypeVar(t : Type) : Type;
	
	@:overload override public function toString() : String;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload public function getExtendsBound() : Type;
	
	@:overload public function getSuperBound() : Type;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$ClassType') extern class Type_ClassType extends Type implements javax.lang.model.type.DeclaredType
{
	/** The type parameters of this type (to be set once class is loaded).
	*/
	public var typarams_field : com.sun.tools.javac.util.List<Type>;
	
	/** A cache variable for the type parameters of this type,
	*  appended to all parameters of its enclosing class.
	*  @see #allparams
	*/
	public var allparams_field : com.sun.tools.javac.util.List<Type>;
	
	/** The supertype of this class (to be set once class is loaded).
	*/
	public var supertype_field : Type;
	
	/** The interfaces of this class (to be set once class is loaded).
	*/
	public var interfaces_field : com.sun.tools.javac.util.List<Type>;
	
	/** All the interfaces of this class, including missing ones.
	*/
	public var all_interfaces_field : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function new(outer : Type, typarams : com.sun.tools.javac.util.List<Type>, tsym : TypeSymbol) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function constType(constValue : Dynamic) : Type;
	
	/** The Java source which this type represents.
	*/
	@:overload override public function toString() : String;
	
	@:overload override public function getTypeArguments() : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function hasErasedSupertypes() : Bool;
	
	@:overload override public function getEnclosingType() : Type;
	
	@:overload public function setEnclosingType(outer : Type) : Void;
	
	@:overload override public function allparams() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function isErroneous() : Bool;
	
	@:overload override public function isParameterized() : Bool;
	
	/** A class type is raw if it misses some
	*  of its type parameter sections.
	*  After validation, this is equivalent to:
	*  allparams.isEmpty() && tsym.type.allparams.nonEmpty();
	*/
	@:overload override public function isRaw() : Bool;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload override public function contains(elem : Type) : Bool;
	
	@:overload override public function complete() : Void;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$ErasedClassType') extern class Type_ErasedClassType extends Type_ClassType
{
	@:overload public function new(outer : Type, tsym : TypeSymbol) : Void;
	
	@:overload override public function hasErasedSupertypes() : Bool;
	
	
}
@:native('com$sun$tools$javac$code$Type$UnionClassType') extern class Type_UnionClassType extends Type_ClassType implements javax.lang.model.type.UnionType
{
	@:overload public function new(ct : Type_ClassType, alternatives : com.sun.tools.javac.util.List<Type>) : Void;
	
	@:overload public function getLub() : Type;
	
	@:overload public function getAlternatives() : java.util.List<javax.lang.model.type.TypeMirror>;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$ArrayType') extern class Type_ArrayType extends Type implements javax.lang.model.type.ArrayType
{
	public var elemtype : Type;
	
	@:overload public function new(elemtype : Type, arrayClass : TypeSymbol) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function toString() : String;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function isVarargs() : Bool;
	
	@:overload override public function allparams() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function isErroneous() : Bool;
	
	@:overload override public function isParameterized() : Bool;
	
	@:overload override public function isRaw() : Bool;
	
	@:overload public function makeVarargs() : Type_ArrayType;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload override public function contains(elem : Type) : Bool;
	
	@:overload override public function complete() : Void;
	
	@:overload public function getComponentType() : Type;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$MethodType') extern class Type_MethodType extends Type implements javax.lang.model.type.ExecutableType
{
	public var argtypes : com.sun.tools.javac.util.List<Type>;
	
	public var restype : Type;
	
	public var thrown : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function new(argtypes : com.sun.tools.javac.util.List<Type>, restype : Type, thrown : com.sun.tools.javac.util.List<Type>, methodClass : TypeSymbol) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	/** The Java source which this type represents.
	*
	*  XXX 06/09/99 iris This isn't correct Java syntax, but it probably
	*  should be.
	*/
	@:overload override public function toString() : String;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function getParameterTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getReturnType() : Type;
	
	@:overload override public function getThrownTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function isErroneous() : Bool;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload override public function contains(elem : Type) : Bool;
	
	@:overload override public function asMethodType() : Type_MethodType;
	
	@:overload override public function complete() : Void;
	
	@:overload public function getTypeVariables() : com.sun.tools.javac.util.List<Type_TypeVar>;
	
	@:overload override public function asElement() : TypeSymbol;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$PackageType') extern class Type_PackageType extends Type implements javax.lang.model.type.NoType
{
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function toString() : String;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$TypeVar') extern class Type_TypeVar extends Type implements javax.lang.model.type.TypeVariable
{
	/** The upper bound of this type variable; set from outside.
	*  Must be nonempty once it is set.
	*  For a bound, `bound' is the bound type itself.
	*  Multiple bounds are expressed as a single class type which has the
	*  individual bounds as superclass, respectively interfaces.
	*  The class type then has as `tsym' a compiler generated class `c',
	*  which has a flag COMPOUND and whose owner is the type variable
	*  itself. Furthermore, the erasure_field of the class
	*  points to the first class or interface bound.
	*/
	public var bound : Type;
	
	/** The lower bound of this type variable.
	*  TypeVars don't normally have a lower bound, so it is normally set
	*  to syms.botType.
	*  Subtypes, such as CapturedType, may provide a different value.
	*/
	public var lower : Type;
	
	@:overload public function new(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol, lower : Type) : Void;
	
	@:overload public function new(tsym : TypeSymbol, bound : Type, lower : Type) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function getUpperBound() : Type;
	
	@:overload override public function getLowerBound() : Type;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload public function isCaptured() : Bool;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
/** A captured type variable comes from wildcards which can have
*  both upper and lower bound.  CapturedType extends TypeVar with
*  a lower bound.
*/
@:native('com$sun$tools$javac$code$Type$CapturedType') extern class Type_CapturedType extends Type_TypeVar
{
	public var wildcard : Type_WildcardType;
	
	@:overload public function new(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol, upper : Type, lower : Type, wildcard : Type_WildcardType) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function isCaptured() : Bool;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$code$Type$DelegatedType') extern class Type_DelegatedType extends Type
{
	public var qtype : Type;
	
	@:overload public function new(tag : Int, qtype : Type) : Void;
	
	@:overload override public function toString() : String;
	
	@:overload override public function getTypeArguments() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getEnclosingType() : Type;
	
	@:overload override public function getParameterTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getReturnType() : Type;
	
	@:overload override public function getThrownTypes() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function allparams() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getUpperBound() : Type;
	
	@:overload override public function isErroneous() : Bool;
	
	
}
@:native('com$sun$tools$javac$code$Type$ForAll') extern class Type_ForAll extends Type_DelegatedType implements javax.lang.model.type.ExecutableType
{
	public var tvars : com.sun.tools.javac.util.List<Type>;
	
	@:overload public function new(tvars : com.sun.tools.javac.util.List<Type>, qtype : Type) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function toString() : String;
	
	@:overload override public function getTypeArguments() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function isErroneous() : Bool;
	
	/**
	* Replaces this ForAll's typevars with a set of concrete Java types
	* and returns the instantiated generic type. Subclasses should override
	* in order to check that the list of types is a valid instantiation
	* of the ForAll's typevars.
	*
	* @param actuals list of actual types
	* @param types types instance
	* @return qtype where all occurrences of tvars are replaced
	* by types in actuals
	*/
	@:overload public function inst(actuals : com.sun.tools.javac.util.List<Type>, types : com.sun.tools.javac.code.Types) : Type;
	
	/**
	* Get the type-constraints of a given kind for a given type-variable of
	* this ForAll type. Subclasses should override in order to return more
	* accurate sets of constraints.
	*
	* @param tv the type-variable for which the constraint is to be retrieved
	* @param ck the constraint kind to be retrieved
	* @return the list of types specified by the selected constraint
	*/
	@:overload public function getConstraints(tv : Type_TypeVar, ck : Type_ForAll_ConstraintKind) : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload override public function contains(elem : Type) : Bool;
	
	@:overload override public function asMethodType() : Type_MethodType;
	
	@:overload override public function complete() : Void;
	
	@:overload public function getTypeVariables() : com.sun.tools.javac.util.List<Type_TypeVar>;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
/**
* Kind of type-constraint derived during type inference
*/
@:native('com$sun$tools$javac$code$Type$ForAll$ConstraintKind') extern enum Type_ForAll_ConstraintKind
{
	/**
	* upper bound constraint (a type variable must be instantiated
	* with a type T, where T is a subtype of all the types specified by
	* its EXTENDS constraints).
	*/
	EXTENDS;
	/**
	* lower bound constraint (a type variable must be instantiated
	* with a type T, where T is a supertype of all the types specified by
	* its SUPER constraints).
	*/
	SUPER;
	/**
	* equality constraint (a type variable must be instantiated to the type
	* specified by its EQUAL constraint.
	*/
	EQUAL;
	
}

/** A class for instantiatable variables, for use during type
*  inference.
*/
@:native('com$sun$tools$javac$code$Type$UndetVar') extern class Type_UndetVar extends Type_DelegatedType
{
	public var lobounds : com.sun.tools.javac.util.List<Type>;
	
	public var hibounds : com.sun.tools.javac.util.List<Type>;
	
	public var inst : Type;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload public function new(origin : Type) : Void;
	
	@:overload override public function toString() : String;
	
	@:overload override public function baseType() : Type;
	
	
}
/** Represents VOID or NONE.
*/
@:native('com$sun$tools$javac$code$Type$JCNoType') @:internal extern class Type_JCNoType extends Type implements javax.lang.model.type.NoType
{
	@:overload public function new(tag : Int) : Void;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Type$BottomType') @:internal extern class Type_BottomType extends Type implements javax.lang.model.type.NullType
{
	@:overload public function new() : Void;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	@:overload override public function constType(value : Dynamic) : Type;
	
	@:overload override public function stringValue() : String;
	
	
}
@:native('com$sun$tools$javac$code$Type$ErrorType') extern class Type_ErrorType extends Type_ClassType implements javax.lang.model.type.ErrorType
{
	@:overload public function new(originalType : Type, tsym : TypeSymbol) : Void;
	
	@:overload public function new(c : ClassSymbol, originalType : Type) : Void;
	
	@:overload public function new(name : com.sun.tools.javac.util.Name, container : TypeSymbol, originalType : Type) : Void;
	
	@:overload override public function accept<R, S>(v : Type_Visitor<R, S>, s : S) : R;
	
	@:overload override public function constType(constValue : Dynamic) : Type;
	
	@:overload override public function getEnclosingType() : Type;
	
	@:overload override public function getReturnType() : Type;
	
	@:overload public function asSub(sym : com.sun.tools.javac.code.Symbol) : Type;
	
	@:overload override public function map(f : Type_Mapping) : Type;
	
	@:overload public function isGenType(t : Type) : Bool;
	
	@:overload override public function isErroneous() : Bool;
	
	@:overload override public function isCompound() : Bool;
	
	@:overload override public function isInterface() : Bool;
	
	@:overload override public function allparams() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getTypeArguments() : com.sun.tools.javac.util.List<Type>;
	
	@:overload override public function getKind() : javax.lang.model.type.TypeKind;
	
	@:overload public function getOriginalType() : Type;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.type.TypeVisitor<R, P>, p : P) : R;
	
	
}
/**
* A visitor for types.  A visitor is used to implement operations
* (or relations) on types.  Most common operations on types are
* binary relations and this interface is designed for binary
* relations, that is, operations on the form
* Type&nbsp;&times;&nbsp;S&nbsp;&rarr;&nbsp;R.
* <!-- In plain text: Type x S -> R -->
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
* @param <S> the type of the second argument (the first being the
* type itself) of the operation implemented by this visitor; use
* Void if a second argument is not needed.
*/
@:native('com$sun$tools$javac$code$Type$Visitor') extern interface Type_Visitor<R, S>
{
	@:overload public function visitClassType(t : Type_ClassType, s : S) : R;
	
	@:overload public function visitWildcardType(t : Type_WildcardType, s : S) : R;
	
	@:overload public function visitArrayType(t : Type_ArrayType, s : S) : R;
	
	@:overload public function visitMethodType(t : Type_MethodType, s : S) : R;
	
	@:overload public function visitPackageType(t : Type_PackageType, s : S) : R;
	
	@:overload public function visitTypeVar(t : Type_TypeVar, s : S) : R;
	
	@:overload public function visitCapturedType(t : Type_CapturedType, s : S) : R;
	
	@:overload public function visitForAll(t : Type_ForAll, s : S) : R;
	
	@:overload public function visitUndetVar(t : Type_UndetVar, s : S) : R;
	
	@:overload public function visitErrorType(t : Type_ErrorType, s : S) : R;
	
	@:overload public function visitType(t : Type, s : S) : R;
	
	
}