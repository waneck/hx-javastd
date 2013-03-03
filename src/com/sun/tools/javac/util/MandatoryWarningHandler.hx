package com.sun.tools.javac.util;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MandatoryWarningHandler
{
	/**
	* Create a handler for mandatory warnings.
	* @param log     The log on which to generate any diagnostics
	* @param verbose Specify whether or not detailed messages about
	*                individual instances should be given, or whether an aggregate
	*                message should be generated at the end of the compilation.
	*                Typically set via  -Xlint:option.
	* @param enforceMandatory
	*                True if mandatory warnings and notes are being enforced.
	* @param prefix  A common prefix for the set of message keys for
	*                the messages that may be generated.
	* @param lc      An associated lint category for the warnings, or null if none.
	*/
	@:overload @:public public function new(log : com.sun.tools.javac.util.Log, verbose : Bool, enforceMandatory : Bool, prefix : String, lc : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Void;
	
	/**
	* Report a mandatory warning.
	*/
	@:overload @:public public function report(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Report any diagnostic that might have been deferred by previous calls of report().
	*/
	@:overload @:public public function reportDeferredDiagnostic() : Void;
	
	
}
/**
* The kinds of different deferred diagnostics that might be generated
* if a mandatory warning is suppressed because too many warnings have
* already been output.
*
* The parameter is a fragment used to build an I18N message key for Log.
*/
@:native('com$sun$tools$javac$util$MandatoryWarningHandler$DeferredDiagnosticKind') privateextern enum MandatoryWarningHandler_DeferredDiagnosticKind
{
	/**
	* This kind is used when a single specific file is found to have warnings
	* and no similar warnings have already been given.
	* It generates a message like:
	*      FILE has ISSUES
	*/
	IN_FILE;
	/**
	* This kind is used when a single specific file is found to have warnings
	* and when similar warnings have already been reported for the file.
	* It generates a message like:
	*      FILE has additional ISSUES
	*/
	ADDITIONAL_IN_FILE;
	/**
	* This kind is used when multiple files have been found to have warnings,
	* and none of them have had any similar warnings.
	* It generates a message like:
	*      Some files have ISSUES
	*/
	IN_FILES;
	/**
	* This kind is used when multiple files have been found to have warnings,
	* and some of them have had already had specific similar warnings.
	* It generates a message like:
	*      Some files have additional ISSUES
	*/
	ADDITIONAL_IN_FILES;
	
}

