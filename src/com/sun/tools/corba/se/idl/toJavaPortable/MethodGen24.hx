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
//// -D62023   <klr> New file to implement CORBA 2.4 RTF
//// -D62794   <klr> Fix problem with no-arg create functions
extern class MethodGen24 extends com.sun.tools.corba.se.idl.toJavaPortable.MethodGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload public function new() : Void;
	
	/**
	* Print the parameter list for the factory method.
	* @param m The method to list parameters for
	* @param listTypes If try, declare the parms, otherwise just list them
	* @param stream The PrintWriter to print on
	*/
	@:overload private function writeParmList(m : com.sun.tools.corba.se.idl.MethodEntry, listTypes : Bool, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> Write the methodEntry for a valuetype factory method into
	*          the Value Helper class. Contents from email from Simon,
	*          4/25/99.
	**/
	@:overload private function helperFactoryMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, t : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> - write an abstract method definition
	**/
	@:overload private function abstractMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> - write a default factory method implementation for the
	*            <value>DefaultFactory. m is a methodEntry for a factory
	*            method contained in a non-abstract ValueEntry.
	**/
	@:overload private function defaultFactoryMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> - remove all valueInitializer junk
	**/
	@:overload override private function writeMethodSignature() : Void;
	
	/**
	* <d62023> - delete method templates for valuetypes
	**/
	@:overload override private function interfaceMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	
}
