package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
/**
* Represents and manages one source file.
* Caches source lines.  Holds other source file info.
*/
extern class SourceModel extends javax.swing.AbstractListModel<Dynamic>
{
	public static var prototypeCellValue(default, null) : com.sun.tools.example.debug.gui.SourceModel.SourceModel_Line;
	
	@:overload public function new(message : String) : Void;
	
	@:overload public function getElementAt(index : Int) : Dynamic;
	
	@:overload public function getSize() : Int;
	
	@:overload public function fileName() : java.io.File;
	
	@:overload public function sourceReader() : java.io.BufferedReader;
	
	@:overload public function line(lineNo : Int) : com.sun.tools.example.debug.gui.SourceModel.SourceModel_Line;
	
	@:overload public function sourceLine(lineNo : Int) : String;
	
	/**
	* @return List of currently known {@link com.sun.jdi.ReferenceType}
	* in this source file.
	*/
	@:overload public function referenceTypes() : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload public function showBreakpoint(ln : Int, hasBreakpoint : Bool) : Void;
	
	@:overload public function showExecutable(ln : Int, refType : com.sun.jdi.ReferenceType) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceModel$Line') extern class SourceModel_Line
{
	public var text : String;
	
	public var refType : com.sun.jdi.ReferenceType;
	
	@:overload public function isExecutable() : Bool;
	
	@:overload public function hasBreakpoint() : Bool;
	
	
}
