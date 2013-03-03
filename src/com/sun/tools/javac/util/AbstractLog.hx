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
extern class AbstractLog
{
	/** Re-assign source, returning previous setting.
	*/
	@:overload @:public public function useSource(file : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	@:overload @:protected private function getSource(file : javax.tools.JavaFileObject) : com.sun.tools.javac.util.DiagnosticSource;
	
	/** Return the underlying diagnostic source
	*/
	@:overload @:public public function currentSource() : com.sun.tools.javac.util.DiagnosticSource;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function error(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param pos    The source position at which to report the error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function error(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param flag   A flag to set on the diagnostic
	*  @param pos    The source position at which to report the error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function error(flag : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticFlag, pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param pos    The source position at which to report the error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function error(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param flag   A flag to set on the diagnostic
	*  @param pos    The source position at which to report the error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function error(flag : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticFlag, pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function warning(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a lint warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param lc     The lint category for the diagnostic
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function warning(lc : com.sun.tools.javac.code.Lint.Lint_LintCategory, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function warning(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a lint warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param lc     The lint category for the diagnostic
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function warning(lc : com.sun.tools.javac.code.Lint.Lint_LintCategory, pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function warning(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function mandatoryWarning(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning.
	*  @param lc     The lint category for the diagnostic
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function mandatoryWarning(lc : com.sun.tools.javac.code.Lint.Lint_LintCategory, pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Provide a non-fatal notification, unless suppressed by the -nowarn option.
	*  @param key    The key for the localized notification message.
	*  @param args   Fields of the notint an error or warning message:
	*/
	@:overload @:public public function note(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Provide a non-fatal notification, unless suppressed by the -nowarn option.
	*  @param key    The key for the localized notification message.
	*  @param args   Fields of the notification message.
	*/
	@:overload @:public public function note(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Provide a non-fatal notification, unless suppressed by the -nowarn option.
	*  @param key    The key for the localized notification message.
	*  @param args   Fields of the notification message.
	*/
	@:overload @:public public function note(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Provide a non-fatal notification, unless suppressed by the -nowarn option.
	*  @param key    The key for the localized notification message.
	*  @param args   Fields of the notification message.
	*/
	@:overload @:public public function note(file : javax.tools.JavaFileObject, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Provide a non-fatal notification, unless suppressed by the -nowarn option.
	*  @param key    The key for the localized notification message.
	*  @param args   Fields of the notification message.
	*/
	@:overload @:public public function mandatoryNote(file : javax.tools.JavaFileObject, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:protected @:abstract private function report(diagnostic : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	@:overload @:protected @:abstract private function directError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Factory for diagnostics
	*/
	@:protected private var diags : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_Factory;
	
	/** The file that's currently being translated.
	*/
	@:protected private var source : com.sun.tools.javac.util.DiagnosticSource;
	
	/** A cache of lightweight DiagnosticSource objects.
	*/
	@:protected private var sourceMap : java.util.Map<javax.tools.JavaFileObject, com.sun.tools.javac.util.DiagnosticSource>;
	
	
}
