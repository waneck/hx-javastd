package com.sun.tools.javac.util;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A raw formatter for diagnostic messages.
* The raw formatter will format a diagnostic according to one of two format patterns, depending on whether
* or not the source name and position are set. This formatter provides a standardized, localize-independent
* implementation of a diagnostic formatter; as such, this formatter is best suited for testing purposes.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class RawDiagnosticFormatter extends com.sun.tools.javac.util.AbstractDiagnosticFormatter
{
	/**
	* Create a formatter based on the supplied options.
	* @param msgs
	*/
	@:overload @:public public function new(options : com.sun.tools.javac.util.Options) : Void;
	
	@:overload @:public override public function formatDiagnostic(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload @:public public function formatMessage(d : com.sun.tools.javac.util.JCDiagnostic, l : java.util.Locale) : String;
	
	@:overload @:protected override private function formatArgument(diag : com.sun.tools.javac.util.JCDiagnostic, arg : Dynamic, l : java.util.Locale) : String;
	
	@:overload @:protected override private function localize(l : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload @:public override public function isRaw() : Bool;
	
	
}
