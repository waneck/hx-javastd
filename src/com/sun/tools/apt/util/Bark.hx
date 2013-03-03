package com.sun.tools.apt.util;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Bark extends com.sun.tools.javac.util.Log
{
	/** The context key for the bark. */
	@:protected @:static @:final private static var barkKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.apt.util.Bark>;
	
	/**
	* Preregisters factories to create and use a Bark object for use as
	* both a Log and a Bark.
	*/
	@:overload @:public @:static public static function preRegister(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Get the Bark instance for this context. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.util.Bark;
	
	/**
	* Creates a Bark.
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* Sets a flag indicating whether or not to ignore all diagnostics.
	* When ignored, they are not reported to the output writers, not are they
	* counted in the various counters.
	* @param b If true, subsequent diagnostics will be ignored.
	* @return the previous state of the flag
	*/
	@:overload @:public public function setDiagnosticsIgnored(b : Bool) : Bool;
	
	/**
	* Report a diagnostic if they are not currently being ignored.
	*/
	@:overload @:public override public function report(diagnostic : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	/** Report an error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function aptError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report an error, unless another error was already reported at same
	*  source position.
	*  @param pos    The source position at which to report the error.
	*  @param key    The key for the localized error message.
	*  @param args   Fields of the error message.
	*/
	@:overload @:public public function aptError(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function aptWarning(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a warning, unless suppressed by the  -nowarn option or the
	*  maximum number of warnings has been reached.
	*  @param pos    The source position at which to report the warning.
	*  @param key    The key for the localized warning message.
	*  @param args   Fields of the warning message.
	*/
	@:overload @:public public function aptWarning(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a note, unless suppressed by the  -nowarn option.
	*  @param key    The key for the localized note message.
	*  @param args   Fields of the note message.
	*/
	@:overload @:public public function aptNote(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Report a note, unless suppressed by the  -nowarn option.
	*  @param pos    The source position at which to report the note.
	*  @param key    The key for the localized note message.
	*  @param args   Fields of the note message.
	*/
	@:overload @:public public function aptNote(pos : Int, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}
