package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class ConstGen implements com.sun.tools.corba.se.idl.ConstGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* Generate Java code for an IDL constant.  A constant is written to
	* a new class only when it is not a member of an interface; otherwise
	* it written to the interface class in which it resides.
	**/
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, c : com.sun.tools.corba.se.idl.ConstEntry, s : java.io.PrintWriter) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload @:protected private function init() : Void;
	
	/**
	* Generate the class defining the constant.
	**/
	@:overload @:protected private function generateConst() : Void;
	
	/**
	* Open a new print stream only if the constant is not a member
	* of an interface.
	**/
	@:overload @:protected private function openStream() : Void;
	
	/**
	* Write the heading for the class defining the constant.
	**/
	@:overload @:protected private function writeHeading() : Void;
	
	/**
	* Write the constant expression and any comment, if present.
	**/
	@:overload @:protected private function writeBody() : Void;
	
	/**
	* Write the entire constant expression and any comment, if present.
	**/
	@:overload @:protected private function writeConstExpr() : Void;
	
	/**
	* Generate any last words and close the class.
	**/
	@:overload @:protected private function writeClosing() : Void;
	
	/**
	* Close the print stream, causing the file to be written.
	**/
	@:overload @:protected private function closeStream() : Void;
	
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var c : com.sun.tools.corba.se.idl.ConstEntry;
	
	@:protected private var stream : java.io.PrintWriter;
	
	
}
