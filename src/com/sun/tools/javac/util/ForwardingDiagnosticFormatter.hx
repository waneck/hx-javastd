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
extern class ForwardingDiagnosticFormatter<D, F> implements com.sun.tools.javac.api.DiagnosticFormatter<D>
{
	/**
	* The delegated formatter
	*/
	private var formatter : F;
	
	/*
	* configuration object used by this formatter
	*/
	private var configuration : ForwardingDiagnosticFormatter_ForwardingConfiguration;
	
	@:overload public function new(formatter : F) : Void;
	
	/**
	* Returns the underlying delegated formatter
	* @return delegate formatter
	*/
	@:overload public function getDelegatedFormatter() : F;
	
	@:overload public function getConfiguration() : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration;
	
	@:overload public function displaySource(diag : D) : Bool;
	
	@:overload public function format(diag : D, l : java.util.Locale) : String;
	
	@:overload public function formatKind(diag : D, l : java.util.Locale) : String;
	
	@:overload public function formatMessage(diag : D, l : java.util.Locale) : String;
	
	@:overload public function formatPosition(diag : D, pk : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_PositionKind, l : java.util.Locale) : String;
	
	@:overload public function formatSource(diag : D, fullname : Bool, l : java.util.Locale) : String;
	
	
}
/**
* A delegated formatter configuration delegates all configurations settings
* to an underlying configuration object (aka the delegated configuration).
*/
@:native('com$sun$tools$javac$util$ForwardingDiagnosticFormatter$ForwardingConfiguration') extern class ForwardingDiagnosticFormatter_ForwardingConfiguration implements com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration
{
	/** The configurationr object to which the forwarding configuration delegates some settings */
	private var configuration : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration;
	
	@:overload public function new(configuration : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration) : Void;
	
	/**
	* Returns the underlying delegated configuration.
	* @return delegated configuration
	*/
	@:overload public function getDelegatedConfiguration() : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration;
	
	@:overload public function getMultilineLimit(limit : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_MultilineLimit) : Int;
	
	@:overload public function getVisible() : java.util.Set<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>;
	
	@:overload public function setMultilineLimit(limit : com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_MultilineLimit, value : Int) : Void;
	
	@:overload public function setVisible(diagParts : java.util.Set<com.sun.tools.javac.api.DiagnosticFormatter.DiagnosticFormatter_Configuration_DiagnosticPart>) : Void;
	
	
}
