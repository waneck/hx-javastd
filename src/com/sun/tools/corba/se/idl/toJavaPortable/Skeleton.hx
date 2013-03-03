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
//// -F46082.51<daz> Remove -stateful feature; javaStatefulName() obsolete.
//// -D57147   <klr> Make _Tie implement org.omg.CORBA.portable.InvokeHandler
//// -D58037   <klr> Make _Tie delegate to Operations interface
//// -D62739   <klr> no TIE for values that support abstract interfaces, etc.
extern class Skeleton implements com.sun.tools.corba.se.idl.toJavaPortable.AuxGen
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload @:protected private function init() : Void;
	
	@:overload @:protected private function openStream() : Void;
	
	@:overload @:protected private function writeHeading() : Void;
	
	@:overload @:protected private function writeClassDeclaration() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeBody() : Void;
	
	/**
	* Close the skeleton class. The singleton ORB member is
	* necessary only for portable skeletons.
	**/
	@:overload @:protected private function writeClosing() : Void;
	
	/**
	* Close the print stream, which flushes the stream to file.
	**/
	@:overload @:protected private function closeStream() : Void;
	
	@:overload @:protected private function writeCtors() : Void;
	
	/**
	* Build a list of all of the methods, keeping out duplicates.
	**/
	@:overload @:protected private function buildMethodList() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeDispatchMethod() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeMethodTable() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeMethods() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeCORBAOperations() : Void;
	
	@:overload @:protected private function writePOACORBAOperations() : Void;
	
	@:overload @:protected private function writeNonPOACORBAOperations() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeOperations() : Void;
	
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var i : com.sun.tools.corba.se.idl.InterfaceEntry;
	
	@:protected private var stream : java.io.PrintWriter;
	
	@:protected private var tieClassName : String;
	
	@:protected private var skeletonClassName : String;
	
	@:protected private var tie : Bool;
	
	@:protected private var poa : Bool;
	
	@:protected private var methodList : java.util.Vector<Dynamic>;
	
	@:protected private var intfName : String;
	
	
}
