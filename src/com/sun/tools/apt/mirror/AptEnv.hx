package com.sun.tools.apt.mirror;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AptEnv
{
	/**
	* The environment for a run of apt.
	*/
	public var names : com.sun.tools.javac.util.Names;
	
	public var symtab : com.sun.tools.javac.code.Symtab;
	
	public var jctypes : com.sun.tools.javac.code.Types;
	
	public var enter : com.sun.tools.javac.comp.Enter;
	
	public var attr : com.sun.tools.javac.comp.Attr;
	
	public var typeMaker : com.sun.tools.apt.mirror.type.TypeMaker;
	
	public var declMaker : com.sun.tools.apt.mirror.declaration.DeclarationMaker;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : AptEnv;
	
	/**
	* Does a symbol have a given flag?  Forces symbol completion.
	*/
	@:overload public static function hasFlag(sym : com.sun.tools.javac.code.Symbol, flag : haxe.Int64) : Bool;
	
	/**
	* Returns a symbol's flags.  Forces completion.
	*/
	@:overload public static function getFlags(sym : com.sun.tools.javac.code.Symbol) : haxe.Int64;
	
	
}
