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
//// NOTE: The methods in this class should be exact copies of the
//// correspoind methods in MethodGen24. The purpose of this class is
//// to inject the changes made in MethodGen24 between AttributeGen
//// and AttributeGen24. When the AttributeGen24 changes are merged, this
//// class should be deleted.
extern class MethodGenClone24 extends com.sun.tools.corba.se.idl.AttributeGen
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* <d62023> - write an abstract method definition
	**/
	@:overload @:protected private function abstractMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* <d62023> - delete method templates for valuetypes
	**/
	@:overload @:protected private function interfaceMethod(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, m : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	
}
