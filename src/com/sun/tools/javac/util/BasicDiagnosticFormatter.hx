package com.sun.tools.javac.util;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A basic formatter for diagnostic messages.
* The basic formatter will format a diagnostic according to one of three format patterns, depending on whether
* or not the source name and position are set. The formatter supports a printf-like string for patterns
* with the following special characters:
* <ul>
* <li>%b: the base of the source name
* <li>%f: the source name (full absolute path)
* <li>%l: the line number of the diagnostic, derived from the character offset
* <li>%c: the column number of the diagnostic, derived from the character offset
* <li>%o: the character offset of the diagnostic if set
* <li>%p: the prefix for the diagnostic, derived from the diagnostic type
* <li>%t: the prefix as it normally appears in standard diagnostics. In this case, no prefix is
*        shown if the type is ERROR and if a source name is set
* <li>%m: the text or the diagnostic, including any appropriate arguments
* <li>%_: space delimiter, useful for formatting purposes
* </ul>
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class BasicDiagnosticFormatter extends com.sun.tools.javac.util.AbstractDiagnosticFormatter
{
	/**
	* Create a basic formatter based on the supplied options.
	*
	* @param opts list of command-line options
	* @param msgs JavacMessages object used for i18n
	*/
	@:overload public function new(options : com.sun.tools.javac.util.Options, msgs : com.sun.tools.javac.util.JavacMessages) : Void;
	
	/**
	* Create a standard basic formatter
	*
	* @param msgs JavacMessages object used for i18n
	*/
	@:overload public function new(msgs : com.sun.tools.javac.util.JavacMessages) : Void;
	
	@:overload override public function formatDiagnostic(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload public function formatMessage(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload private function addSourceLineIfNeeded(d : com.sun.tools.javac.util.JCDiagnostic, msg : String) : String;
	
	@:overload private function formatMeta(c : java.StdTypes.Char16, d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload override public function getConfiguration() : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration;
	
	
}
@:native('com$sun$tools$javac$util$BasicDiagnosticFormatter$BasicConfiguration') extern class BasicDiagnosticFormatter_BasicConfiguration extends com.sun.tools.javac.util.AbstractDiagnosticFormatter.AbstractDiagnosticFormatter_SimpleConfiguration
{
	private var indentationLevels : java.util.Map<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart, Null<Int>>;
	
	private var availableFormats : java.util.Map<com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_BasicFormatKind, String>;
	
	private var sourcePosition : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_SourcePosition;
	
	@:overload public function new(options : com.sun.tools.javac.util.Options) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Get the amount of spaces for a given indentation kind
	* @param diagPart the diagnostic part for which the indentation is
	* to be retrieved
	* @return the amount of spaces used for the specified indentation kind
	*/
	@:overload public function getIndentation(diagPart : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart) : Int;
	
	/**
	* Set the indentation level for various element of a given diagnostic -
	* this might lead to more readable diagnostics
	*
	* @param indentationKind kind of indentation to be set
	* @param nSpaces amount of spaces for the specified diagnostic part
	*/
	@:overload public function setIndentation(diagPart : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart, nSpaces : Int) : Void;
	
	/**
	* Set the source line positioning used by this formatter
	*
	* @param sourcePos a positioning value for source line
	*/
	@:overload public function setSourcePosition(sourcePos : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_SourcePosition) : Void;
	
	/**
	* Get the source line positioning used by this formatter
	*
	* @return the positioning value used by this formatter
	*/
	@:overload public function getSourcePosition() : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_SourcePosition;
	
	/**
	* Set a metachar string for a specific format
	*
	* @param kind the format kind to be set
	* @param s the metachar string specifying the format
	*/
	@:overload public function setFormat(kind : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_BasicFormatKind, s : String) : Void;
	
	/**
	* Get a metachar string for a specific format
	*
	* @param sourcePos a positioning value for source line
	*/
	@:overload public function getFormat(kind : com.sun.tools.javac.util.BasicDiagnosticFormatter.BasicDiagnosticFormatter_BasicConfiguration_BasicFormatKind) : String;
	
	
}
/**
* A source positioning value controls the position (within a given
* diagnostic message) in which the source line the diagnostic refers to
* should be displayed (if applicable)
*/
@:native('com$sun$tools$javac$util$BasicDiagnosticFormatter$BasicConfiguration$SourcePosition') extern enum BasicDiagnosticFormatter_BasicConfiguration_SourcePosition
{
	/**
	* Source line is displayed after the diagnostic message
	*/
	BOTTOM;
	/**
	* Source line is displayed after the first line of the diagnostic
	* message
	*/
	AFTER_SUMMARY;
	
}

/**
* This enum contains all the kinds of formatting patterns supported
* by a basic diagnostic formatter.
*/
@:native('com$sun$tools$javac$util$BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind') extern enum BasicDiagnosticFormatter_BasicConfiguration_BasicFormatKind
{
	/**
	* A format string to be used for diagnostics with a given position.
	*/
	DEFAULT_POS_FORMAT;
	/**
	* A format string to be used for diagnostics without a given position.
	*/
	DEFAULT_NO_POS_FORMAT;
	/**
	* A format string to be used for diagnostics regarding classfiles
	*/
	DEFAULT_CLASS_FORMAT;
	
}

