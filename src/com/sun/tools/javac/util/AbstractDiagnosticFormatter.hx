package com.sun.tools.javac.util;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This abstract class provides a basic implementation of the functionalities that should be provided
* by any formatter used by javac. Among the main features provided by AbstractDiagnosticFormatter are:
*
* <ul>
*  <li> Provides a standard implementation of the visitor-like methods defined in the interface DiagnisticFormatter.
*  Those implementations are specifically targeting JCDiagnostic objects.
*  <li> Provides basic support for i18n and a method for executing all locale-dependent conversions
*  <li> Provides the formatting logic for rendering the arguments of a JCDiagnostic object.
* <ul>
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class AbstractDiagnosticFormatter implements com.sun.tools.javac.api.DiagnosticFormatter<com.sun.tools.javac.util.JCDiagnostic>
{
	/**
	* JavacMessages object used by this formatter for i18n.
	*/
	private var messages : com.sun.tools.javac.util.JavacMessages;
	
	/**
	* Current depth level of the disgnostic being formatted
	* (!= 0 for subdiagnostics)
	*/
	private var depth : Int;
	
	/**
	* Initialize an AbstractDiagnosticFormatter by setting its JavacMessages object.
	* @param messages
	*/
	@:overload private function new(messages : com.sun.tools.javac.util.JavacMessages, config : AbstractDiagnosticFormatter_SimpleConfiguration) : Void;
	
	@:overload public function formatKind(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload public function format(d : com.sun.tools.javac.util.JCDiagnostic, locale : java.util.Locale) : String;
	
	@:overload @:abstract private function formatDiagnostic(d : com.sun.tools.javac.util.JCDiagnostic, locale : java.util.Locale) : String;
	
	@:overload public function formatPosition(d : com.sun.tools.javac.util.JCDiagnostic, pk : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_PositionKind, l : java.util.Locale) : String;
	
	@:overload public function formatSource(d : com.sun.tools.javac.util.JCDiagnostic, fullname : Bool, l : java.util.Locale) : String;
	
	/**
	* Format the arguments of a given diagnostic.
	*
	* @param d diagnostic whose arguments are to be formatted
	* @param l locale object to be used for i18n
	* @return a Collection whose elements are the formatted arguments of the diagnostic
	*/
	@:overload private function formatArguments(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : java.util.Collection<String>;
	
	/**
	* Format a single argument of a given diagnostic.
	*
	* @param d diagnostic whose argument is to be formatted
	* @param arg argument to be formatted
	* @param l locale object to be used for i18n
	* @return string representation of the diagnostic argument
	*/
	@:overload private function formatArgument(d : com.sun.tools.javac.util.JCDiagnostic, arg : Dynamic, l : java.util.Locale) : String;
	
	/**
	* Format an iterable argument of a given diagnostic.
	*
	* @param d diagnostic whose argument is to be formatted
	* @param it iterable argument to be formatted
	* @param l locale object to be used for i18n
	* @return string representation of the diagnostic iterable argument
	*/
	@:overload private function formatIterable(d : com.sun.tools.javac.util.JCDiagnostic, it : java.lang.Iterable<Dynamic>, l : java.util.Locale) : String;
	
	/**
	* Format all the subdiagnostics attached to a given diagnostic.
	*
	* @param d diagnostic whose subdiagnostics are to be formatted
	* @param l locale object to be used for i18n
	* @return list of all string representations of the subdiagnostics
	*/
	@:overload private function formatSubdiagnostics(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : com.sun.tools.javac.util.List<String>;
	
	/**
	* Format a subdiagnostics attached to a given diagnostic.
	*
	* @param parent multiline diagnostic whose subdiagnostics is to be formatted
	* @param sub subdiagnostic to be formatted
	* @param l locale object to be used for i18n
	* @return string representation of the subdiagnostics
	*/
	@:overload private function formatSubdiagnostic(parent : com.sun.tools.javac.util.JCDiagnostic, sub : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	/** Format the faulty source code line and point to the error.
	*  @param d The diagnostic for which the error line should be printed
	*/
	@:overload private function formatSourceLine(d : com.sun.tools.javac.util.JCDiagnostic, nSpaces : Int) : String;
	
	@:overload private function formatLintCategory(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	/**
	* Converts a String into a locale-dependent representation accordingly to a given locale.
	*
	* @param l locale object to be used for i18n
	* @param key locale-independent key used for looking up in a resource file
	* @param args localization arguments
	* @return a locale-dependent string
	*/
	@:overload private function localize(l : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload public function displaySource(d : com.sun.tools.javac.util.JCDiagnostic) : Bool;
	
	@:overload public function isRaw() : Bool;
	
	/**
	* Creates a string with a given amount of empty spaces. Useful for
	* indenting the text of a diagnostic message.
	*
	* @param nSpaces the amount of spaces to be added to the result string
	* @return the indentation string
	*/
	@:overload private function indentString(nSpaces : Int) : String;
	
	/**
	* Indent a string by prepending a given amount of empty spaces to each line
	* of the string.
	*
	* @param s the string to be indented
	* @param nSpaces the amount of spaces that should be prepended to each line
	* of the string
	* @return an indented string
	*/
	@:overload private function indent(s : String, nSpaces : Int) : String;
	
	@:overload public function getConfiguration() : AbstractDiagnosticFormatter_SimpleConfiguration;
	
	@:overload public function getPrinter() : com.sun.tools.javac.code.Printer;
	
	@:overload public function setPrinter(printer : com.sun.tools.javac.code.Printer) : Void;
	
	/**
	* An enhanced printer for formatting types/symbols used by
	* AbstractDiagnosticFormatter. Provides alternate numbering of captured
	* types (they are numbered starting from 1 on each new diagnostic, instead
	* of relying on the underlying hashcode() method which generates unstable
	* output). Also detects cycles in wildcard messages (e.g. if the wildcard
	* type referred by a given captured type C contains C itself) which might
	* lead to infinite loops.
	*/
	private var printer : com.sun.tools.javac.code.Printer;
	
	/**
	* Controls the way in which a diagnostic position is displayed.
	*
	* @param diag diagnostic to be formatted
	* @param pk enum constant representing the position kind
	* @param l locale object to be used for i18n
	* @return string representation of the diagnostic position
	*/
	@:overload @:public public function formatPosition(diag : Dynamic, pk : DiagnosticFormatter_PositionKind, l : java.util.Locale) : String;
	
	/**
	* Whether the source code output for this diagnostic is to be displayed.
	*
	* @param diag diagnostic to be formatted
	* @return true if the source line this diagnostic refers to is to be displayed
	*/
	@:overload public function displaySource(diag : Dynamic) : Bool;
	
	/**
	* Format the contents of a diagnostics.
	*
	* @param diag the diagnostic to be formatted
	* @param l locale object to be used for i18n
	* @return a string representing the diagnostic
	*/
	@:overload @:public public function format(diag : Dynamic, l : java.util.Locale) : String;
	
	/**
	* Controls the way in which a diagnostic message is displayed.
	*
	* @param diag diagnostic to be formatted
	* @param l locale object to be used for i18n
	* @return string representation of the diagnostic message
	*/
	@:overload @:public public function formatMessage(diag : Dynamic, l : java.util.Locale) : String;
	
	/**
	* Controls the way in which a diagnostic kind is displayed.
	*
	* @param diag diagnostic to be formatted
	* @param l locale object to be used for i18n
	* @return string representation of the diagnostic prefix
	*/
	@:overload @:public public function formatKind(diag : Dynamic, l : java.util.Locale) : String;
	
	/**
	* Controls the way in which a diagnostic source is displayed.
	*
	* @param diag diagnostic to be formatted
	* @param l locale object to be used for i18n
	* @param fullname whether the source fullname should be printed
	* @return string representation of the diagnostic source
	*/
	@:overload @:public public function formatSource(diag : Dynamic, fullname : Bool, l : java.util.Locale) : String;
	
	
}
@:native('com$sun$tools$javac$util$AbstractDiagnosticFormatter$SimpleConfiguration') extern class AbstractDiagnosticFormatter_SimpleConfiguration implements com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration
{
	private var multilineLimits : java.util.Map<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_MultilineLimit, Null<Int>>;
	
	private var visibleParts : java.util.EnumSet<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>;
	
	private var caretEnabled : Bool;
	
	@:overload public function new(parts : java.util.Set<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>) : Void;
	
	@:overload public function new(options : com.sun.tools.javac.util.Options, parts : java.util.Set<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>) : Void;
	
	@:overload public function getMultilineLimit(limit : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_MultilineLimit) : Int;
	
	@:overload public function getVisible() : java.util.EnumSet<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>;
	
	@:overload public function setMultilineLimit(limit : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_MultilineLimit, value : Int) : Void;
	
	@:overload public function setVisible(diagParts : java.util.Set<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>) : Void;
	
	@:overload public function setVisiblePart(diagParts : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart, enabled : Bool) : Void;
	
	/**
	* Shows a '^' sign under the source line displayed by the formatter
	* (if applicable).
	*
	* @param caretEnabled if true enables caret
	*/
	@:overload public function setCaretEnabled(caretEnabled : Bool) : Void;
	
	/**
	* Tells whether the caret display is active or not.
	*
	* @param caretEnabled if true the caret is enabled
	*/
	@:overload public function isCaretEnabled() : Bool;
	
	
}
