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
//// - Think about arrays (and sequences?) as members
////   - A sequence must be converted to an array, but a memory of the
////     max size must be retained.
//// - After demarshalling an IOR, think about how to deal with the exceptions.
//// - The demarshall method should be throwing a ClientException,
////   but should it, really?
//// -D60929   <klr> Update for RTF2.4 changes
//// -D61056   <klr> Use Util.helperName
//// -D62023   <klr> Use corbaLevel in read/write generation
//// -D59437   <daz> Modify read() to enit qualified name of value box helper.
extern class StructGen implements com.sun.tools.corba.se.idl.StructGen implements com.sun.tools.corba.se.idl.toJavaPortable.JavaGenerator
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload public function new() : Void;
	
	/**
	* Constructor for ExceptionGen.
	**/
	@:overload private function new(exception : Bool) : Void;
	
	/**
	*
	**/
	@:overload public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, s : com.sun.tools.corba.se.idl.StructEntry, str : java.io.PrintWriter) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload private function init() : Void;
	
	/**
	*
	**/
	@:overload private function openStream() : Void;
	
	/**
	*
	**/
	@:overload private function generateHelper() : Void;
	
	/**
	*
	**/
	@:overload private function generateHolder() : Void;
	
	/**
	*
	**/
	@:overload private function writeHeading() : Void;
	
	/**
	*
	**/
	@:overload private function writeBody() : Void;
	
	/**
	*
	**/
	@:overload private function writeClosing() : Void;
	
	/**
	*
	**/
	@:overload private function closeStream() : Void;
	
	/**
	*
	**/
	@:overload private function generateContainedTypes() : Void;
	
	/**
	*
	**/
	@:overload private function writeMembers() : Void;
	
	/**
	*
	**/
	@:overload private function writeCtors() : Void;
	
	@:overload public function helperType(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function type(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function helperRead(entryName : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload public function read(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function helperWrite(entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload public function write(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var s : com.sun.tools.corba.se.idl.StructEntry;
	
	private var stream : java.io.PrintWriter;
	
	private var thisIsReallyAnException : Bool;
	
	
}
