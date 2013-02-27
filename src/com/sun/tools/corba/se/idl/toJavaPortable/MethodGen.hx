package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
//// -After demarshalling an IOR, think about how to deal with the exceptions.
//// -catching Exception throws a string which should be in a properties file.
//// -30jul1997<daz> Modified to write comment immediately preceding method signature.
//// -07May1998<ktp> Modified to support RMI Portable Stub
//// -26Aug1998<klr> Modified to pass helper instance to read_Value.
//// -F46082.51<daz> Remove -stateful feature; javaStatefulName() obsolete.
//// -D56554   <klr> Port bounded string checks from toJava to toJavaPortable
//// -D58549   <klr> bounded string checks on in/inout parms throw BAD_PARAM
//// -D57112<daz> Valuetype initializers map to ctor, regardless of name, and
////  "void _init(...)" methods now mapped correctly.
//// -D59297   <klr> pass context parm when Remarshalling
//// -D59560   <klr> call read/write_Context
//// -D60929   <klr> Update for RTF2.4 changes
//// -D61056   <klr> Use Util.helperName
//// -D61650<daz> Remove '\n' from generated strings; use println()'s.
extern class MethodGen implements com.sun.tools.corba.se.idl.MethodGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload public function new() : Void;
	
	/**
	* Method generate() is not used in MethodGen.  They are replaced by the
	* more granular interfaceMethod, stub, skeleton, dispatchSkeleton.
	**/
	@:overload public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	*
	**/
	@:overload private function interfaceMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	*
	**/
	@:overload private function stub(className : String, isAbstract : Bool, symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter, index : Int) : Void;
	
	/**
	*
	**/
	@:overload private function localstub(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter, index : Int, i : com.sun.tools.corba.se.idl.InterfaceEntry) : Void;
	
	/**
	*
	**/
	@:overload private function skeleton(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter, index : Int) : Void;
	
	/**
	*
	**/
	@:overload private function dispatchSkeleton(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter, index : Int) : Void;
	
	/**
	* Determine whether method entry m is a valuetype initializer.
	* @return true if is m is valuetype initializer, false otherwise.
	**/
	@:overload private function isValueInitializer() : Bool;
	
	/**
	*
	**/
	@:overload private function writeMethodSignature() : Void;
	
	/**
	*
	**/
	@:overload private function writeParmType(parm : com.sun.tools.corba.se.idl.SymtabEntry, passType : Int) : Void;
	
	/**
	*
	**/
	@:overload private function writeDispatchCall() : Void;
	
	/**
	*
	**/
	@:overload private function writeStubBody(className : String) : Void;
	
	@:overload private function writeLocalStubBody(i : com.sun.tools.corba.se.idl.InterfaceEntry) : Void;
	
	/**
	*
	**/
	@:overload private function passType(passType : Int) : String;
	
	/**
	* This is only used by AttributeGen.  The java mapping says
	* the names should be getXXX and setXXX, but CORBA says they
	* should be _get_XXX and _set_XXX.  this.name () will be
	* getXXX.  realName is set by AttributeGen to _get_XXX.
	**/
	@:overload private function serverMethodName(name : String) : Void;
	
	/**
	*
	**/
	@:overload private function writeMethodCall(indent : String) : Void;
	
	/**
	*
	**/
	@:overload private function writeCreateReply(indent : String) : Void;
	
	private var methodIndex : Int;
	
	private var realName : String;
	
	private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var m : com.sun.tools.corba.se.idl.MethodEntry;
	
	private var stream : java.io.PrintWriter;
	
	private var localOptimization : Bool;
	
	private var isAbstract : Bool;
	
	
}
