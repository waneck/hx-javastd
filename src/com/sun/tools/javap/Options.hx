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
	@:overload @:public @:static public static function instance(context : com.sun.tools.javap.Context) : com.sun.tools.javap.Options;
	
	@:overload @:protected private function new(context : com.sun.tools.javap.Context) : Void;
	
	/**
	* Checks access of class, field or method.
	*/
	@:overload @:public public function checkAccess(flags : com.sun.tools.classfile.AccessFlags) : Bool;
	
	@:public public var help : Bool;
	
	@:public public var verbose : Bool;
	
	@:public public var version : Bool;
	
	@:public public var fullVersion : Bool;
	
	@:public public var showFlags : Bool;
	
	@:public public var showLineAndLocalVariableTables : Bool;
	
	@:public public var showAccess : Int;
	
	@:public public var accessOptions : java.util.Set<String>;
	
	@:public public var details : java.util.Set<com.sun.tools.javap.InstructionDetailWriter.InstructionDetailWriter_Kind>;
	
	@:public public var showDisassembled : Bool;
	
	@:public public var showInternalSignatures : Bool;
	
	@:public public var showAllAttrs : Bool;
	
	@:public public var showConstants : Bool;
	
	@:public public var sysInfo : Bool;
	
	@:public public var showInnerClasses : Bool;
	
	@:public public var indentWidth : Int;
	
	@:public public var tabColumn : Int;
	
	@:public public var compat : Bool;
	
	
}
