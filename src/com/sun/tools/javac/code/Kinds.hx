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
/** Internal symbol kinds, which distinguish between elements of
*  different subclasses of Symbol. Symbol kinds are organized so they can be
*  or'ed to sets.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Kinds
{
	/** The empty set of kinds.
	*/
	@:public @:final @:static public static var NIL(default, null) : Int;
	
	/** The kind of package symbols.
	*/
	@:public @:final @:static public static var PCK(default, null) : Int;
	
	/** The kind of type symbols (classes, interfaces and type variables).
	*/
	@:public @:final @:static public static var TYP(default, null) : Int;
	
	/** The kind of variable symbols.
	*/
	@:public @:final @:static public static var VAR(default, null) : Int;
	
	/** The kind of values (variables or non-variable expressions), includes VAR.
	*/
	@:public @:final @:static public static var VAL(default, null) : Int;
	
	/** The kind of methods.
	*/
	@:public @:final @:static public static var MTH(default, null) : Int;
	
	/** The error kind, which includes all other kinds.
	*/
	@:public @:final @:static public static var ERR(default, null) : Int;
	
	/** The set of all kinds.
	*/
	@:public @:final @:static public static var AllKinds(default, null) : Int;
	
	/** Kinds for erroneous symbols that complement the above
	*/
	@:public @:static @:final public static var ERRONEOUS(default, null) : Int;
	
	@:public @:static @:final public static var AMBIGUOUS(default, null) : Int;
	
	@:public @:static @:final public static var HIDDEN(default, null) : Int;
	
	@:public @:static @:final public static var STATICERR(default, null) : Int;
	
	@:public @:static @:final public static var ABSENT_VAR(default, null) : Int;
	
	@:public @:static @:final public static var WRONG_MTHS(default, null) : Int;
	
	@:public @:static @:final public static var WRONG_MTH(default, null) : Int;
	
	@:public @:static @:final public static var ABSENT_MTH(default, null) : Int;
	
	@:public @:static @:final public static var ABSENT_TYP(default, null) : Int;
	
	/** A KindName representing a given symbol kind
	*/
	@:overload @:public @:static public static function kindName(kind : Int) : com.sun.tools.javac.code.Kinds.Kinds_KindName;
	
	/** A KindName representing a given symbol
	*/
	@:overload @:public @:static public static function kindName(sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Kinds.Kinds_KindName;
	
	/** A set of KindName(s) representing a set of symbol's kinds.
	*/
	@:overload @:public @:static public static function kindNames(kind : Int) : java.util.EnumSet<com.sun.tools.javac.code.Kinds.Kinds_KindName>;
	
	/** A KindName representing the kind of a given class/interface type.
	*/
	@:overload @:public @:static public static function typeKindName(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Kinds.Kinds_KindName;
	
	/** A KindName representing the kind of a a missing symbol, given an
	*  error kind.
	* */
	@:overload @:public @:static public static function absentKind(kind : Int) : com.sun.tools.javac.code.Kinds.Kinds_KindName;
	
	
}
@:native('com$sun$tools$javac$code$Kinds$KindName') extern enum Kinds_KindName
{
	ANNOTATION;
	CONSTRUCTOR;
	INTERFACE;
	ENUM;
	STATIC;
	TYPEVAR;
	BOUND;
	VAR;
	VAL;
	METHOD;
	CLASS;
	STATIC_INIT;
	INSTANCE_INIT;
	PACKAGE;
	
}

