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
extern class UnionEntry extends com.sun.tools.corba.se.idl.SymtabEntry
{
	/**
	* This is the symbol table entry for unions.
	**/
	@:overload private function new() : Void;
	
	@:overload private function new(that : com.sun.tools.corba.se.idl.UnionEntry) : Void;
	
	@:overload private function new(that : com.sun.tools.corba.se.idl.SymtabEntry, clone : com.sun.tools.corba.se.idl.IDLID) : Void;
	
	@:overload public function clone() : Dynamic;
	
	/** Invoke the union generator.
	@param symbolTable the symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream the stream to which the generator should sent its output.
	@see SymtabEntry */
	@:overload public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access the union generator.
	@returns an object which implements the UnionGen interface.
	@see UnionGen */
	@:overload public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	@:overload public function addBranch(branch : com.sun.tools.corba.se.idl.UnionBranch) : Void;
	
	/** This is a vector of UnionBranch's. */
	@:overload public function branches() : java.util.Vector<Dynamic>;
	
	/** This TypedefEntry describes the type and name for the default branch.
	Like the entries in the branches vector, only the type and name fields
	are pertinent. */
	@:overload public function defaultBranch(branch : com.sun.tools.corba.se.idl.TypedefEntry) : Void;
	
	/** This TypedefEntry describes the type and name for the default branch.
	Like the entries in the branches vector, only the type and name fields
	are pertinent. */
	@:overload public function defaultBranch() : com.sun.tools.corba.se.idl.TypedefEntry;
	
	@:overload public function addContained(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** This is a vector of SymtabEntry's.  It itemizes any types which
	this union contains.  For example:

	<pre>
	union A
	switch (long)
	{
	case 0: long x;
	case 1:
	Struct B
	{
	long a;
	long b;
	} y;
	}
	</pre>
	Struct B is contained within union A. */
	@:overload public function contained() : java.util.Vector<Dynamic>;
	
	
}
