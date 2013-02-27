package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
//// -F46082.51<daz> Remove -stateful feature.
//// -D57118   <klr> Fix "narrow" in helper for abstract interface
//// -D58889   <klr> re-Fix "narrow" in helper for abstract interface
//// -D59383   <klr> 'get_class' in value helper returns value class, not helper.
//// -D59413   <klr> Remove Helper interface references for non-value types.
//// -D59435   <klr> Remove read_Object, write_Object completely.
//// -D59418   <klr> Move read_Value, write_Value to generator's helperRead.
extern class Helper implements com.sun.tools.corba.se.idl.toJavaPortable.AuxGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload public function new() : Void;
	
	/**
	* Generate the helper class.  Provides general algorithm
	* for auxiliary binding generation:
	*
	* 1.) Initialize symbol table and symbol table entry members,
	*     common to all generators.
	* 2.) Initialize members unique to this generator.
	* 3.) Open print stream
	* 4.) Write class heading: package, prologue, class statement, open curly
	* 5.) Write class body: member data and methods
	* 6.) Write class closing: close curly
	* 7.) Close the print stream
	**/
	@:overload public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/**
	* Initialize variables unique to this generator.
	**/
	@:overload private function init() : Void;
	
	/**
	* Open the print stream for subsequent output.
	**/
	@:overload private function openStream() : Void;
	
	/**
	* Generate the heading, including package, imports, class statements,
	* and open curly.
	**/
	@:overload private function writeHeading() : Void;
	
	/**
	* Generate members of this class.
	**/
	@:overload private function writeBody() : Void;
	
	/**
	* Generate members of the Helper interface.
	**/
	@:overload private function writeHelperInterface() : Void;
	
	/**
	* Generate members of the ValueHelper interface.
	**/
	@:overload private function writeValueHelperInterface() : Void;
	
	/**
	* Generate the closing statements.
	**/
	@:overload private function writeClosing() : Void;
	
	/**
	* Write the stream to file by closing the print stream.
	**/
	@:overload private function closeStream() : Void;
	
	/**
	* Generate the instance variables.
	**/
	@:overload private function writeInstVars() : Void;
	
	/**
	* Generate the constructors.
	**/
	@:overload private function writeCtors() : Void;
	
	/**
	* Generate the insert method.
	**/
	@:overload private function writeInsert() : Void;
	
	/**
	* Generate the extract method.
	**/
	@:overload private function writeExtract() : Void;
	
	/**
	* Generate the typecode variable and type method.
	**/
	@:overload private function writeType() : Void;
	
	/**
	* Generate the ID method.
	**/
	@:overload private function writeID() : Void;
	
	/**
	* Generate the read method.
	**/
	@:overload private function writeRead() : Void;
	
	/**
	* Generate the write method.
	**/
	@:overload private function writeWrite() : Void;
	
	/**
	* Generate the narrow method.
	**/
	@:overload private function writeNarrow() : Void;
	
	/**
	* Write the narrow() method for a remotable object.
	**/
	@:overload private function writeRemoteNarrow() : Void;
	
	/**
	* Generate the unchecked narrow method.
	**/
	@:overload private function writeUncheckedNarrow() : Void;
	
	/**
	* Write the unchecked narrow() method for a remotable object.
	**/
	@:overload private function writeUncheckedRemoteNarrow() : Void;
	
	/**
	* Generate the GetID method.
	**/
	@:overload private function writeGetID() : Void;
	
	/**
	* Generate the GetType method.
	**/
	@:overload private function writeGetType() : Void;
	
	/**
	* Generate the get_class method.
	**/
	@:overload private function writeGetClass() : Void;
	
	/**
	* Generate the get_instance method.
	**/
	@:overload private function writeGetInstance() : Void;
	
	/**
	* Generate the GetSafeBaseIds method.
	**/
	@:overload private function writeGetSafeBaseIds() : Void;
	
	/**
	* Return the stub name for the interface entry.
	**/
	@:overload private function stubName(entry : com.sun.tools.corba.se.idl.InterfaceEntry) : String;
	
	private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var entry : com.sun.tools.corba.se.idl.SymtabEntry;
	
	private var stream : com.sun.tools.corba.se.idl.GenFileStream;
	
	private var helperClass : String;
	
	private var helperType : String;
	
	
}
