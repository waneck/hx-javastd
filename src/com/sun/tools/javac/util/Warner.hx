package com.sun.tools.javac.util;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Warner
{
	/**
	* An interface to support optional warnings, needed for support of
	* unchecked conversions and unchecked casts.
	*
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own risk.
	* This code and its internal interfaces are subject to change or
	* deletion without notice.</b>
	*/
	public static var noWarnings(default, null) : com.sun.tools.javac.util.Warner;
	
	private var warned : Bool;
	
	@:overload public function pos() : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition;
	
	@:overload public function warn(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Void;
	
	@:overload public function silentWarn(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Void;
	
	@:overload public function new(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition) : Void;
	
	@:overload public function hasSilentLint(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Bool;
	
	@:overload public function hasNonSilentLint(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Bool;
	
	@:overload public function hasLint(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Bool;
	
	@:overload public function clear() : Void;
	
	@:overload public function new() : Void;
	
	
}
