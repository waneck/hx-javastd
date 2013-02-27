package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
//// -D61056   <klr> Use Util.helperName
extern class EnumGen implements com.sun.tools.corba.se.idl.EnumGen implements com.sun.tools.corba.se.idl.toJavaPortable.JavaGenerator
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload public function new() : Void;
	
	/**
	* Generate the Java code for an IDL enumeration.
	**/
	@:overload public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, e : com.sun.tools.corba.se.idl.EnumEntry, s : java.io.PrintWriter) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload private function init() : Void;
	
	/**
	* Open the print stream to which to write the enumeration class.
	**/
	@:overload private function openStream() : Void;
	
	/**
	* Generate the holder class for this enumeration.
	**/
	@:overload private function generateHolder() : Void;
	
	/**
	* Generate the helper class for this enumeration.
	**/
	@:overload private function generateHelper() : Void;
	
	/**
	* Write the heading of the enumeration class, including the package,
	* imports, class statement, and open curly.
	**/
	@:overload private function writeHeading() : Void;
	
	/**
	* Write the members of enumeration class.
	**/
	@:overload private function writeBody() : Void;
	
	/**
	* Write the value method for the enumeration class.
	**/
	@:overload private function writeValue() : Void;
	
	/**
	* Write the from_int method for the enumeration class.
	**/
	@:overload private function writeFromInt() : Void;
	
	/**
	* Write the protected constructor for the enumeration class.
	**/
	@:overload private function writeCtors() : Void;
	
	/**
	* Close the enumeration class.
	**/
	@:overload private function writeClosing() : Void;
	
	/**
	* Close the print stream, which writes the stream to file.
	**/
	@:overload private function closeStream() : Void;
	
	@:overload public function helperType(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function type(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function helperRead(entryName : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload public function helperWrite(entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload public function read(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload public function write(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var e : com.sun.tools.corba.se.idl.EnumEntry;
	
	private var stream : java.io.PrintWriter;
	
	
}
