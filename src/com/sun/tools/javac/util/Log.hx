package com.sun.tools.javac.util;
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
/** A class for error logs. Reports errors and warnings, and
*  keeps track of error numbers and positions.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Log extends com.sun.tools.javac.util.AbstractLog
{
	/** The context key for the log. */
	public static var logKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.util.Log>;
	
	/** The context key for the output PrintWriter. */
	public static var outKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<java.io.PrintWriter>;
	
	public var errWriter(default, null) : java.io.PrintWriter;
	
	public var warnWriter(default, null) : java.io.PrintWriter;
	
	public var noticeWriter(default, null) : java.io.PrintWriter;
	
	/** The maximum number of errors/warnings that are reported.
	*/
	public var MaxErrors(default, null) : Int;
	
	public var MaxWarnings(default, null) : Int;
	
	/** Switch: prompt user on each error.
	*/
	public var promptOnError : Bool;
	
	/** Switch: emit warning messages.
	*/
	public var emitWarnings : Bool;
	
	/** Switch: suppress note messages.
	*/
	public var suppressNotes : Bool;
	
	/** Print stack trace on errors?
	*/
	public var dumpOnError : Bool;
	
	/** Print multiple errors for same source locations.
	*/
	public var multipleErrors : Bool;
	
	/**
	* Diagnostic listener, if provided through programmatic
	* interface to javac (JSR 199).
	*/
	private var diagListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>;
	
	/**
	* Keys for expected diagnostics.
	*/
	public var expectDiagKeys : java.util.Set<String>;
	
	/**
	* Deferred diagnostics
	*/
	public var deferDiagnostics : Bool;
	
	public var deferredDiagnostics : java.util.Queue<com.sun.tools.javac.util.JCDiagnostic>;
	
	/** Construct a log with given I/O redirections.
	*/
	@:overload private function new(context : com.sun.tools.javac.util.Context, errWriter : java.io.PrintWriter, warnWriter : java.io.PrintWriter, noticeWriter : java.io.PrintWriter) : Void;
	
	/** Default value for -Xmaxerrs.
	*/
	@:overload private function getDefaultMaxErrors() : Int;
	
	/** Default value for -Xmaxwarns.
	*/
	@:overload private function getDefaultMaxWarnings() : Int;
	
	/** Construct a log with default settings.
	*/
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Construct a log with all output redirected.
	*/
	@:overload private function new(context : com.sun.tools.javac.util.Context, defaultWriter : java.io.PrintWriter) : Void;
	
	/** Get the Log instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.util.Log;
	
	/** The number of errors encountered so far.
	*/
	public var nerrors : Int;
	
	/** The number of warnings encountered so far.
	*/
	public var nwarnings : Int;
	
	@:overload public function hasDiagnosticListener() : Bool;
	
	@:overload public function setEndPosTable(name : javax.tools.JavaFileObject, table : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>) : Void;
	
	/** Return current sourcefile.
	*/
	@:overload public function currentSourceFile() : javax.tools.JavaFileObject;
	
	/** Get the current diagnostic formatter.
	*/
	@:overload public function getDiagnosticFormatter() : com.sun.tools.javac.api.DiagnosticFormatter<com.sun.tools.javac.util.JCDiagnostic>;
	
	/** Set the current diagnostic formatter.
	*/
	@:overload public function setDiagnosticFormatter(diagFormatter : com.sun.tools.javac.api.DiagnosticFormatter<com.sun.tools.javac.util.JCDiagnostic>) : Void;
	
	/** Flush the logs
	*/
	@:overload public function flush() : Void;
	
	/** Returns true if an error needs to be reported for a given
	* source name and pos.
	*/
	@:overload private function shouldReport(file : javax.tools.JavaFileObject, pos : Int) : Bool;
	
	/** Prompt user after an error.
	*/
	@:overload public function prompt() : Void;
	
	/** Print the text of a message, translating newlines appropriately
	*  for the platform.
	*/
	@:overload public static function printLines(writer : java.io.PrintWriter, msg : String) : Void;
	
	/** Print the text of a message to the errWriter stream,
	*  translating newlines appropriately for the platform.
	*/
	@:overload public function printErrLines(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Print the text of a message to the noticeWriter stream,
	*  translating newlines appropriately for the platform.
	*/
	@:overload public function printNoteLines(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print the localized text of a "verbose" message to the
	* noticeWriter stream.
	*/
	@:overload public function printVerbose(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload override private function directError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning that cannot be suppressed.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload public function strictWarning(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report all deferred diagnostics, and clear the deferDiagnostics flag. */
	@:overload public function reportDeferredDiagnostics() : Void;
	
	/** Report selected deferred diagnostics, and clear the deferDiagnostics flag. */
	@:overload public function reportDeferredDiagnostics(kinds : java.util.Set<JCDiagnostic.Kind>) : Void;
	
	/**
	* Common diagnostic handling.
	* The diagnostic is counted, and depending on the options and how many diagnostics have been
	* reported so far, the diagnostic may be handed off to writeDiagnostic.
	*/
	@:overload override public function report(diagnostic : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	/**
	* Write out a diagnostic.
	*/
	@:overload private function writeDiagnostic(diag : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	@:overload private function getWriterForDiagnosticType(dt : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticType) : java.io.PrintWriter;
	
	/** Find a localized string in the resource bundle.
	*  Because this method is static, it ignores the locale.
	*  Use localize(key, args) when possible.
	*  @param key    The key for the localized string.
	*  @param args   Fields to substitute into the string.
	*/
	@:overload public static function getLocalizedString(key : String, args : java.NativeArray<Dynamic>) : String;
	
	/** Find a localized string in the resource bundle.
	*  @param key    The key for the localized string.
	*  @param args   Fields to substitute into the string.
	*/
	@:overload public function localize(key : String, args : java.NativeArray<Dynamic>) : String;
	
	/** report an error:
	*/
	@:overload public function rawError(pos : Int, msg : String) : Void;
	
	/** report a warning:
	*/
	@:overload public function rawWarning(pos : Int, msg : String) : Void;
	
	@:overload public static function format(fmt : String, args : java.NativeArray<Dynamic>) : String;
	
	
}
