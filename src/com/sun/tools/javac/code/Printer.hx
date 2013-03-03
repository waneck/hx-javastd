package com.sun.tools.javac.code;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A combined type/symbol visitor for generating non-trivial localized string
* representation of types and symbols.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class Printer implements com.sun.tools.javac.code.Type.Type_Visitor<String, java.util.Locale> implements com.sun.tools.javac.code.Symbol.Symbol_Visitor<String, java.util.Locale>
{
	/**
	* This method should be overriden in order to provide proper i18n support.
	*
	* @param locale the locale in which the string is to be rendered
	* @param key the key corresponding to the message to be displayed
	* @param args a list of optional arguments
	* @return localized string representation
	*/
	@:overload @:protected @:abstract private function localize(locale : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Maps a captured type into an unique identifier.
	*
	* @param t the captured type for which an id is to be retrieved
	* @param locale locale settings
	* @return unique id representing this captured type
	*/
	@:overload @:protected @:abstract private function capturedVarId(t : com.sun.tools.javac.code.Type.Type_CapturedType, locale : java.util.Locale) : String;
	
	/**
	* Create a printer with default i18n support provided by Messages. By default,
	* captured types ids are generated using hashcode.
	*
	* @param messages Messages class to be used for i18n
	* @return printer visitor instance
	*/
	@:overload @:public @:static public static function createStandardPrinter(messages : com.sun.tools.javac.api.Messages) : com.sun.tools.javac.code.Printer;
	
	/**
	* Get a localized string representation for all the types in the input list.
	*
	* @param ts types to be displayed
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:public public function visitTypes(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, locale : java.util.Locale) : String;
	
	/**
	* * Get a localized string representation for all the symbols in the input list.
	*
	* @param ts symbols to be displayed
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:public public function visitSymbols(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Symbol>, locale : java.util.Locale) : String;
	
	/**
	* Get a localized string represenation for a given type.
	*
	* @param ts type to be displayed
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:public public function visit(t : com.sun.tools.javac.code.Type, locale : java.util.Locale) : String;
	
	/**
	* Get a localized string represenation for a given symbol.
	*
	* @param ts symbol to be displayed
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:public public function visit(s : com.sun.tools.javac.code.Symbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitCapturedType(t : com.sun.tools.javac.code.Type.Type_CapturedType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitForAll(t : com.sun.tools.javac.code.Type.Type_ForAll, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitUndetVar(t : com.sun.tools.javac.code.Type.Type_UndetVar, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitArrayType(t : com.sun.tools.javac.code.Type.Type_ArrayType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitMethodType(t : com.sun.tools.javac.code.Type.Type_MethodType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitPackageType(t : com.sun.tools.javac.code.Type.Type_PackageType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitWildcardType(t : com.sun.tools.javac.code.Type.Type_WildcardType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitErrorType(t : com.sun.tools.javac.code.Type.Type_ErrorType, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitType(t : com.sun.tools.javac.code.Type, locale : java.util.Locale) : String;
	
	/**
	* Converts a class name into a (possibly localized) string. Anonymous
	* inner classes gets converted into a localized string.
	*
	* @param t the type of the class whose name is to be rendered
	* @param longform if set, the class' fullname is displayed - if unset the
	* short name is chosen (w/o package)
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:protected private function className(t : com.sun.tools.javac.code.Type.Type_ClassType, longform : Bool, locale : java.util.Locale) : String;
	
	/**
	* Converts a set of method argument types into their corresponding
	* localized string representation.
	*
	* @param args arguments to be rendered
	* @param varArgs if true, the last method argument is regarded as a vararg
	* @param locale the locale in which the string is to be rendered
	* @return localized string representation
	*/
	@:overload @:protected private function printMethodArgs(args : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, varArgs : Bool, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitClassSymbol(sym : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitMethodSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitOperatorSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_OperatorSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitPackageSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitTypeSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitVarSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitSymbol(s : com.sun.tools.javac.code.Symbol, locale : java.util.Locale) : String;
	
	@:overload @:public public function visitArrayType(t : com.sun.tools.javac.code.Type.Type_ArrayType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitClassSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitPackageSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitVarSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitErrorType(t : com.sun.tools.javac.code.Type.Type_ErrorType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitForAll(t : com.sun.tools.javac.code.Type.Type_ForAll, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitMethodSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitOperatorSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_OperatorSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitMethodType(t : com.sun.tools.javac.code.Type.Type_MethodType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitUndetVar(t : com.sun.tools.javac.code.Type.Type_UndetVar, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitTypeSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitWildcardType(t : com.sun.tools.javac.code.Type.Type_WildcardType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitType(t : com.sun.tools.javac.code.Type, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitSymbol(s : com.sun.tools.javac.code.Symbol, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitPackageType(t : com.sun.tools.javac.code.Type.Type_PackageType, s : Dynamic) : Dynamic;
	
	@:overload @:public public function visitCapturedType(t : com.sun.tools.javac.code.Type.Type_CapturedType, s : Dynamic) : Dynamic;
	
	
}
