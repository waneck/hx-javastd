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
extern class Holder implements com.sun.tools.corba.se.idl.toJavaPortable.AuxGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* Generate the holder class. Provides general algorithm for
	* auxiliary binding generation:
	* 1.) Initialize symbol table and symbol table entry members,
	*     common to all generators.
	* 2.) Initialize members unique to this generator.
	* 3.) Open print stream
	* 4.) Write class heading (package, prologue, source comment, class
	*     statement, open curly
	* 5.) Write class body (member data and methods)
	* 6.) Write class closing (close curly)
	* 7.) Close the print stream
	**/
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/**
	* Initialize variables unique to this generator.
	**/
	@:overload @:protected private function init() : Void;
	
	/**
	* Open the print stream for subsequent output.
	**/
	@:overload @:protected private function openStream() : Void;
	
	/**
	* Generate the heading, including the package, imports,
	* source comment, class statement, and left curly.
	**/
	@:overload @:protected private function writeHeading() : Void;
	
	/**
	* Generate members of this class.
	**/
	@:overload @:protected private function writeBody() : Void;
	
	/**
	* Generate the closing statements.
	**/
	@:overload @:protected private function writeClosing() : Void;
	
	/**
	* Write the stream to file by closing the print stream.
	**/
	@:overload @:protected private function closeStream() : Void;
	
	/**
	* Generate the constructors.
	**/
	@:overload @:protected private function writeCtors() : Void;
	
	/**
	* Generate the _read method.
	**/
	@:overload @:protected private function writeRead() : Void;
	
	/**
	* Generate the _write method.
	**/
	@:overload @:protected private function writeWrite() : Void;
	
	/**
	* Generate the _type method.
	**/
	@:overload @:protected private function writeType() : Void;
	
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var entry : com.sun.tools.corba.se.idl.SymtabEntry;
	
	@:protected private var stream : com.sun.tools.corba.se.idl.GenFileStream;
	
	@:protected private var holderClass : String;
	
	@:protected private var helperClass : String;
	
	@:protected private var holderType : String;
	
	
}
