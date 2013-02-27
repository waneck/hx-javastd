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
extern class Flags
{
	@:overload public static function toString(flags : haxe.Int64) : String;
	
	@:overload public static function asFlagSet(mask : haxe.Int64) : java.util.EnumSet<Flags_Flag>;
	
	/* Standard Java flags.
	*/
	public static var PUBLIC(default, null) : Int;
	
	public static var PRIVATE(default, null) : Int;
	
	public static var PROTECTED(default, null) : Int;
	
	public static var STATIC(default, null) : Int;
	
	public static var FINAL(default, null) : Int;
	
	public static var SYNCHRONIZED(default, null) : Int;
	
	public static var VOLATILE(default, null) : Int;
	
	public static var TRANSIENT(default, null) : Int;
	
	public static var NATIVE(default, null) : Int;
	
	public static var INTERFACE(default, null) : Int;
	
	public static var ABSTRACT(default, null) : Int;
	
	public static var STRICTFP(default, null) : Int;
	
	/* Flag that marks a symbol synthetic, added in classfile v49.0. */
	public static var SYNTHETIC(default, null) : Int;
	
	/** Flag that marks attribute interfaces, added in classfile v49.0. */
	public static var ANNOTATION(default, null) : Int;
	
	/** An enumeration type or an enumeration constant, added in
	*  classfile v49.0. */
	public static var ENUM(default, null) : Int;
	
	public static var StandardFlags(default, null) : Int;
	
	public static var ModifierFlags(default, null) : Int;
	
	public static var ACC_SUPER(default, null) : Int;
	
	public static var ACC_BRIDGE(default, null) : Int;
	
	public static var ACC_VARARGS(default, null) : Int;
	
	/** Flag is set if symbol is deprecated.
	*/
	public static var DEPRECATED(default, null) : Int;
	
	/** Flag is set for a variable symbol if the variable's definition
	*  has an initializer part.
	*/
	public static var HASINIT(default, null) : Int;
	
	/** Flag is set for compiler-generated anonymous method symbols
	*  that `own' an initializer block.
	*/
	public static var BLOCK(default, null) : Int;
	
	/** Flag is set for compiler-generated abstract methods that implement
	*  an interface method (Miranda methods).
	*/
	public static var IPROXY(default, null) : Int;
	
	/** Flag is set for nested classes that do not access instance members
	*  or `this' of an outer class and therefore don't need to be passed
	*  a this$n reference.  This flag is currently set only for anonymous
	*  classes in superclass constructor calls and only for pre 1.4 targets.
	*  todo: use this flag for optimizing away this$n parameters in
	*  other cases.
	*/
	public static var NOOUTERTHIS(default, null) : Int;
	
	/** Flag is set for package symbols if a package has a member or
	*  directory and therefore exists.
	*/
	public static var EXISTS(default, null) : Int;
	
	/** Flag is set for compiler-generated compound classes
	*  representing multiple variable bounds
	*/
	public static var COMPOUND(default, null) : Int;
	
	/** Flag is set for class symbols if a class file was found for this class.
	*/
	public static var CLASS_SEEN(default, null) : Int;
	
	/** Flag is set for class symbols if a source file was found for this
	*  class.
	*/
	public static var SOURCE_SEEN(default, null) : Int;
	
	/** Flag for class symbols is set and later re-set as a lock in
	*  Enter to detect cycles in the superclass/superinterface
	*  relations.  Similarly for constructor call cycle detection in
	*  Attr.
	*/
	public static var LOCKED(default, null) : Int;
	
	/** Flag for class symbols is set and later re-set to indicate that a class
	*  has been entered but has not yet been attributed.
	*/
	public static var UNATTRIBUTED(default, null) : Int;
	
	/** Flag for synthesized default constructors of anonymous classes.
	*/
	public static var ANONCONSTR(default, null) : Int;
	
	/** Flag for class symbols to indicate it has been checked and found
	*  acyclic.
	*/
	public static var ACYCLIC(default, null) : Int;
	
	/** Flag that marks bridge methods.
	*/
	public static var BRIDGE(default, null) : haxe.Int64;
	
	/** Flag that marks formal parameters.
	*/
	public static var PARAMETER(default, null) : haxe.Int64;
	
	/** Flag that marks varargs methods.
	*/
	public static var VARARGS(default, null) : haxe.Int64;
	
	/** Flag for annotation type symbols to indicate it has been
	*  checked and found acyclic.
	*/
	public static var ACYCLIC_ANN(default, null) : haxe.Int64;
	
	/** Flag that marks a generated default constructor.
	*/
	public static var GENERATEDCONSTR(default, null) : haxe.Int64;
	
	/** Flag that marks a hypothetical method that need not really be
	*  generated in the binary, but is present in the symbol table to
	*  simplify checking for erasure clashes.
	*/
	public static var HYPOTHETICAL(default, null) : haxe.Int64;
	
	/**
	* Flag that marks an internal proprietary class.
	*/
	public static var PROPRIETARY(default, null) : haxe.Int64;
	
	/**
	* Flag that marks a a multi-catch parameter
	*/
	public static var UNION(default, null) : haxe.Int64;
	
	/**
	* Flag that marks a signature-polymorphic invoke method.
	* (These occur inside java.lang.invoke.MethodHandle.)
	*/
	public static var POLYMORPHIC_SIGNATURE(default, null) : haxe.Int64;
	
	/**
	* Flag that marks a special kind of bridge methods (the ones that
	* come from restricted supertype bounds)
	*/
	public static var OVERRIDE_BRIDGE(default, null) : haxe.Int64;
	
	/**
	* Flag that marks an 'effectively final' local variable
	*/
	public static var EFFECTIVELY_FINAL(default, null) : haxe.Int64;
	
	/**
	* Flag that marks non-override equivalent methods with the same signature
	*/
	public static var CLASH(default, null) : haxe.Int64;
	
	/** Modifier masks.
	*/
	public static var AccessFlags(default, null) : Int;
	
	public static var LocalVarFlags(default, null) : haxe.Int64;
	
	@:overload public static function asModifierSet(flags : haxe.Int64) : java.util.Set<javax.lang.model.element.Modifier>;
	
	@:overload public static function isStatic(symbol : com.sun.tools.javac.code.Symbol) : Bool;
	
	@:overload public static function isEnum(symbol : com.sun.tools.javac.code.Symbol) : Bool;
	
	@:overload public static function isConstant(symbol : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol) : Bool;
	
	
}
@:native('com$sun$tools$javac$code$Flags$Flag') extern enum Flags_Flag
{
	PUBLIC;
	PRIVATE;
	PROTECTED;
	STATIC;
	FINAL;
	SYNCHRONIZED;
	VOLATILE;
	TRANSIENT;
	NATIVE;
	INTERFACE;
	ABSTRACT;
	STRICTFP;
	BRIDGE;
	SYNTHETIC;
	DEPRECATED;
	HASINIT;
	ENUM;
	IPROXY;
	NOOUTERTHIS;
	EXISTS;
	COMPOUND;
	CLASS_SEEN;
	SOURCE_SEEN;
	LOCKED;
	UNATTRIBUTED;
	ANONCONSTR;
	ACYCLIC;
	PARAMETER;
	VARARGS;
	PACKAGE;
	
}

