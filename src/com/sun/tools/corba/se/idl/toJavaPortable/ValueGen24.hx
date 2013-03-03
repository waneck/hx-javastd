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
//// -D62023 <klr> Update for Java 2.4 RTF
//// -D62794.1 <klr> Don't include operations inherited from abstract valuetypes
//// -D62794.1 <scn> Don't include operations inherited from supported interfaces
extern class ValueGen24 extends com.sun.tools.corba.se.idl.ValueGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* <d62023> - delete constructor; helper is abstract
	**/
	@:overload @:protected private function writeConstructor() : Void;
	
	/**
	* <d62023> - delete write_value from non-boxed helpers
	*          - delete _write from non-boxed helpers
	**/
	@:overload @:public public function helperWrite(entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023>
	**/
	@:overload @:public public function helperRead(entryName : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> - suppress initializers from mapped value; now generated in
	*    the Helper class and Factory class
	**/
	@:overload @:protected private function writeInitializers() : Void;
	
	/**
	* <d62023> - Goes in mapped class, not Helper
	**/
	@:overload @:protected private function writeTruncatable() : Void;
	
	/**
	* <d62023> CustomMarshal -> CustomValue for custom valuetypes
	*          mapped class is abstract
	**/
	@:overload @:protected private function writeHeading() : Void;
	
	/**
	* <d62023> - private state maps to protected, not default
	**/
	@:overload @:protected private function writeMembers() : Void;
	
	/**
	* <d62023> Methods need to be abstract
	*          writeStreamable
	**/
	@:overload @:protected private function writeMethods() : Void;
	
	/**
	* <d62023> Call super._read()
	**/
	@:overload @:public public function read(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	/**
	* <d62023> Call super._write()
	**/
	@:overload @:public public function write(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	/**
	* <62023> - generate factory interface and default factory
	**/
	@:overload @:public override public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, v : com.sun.tools.corba.se.idl.ValueEntry, str : java.io.PrintWriter) : Void;
	
	/**
	*
	**/
	@:overload @:protected private function generateValueFactory() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function generateDefaultFactory() : Void;
	
	
}
@:native('com$sun$tools$corba$se$idl$toJavaPortable$ValueGen24$ImplStreamWriter') @:internal extern class ValueGen24_ImplStreamWriter
{
	@:overload @:public public function writeClassName(name : String) : Void;
	
	
}
