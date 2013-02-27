package com.sun.tools.corba.se.idl;
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
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// - What does oneway mean?
extern class MethodEntry extends com.sun.tools.corba.se.idl.SymtabEntry
{
	/**
	* This is the symbol table entry for methods.
	**/
	@:overload private function new() : Void;
	
	@:overload private function new(that : MethodEntry) : Void;
	
	@:overload private function new(that : com.sun.tools.corba.se.idl.InterfaceEntry, clone : com.sun.tools.corba.se.idl.IDLID) : Void;
	
	@:overload override public function clone() : Dynamic;
	
	/** Invoke the method generator.
	@param symbolTable the symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream the stream to which the generator should sent its output.
	@see SymtabEntry */
	@:overload override public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access the method generator.
	@returns an object which implements the MethodGen interface.
	@see MethodGen */
	@:overload override public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	@:overload override public function type(newType : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** Add an exception to the exception list. */
	@:overload public function addException(exception : com.sun.tools.corba.se.idl.ExceptionEntry) : Void;
	
	/** This a a vector of the exceptions which this method raises. */
	@:overload public function exceptions() : java.util.Vector<Dynamic>;
	
	/** Add an exception name to the list of exception names. */
	@:overload public function addExceptionName(name : String) : Void;
	
	/** This is a vector of strings, each of which is the full name of an
	exception which this method throws.  This vector corresponds to the
	exceptions vector.  The first element of this vector is the name
	of the first element of the exceptions vector, etc. */
	@:overload public function exceptionNames() : java.util.Vector<Dynamic>;
	
	/* Add a context to the context list. */
	@:overload public function addContext(context : String) : Void;
	
	/** This is a vector of strings, each of which is the name of a context. */
	@:overload public function contexts() : java.util.Vector<Dynamic>;
	
	/** Add a parameter to the parameter list. */
	@:overload public function addParameter(parameter : com.sun.tools.corba.se.idl.ParameterEntry) : Void;
	
	/** This is a vector of ParameterEntry's.  They are the parameters on
	this method and their order in the vector is the order they appear
	on the method. */
	@:overload public function parameters() : java.util.Vector<Dynamic>;
	
	/** Is this a oneway method? */
	@:overload public function oneway(yes : Bool) : Void;
	
	/** Is this a oneway method? */
	@:overload public function oneway() : Bool;
	
	/** Is this a value method? */
	@:overload public function valueMethod(yes : Bool) : Void;
	
	/** Is this a value method? */
	@:overload public function valueMethod() : Bool;
	
	
}
