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
//// -D57067 <klr> suppress default init if an emit init explicitly specified.
//// -D59071 <daz> Clone method entries when their content needs modification.
//// -D59092 <klr> Valuetype supporting interfaces should implement interface.
//// -D59418 <klr> Custom values implement org.omg.CORBA.CustomMarshal
//// -D59418 <klr> Invert read/read_Value, write/write_Value for Simon
//// -D60929 <klr> Update for RTF2.4 changes
//// -D62018 <klr> write_value for value with value field x calls xHelper.write.
//// -D62062 <klr> Add _write to value Helper to marshal state.
////   write_value for value subclass calls parent._write
//// -D61650<daz> Remove '\n' from generated strings; use println()'s.
extern class ValueGen implements com.sun.tools.corba.se.idl.ValueGen implements com.sun.tools.corba.se.idl.toJavaPortable.JavaGenerator
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	*
	**/
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, v : com.sun.tools.corba.se.idl.ValueEntry, str : java.io.PrintWriter) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload @:protected private function init() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function openStream() : Void;
	
	/**
	* Generate a Tie class only when the user specifies the TIE option
	* and the valuetype does support an interface.
	**/
	@:overload @:protected private function generateTie() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function generateHelper() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function generateHolder() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeHeading() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeBody() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeClosing() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function closeStream() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeConstructor() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeTruncatable() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeMembers() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeInitializers() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeMethods() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeStreamableMethods() : Void;
	
	@:overload @:public public function helperType(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload @:public public function type(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload @:public public function helperRead(entryName : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function read(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload @:public public function helperWrite(entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function write(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	/**
	*
	**/
	@:overload @:protected private function writeAbstract() : Void;
	
	@:protected private var emit : Int;
	
	@:protected private var factories : com.sun.tools.corba.se.idl.toJavaPortable.Factories;
	
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var v : com.sun.tools.corba.se.idl.ValueEntry;
	
	@:protected private var stream : java.io.PrintWriter;
	
	@:protected private var explicitDefaultInit : Bool;
	
	
}
