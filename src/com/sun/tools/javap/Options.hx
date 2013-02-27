package com.sun.tools.javap;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Options
{
	/*
	*  Provides access to javap's options, set via the command line
	*  or JSR 199 API.
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload public static function instance(context : com.sun.tools.javap.Context) : Options;
	
	@:overload private function new(context : com.sun.tools.javap.Context) : Void;
	
	/**
	* Checks access of class, field or method.
	*/
	@:overload public function checkAccess(flags : com.sun.tools.classfile.AccessFlags) : Bool;
	
	public var help : Bool;
	
	public var verbose : Bool;
	
	public var version : Bool;
	
	public var fullVersion : Bool;
	
	public var showFlags : Bool;
	
	public var showLineAndLocalVariableTables : Bool;
	
	public var showAccess : Int;
	
	public var accessOptions : java.util.Set<String>;
	
	public var details : java.util.Set<com.sun.tools.javap.InstructionDetailWriter.InstructionDetailWriter_Kind>;
	
	public var showDisassembled : Bool;
	
	public var showInternalSignatures : Bool;
	
	public var showAllAttrs : Bool;
	
	public var showConstants : Bool;
	
	public var sysInfo : Bool;
	
	public var showInnerClasses : Bool;
	
	public var indentWidth : Int;
	
	public var tabColumn : Int;
	
	public var compat : Bool;
	
	
}
