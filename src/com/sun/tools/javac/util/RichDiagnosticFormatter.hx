package com.sun.tools.javac.util;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* A rich diagnostic formatter is a formatter that provides better integration
* with javac's type system. A diagostic is first preprocessed in order to keep
* track of each types/symbols in it; after these informations are collected,
* the diagnostic is rendered using a standard formatter, whose type/symbol printer
* has been replaced by a more refined version provided by this rich formatter.
* The rich formatter currently enables three different features: (i) simple class
* names - that is class names are displayed used a non qualified name (thus
* omitting package info) whenever possible - (ii) where clause list - a list of
* additional subdiagnostics that provide specific info about type-variables,
* captured types, intersection types that occur in the diagnostic that is to be
* formatted and (iii) type-variable disambiguation - when the diagnostic refers
* to two different type-variables with the same name, their representation is
* disambiguated by appending an index to the type variable name.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class RichDiagnosticFormatter extends com.sun.tools.javac.util.ForwardingDiagnosticFormatter<com.sun.tools.javac.util.JCDiagnostic, com.sun.tools.javac.util.AbstractDiagnosticFormatter>
{
	/* name simplifier used by this formatter */
	@:protected private var nameSimplifier : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_ClassNameSimplifier;
	
	/** Get the DiagnosticFormatter instance for this context. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.util.RichDiagnosticFormatter;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function format(diag : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	/**
	* Sets the type/symbol printer used by this formatter.
	* @param printer the rich printer to be set
	*/
	@:overload @:protected private function setRichPrinter(printer : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichPrinter) : Void;
	
	/**
	* Gets the type/symbol printer used by this formatter.
	* @return type/symbol rich printer
	*/
	@:overload @:protected private function getRichPrinter() : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichPrinter;
	
	/**
	* Preprocess a given diagnostic by looking both into its arguments and into
	* its subdiagnostics (if any). This preprocessing is responsible for
	* generating info corresponding to features like where clauses, name
	* simplification, etc.
	*
	* @param diag the diagnostic to be preprocessed
	*/
	@:overload @:protected private function preprocessDiagnostic(diag : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	/**
	* Preprocess a diagnostic argument. A type/symbol argument is
	* preprocessed by specialized type/symbol preprocessors.
	*
	* @param arg the argument to be translated
	*/
	@:overload @:protected private function preprocessArgument(arg : Dynamic) : Void;
	
	/**
	* Build a list of multiline diagnostics containing detailed info about
	* type-variables, captured types, and intersection types
	*
	* @return where clause list
	*/
	@:overload @:protected private function getWhereClauses() : com.sun.tools.javac.util.List<com.sun.tools.javac.util.JCDiagnostic>;
	
	/**
	* Preprocess a given type looking for (i) additional info (where clauses) to be
	* added to the main diagnostic (ii) names to be compacted.
	*/
	@:overload @:protected private function preprocessType(t : com.sun.tools.javac.code.Type) : Void;
	
	@:protected private var typePreprocessor : com.sun.tools.javac.code.Types.Types_UnaryVisitor<java.lang.Void>;
	
	/**
	* Preprocess a given symbol looking for (i) additional info (where clauses) to be
	* asdded to the main diagnostic (ii) names to be compacted
	*/
	@:overload @:protected private function preprocessSymbol(s : com.sun.tools.javac.code.Symbol) : Void;
	
	@:protected private var symbolPreprocessor : com.sun.tools.javac.code.Types.Types_DefaultSymbolVisitor<java.lang.Void, java.lang.Void>;
	
	@:overload @:public override public function getConfiguration() : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration;
	
	
}
/**
* This enum defines all posssible kinds of where clauses that can be
* attached by a rich diagnostic formatter to a given diagnostic
*/
@:native('com$sun$tools$javac$util$RichDiagnosticFormatter$WhereClauseKind') extern enum RichDiagnosticFormatter_WhereClauseKind
{
	/** where clause regarding a type variable */
	TYPEVAR;
	/** where clause regarding a captured type */
	CAPTURED;
	/** where clause regarding an intersection type */
	INTERSECTION;
	
}

/**
* A name simplifier keeps track of class names usages in order to determine
* whether a class name can be compacted or not. Short names are not used
* if a conflict is detected, e.g. when two classes with the same simple
* name belong to different packages - in this case the formatter reverts
* to fullnames as compact names might lead to a confusing diagnostic.
*/
@:native('com$sun$tools$javac$util$RichDiagnosticFormatter$ClassNameSimplifier') extern class RichDiagnosticFormatter_ClassNameSimplifier
{
	/**
	* Add a name usage to the simplifier's internal cache
	*/
	@:overload @:protected private function addUsage(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function simplify(s : com.sun.tools.javac.code.Symbol) : String;
	
	
}
/**
* Enhanced type/symbol printer that provides support for features like simple names
* and type variable disambiguation. This enriched printer exploits the info
* discovered during type/symbol preprocessing. This printer is set on the delegate
* formatter so that rich type/symbol info can be properly rendered.
*/
@:native('com$sun$tools$javac$util$RichDiagnosticFormatter$RichPrinter') extern class RichDiagnosticFormatter_RichPrinter extends com.sun.tools.javac.code.Printer
{
	@:overload @:public override public function localize(locale : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload @:public override public function capturedVarId(t : com.sun.tools.javac.code.Type.Type_CapturedType, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitType(t : com.sun.tools.javac.code.Type, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitCapturedType(t : com.sun.tools.javac.code.Type.Type_CapturedType, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitClassType(t : com.sun.tools.javac.code.Type.Type_ClassType, locale : java.util.Locale) : String;
	
	@:overload @:protected override private function className(t : com.sun.tools.javac.code.Type.Type_ClassType, longform : Bool, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitTypeVar(t : com.sun.tools.javac.code.Type.Type_TypeVar, locale : java.util.Locale) : String;
	
	@:overload @:protected override private function printMethodArgs(args : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, varArgs : Bool, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitClassSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, locale : java.util.Locale) : String;
	
	@:overload @:public override public function visitMethodSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, locale : java.util.Locale) : String;
	
	
}
/**
* Configuration object provided by the rich formatter.
*/
@:native('com$sun$tools$javac$util$RichDiagnosticFormatter$RichConfiguration') extern class RichDiagnosticFormatter_RichConfiguration extends com.sun.tools.javac.util.ForwardingDiagnosticFormatter.ForwardingDiagnosticFormatter_ForwardingConfiguration
{
	/** set of enabled rich formatter's features */
	@:protected private var features : java.util.EnumSet<com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature>;
	
	@:overload @:public public function new(options : com.sun.tools.javac.util.Options, formatter : com.sun.tools.javac.util.AbstractDiagnosticFormatter) : Void;
	
	/**
	* Returns a list of all the features supported by the rich formatter.
	* @return list of supported features
	*/
	@:overload @:public public function getAvailableFeatures() : java.NativeArray<com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature>;
	
	/**
	* Enable a specific feature on this rich formatter.
	* @param feature feature to be enabled
	*/
	@:overload @:public public function enable(feature : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature) : Void;
	
	/**
	* Disable a specific feature on this rich formatter.
	* @param feature feature to be disabled
	*/
	@:overload @:public public function disable(feature : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature) : Void;
	
	/**
	* Is a given feature enabled on this formatter?
	* @param feature feature to be tested
	*/
	@:overload @:public public function isEnabled(feature : com.sun.tools.javac.util.RichDiagnosticFormatter.RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature) : Bool;
	
	
}
/**
* The advanced formatting features provided by the rich formatter
*/
@:native('com$sun$tools$javac$util$RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature') extern enum RichDiagnosticFormatter_RichConfiguration_RichFormatterFeature
{
	/** a list of additional info regarding a given type/symbol */
	WHERE_CLAUSES;
	/** full class names simplification (where possible) */
	SIMPLE_NAMES;
	/** type-variable names disambiguation */
	UNIQUE_TYPEVAR_NAMES;
	
}

