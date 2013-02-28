package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
* COMPONENT_NAME: idl.toJava
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -09/23/98 KLR Ported -m updates (F46838.1-3)
//// -f46082.51<daz> Transferred makefile list generation (for ODE delta-builds,
////  see f46838) to toJava; cleaned-out dead code.
//// -D58319<daz> Display version info. for -version option.
//// -D58951<daz> Modify to allow QuickTest to build.
//// -D49526<daz> Remove "TypeCode" symbol from preParse().
//// -D58591<daz> Publicise _factories and compile for QuickTest.  Need to revert
////  t0 private and add accessor methods.
//// -D59437<daz> Fill typename information for value boxes.
extern class Compile extends com.sun.tools.corba.se.idl.Compile
{
	/**
	*
	**/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	*
	**/
	@:overload override public function start(args : java.NativeArray<String>) : Void;
	
	/**
	*
	**/
	@:overload override private function new() : Void;
	
	public var _factories : com.sun.tools.corba.se.idl.toJavaPortable.Factories;
	
	@:overload override private function factories() : com.sun.tools.corba.se.idl.Factories;
	
	/**
	*
	**/
	@:overload private function preParse() : Void;
	
	@:overload private function preEmit(emitList : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* This method is called by preEmit once for each symbol table entry.
	* It can be called by extenders.
	**/
	@:overload private function preEmitSTElement(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/**
	* This method is called by preEmit once for each emitList entry.
	* It can be called by extenders.
	**/
	@:overload private function preEmitELElement(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	public var importTypes : java.util.Vector<Dynamic>;
	
	public var factory : com.sun.tools.corba.se.idl.SymtabFactory;
	
	public static var typedefInfo : Int;
	
	public var list : java.util.Hashtable<Dynamic, Dynamic>;
	
	public static var compiler : com.sun.tools.corba.se.idl.Compile;
	
	
}
