package java.lang.reflect;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Modifier
{
	/**
	* Return {@code true} if the integer argument includes the
	* {@code public} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code public} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isPublic(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code private} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code private} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isPrivate(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code protected} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code protected} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isProtected(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code static} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code static} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isStatic(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code final} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code final} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isFinal(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code synchronized} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code synchronized} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isSynchronized(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code volatile} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code volatile} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isVolatile(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code transient} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code transient} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isTransient(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code native} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code native} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isNative(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code interface} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code interface} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isInterface(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code abstract} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code abstract} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isAbstract(mod : Int) : Bool;
	
	/**
	* Return {@code true} if the integer argument includes the
	* {@code strictfp} modifier, {@code false} otherwise.
	*
	* @param   mod a set of modifiers
	* @return {@code true} if {@code mod} includes the
	* {@code strictfp} modifier; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isStrict(mod : Int) : Bool;
	
	/**
	* Return a string describing the access modifier flags in
	* the specified modifier. For example:
	* <blockquote><pre>
	*    public final synchronized strictfp
	* </pre></blockquote>
	* The modifier names are returned in an order consistent with the
	* suggested modifier orderings given in sections 8.1.1, 8.3.1, 8.4.3, 8.8.3, and 9.1.1 of
	* <cite>The Java&trade; Language Specification</cite>.
	* The full modifier ordering used by this method is:
	* <blockquote> {@code
	* public protected private abstract static final transient
	* volatile synchronized native strictfp
	* interface } </blockquote>
	* The {@code interface} modifier discussed in this class is
	* not a true modifier in the Java language and it appears after
	* all other modifiers listed by this method.  This method may
	* return a string of modifiers that are not valid modifiers of a
	* Java entity; in other words, no checking is done on the
	* possible validity of the combination of modifiers represented
	* by the input.
	*
	* Note that to perform such checking for a known kind of entity,
	* such as a constructor or method, first AND the argument of
	* {@code toString} with the appropriate mask from a method like
	* {@link #constructorModifiers} or {@link #methodModifiers}.
	*
	* @param   mod a set of modifiers
	* @return  a string representation of the set of modifiers
	* represented by {@code mod}
	*/
	@:overload @:public @:static public static function toString(mod : Int) : String;
	
	/**
	* The {@code int} value representing the {@code public}
	* modifier.
	*/
	@:public @:static @:final public static var PUBLIC(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code private}
	* modifier.
	*/
	@:public @:static @:final public static var PRIVATE(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code protected}
	* modifier.
	*/
	@:public @:static @:final public static var PROTECTED(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code static}
	* modifier.
	*/
	@:public @:static @:final public static var STATIC(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code final}
	* modifier.
	*/
	@:public @:static @:final public static var FINAL(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code synchronized}
	* modifier.
	*/
	@:public @:static @:final public static var SYNCHRONIZED(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code volatile}
	* modifier.
	*/
	@:public @:static @:final public static var VOLATILE(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code transient}
	* modifier.
	*/
	@:public @:static @:final public static var TRANSIENT(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code native}
	* modifier.
	*/
	@:public @:static @:final public static var NATIVE(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code interface}
	* modifier.
	*/
	@:public @:static @:final public static var INTERFACE(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code abstract}
	* modifier.
	*/
	@:public @:static @:final public static var ABSTRACT(default, null) : Int;
	
	/**
	* The {@code int} value representing the {@code strictfp}
	* modifier.
	*/
	@:public @:static @:final public static var STRICT(default, null) : Int;
	
	/**
	* Return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a class.
	* @return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a class.
	*
	* @jls 8.1.1 Class Modifiers
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function classModifiers() : Int;
	
	/**
	* Return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to an interface.
	* @return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to an inteface.
	*
	* @jls 9.1.1 Interface Modifiers
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function interfaceModifiers() : Int;
	
	/**
	* Return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a constructor.
	* @return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a constructor.
	*
	* @jls 8.8.3 Constructor Modifiers
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function constructorModifiers() : Int;
	
	/**
	* Return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a method.
	* @return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a method.
	*
	* @jls 8.4.3 Method Modifiers
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function methodModifiers() : Int;
	
	/**
	* Return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a field.
	* @return an {@code int} value OR-ing together the source language
	* modifiers that can be applied to a field.
	*
	* @jls 8.3.1 Field Modifiers
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function fieldModifiers() : Int;
	
	
}
