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
extern class StructEntry extends com.sun.tools.corba.se.idl.SymtabEntry
{
	/**
	* This is the symbol table entry for structs.
	**/
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(that : com.sun.tools.corba.se.idl.StructEntry) : Void;
	
	@:overload @:protected private function new(that : com.sun.tools.corba.se.idl.SymtabEntry, clone : com.sun.tools.corba.se.idl.IDLID) : Void;
	
	@:overload @:public override public function clone() : Dynamic;
	
	/** Invoke the struct generator.
	@param symbolTable the symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream the stream to which the generator should sent its output.
	@see SymtabEntry */
	@:overload @:public override public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access the struct generator.
	@returns an object which implements the StructGen interface.
	@see StructGen */
	@:overload @:public override public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	/** Add a member to the member list. */
	@:overload @:public public function addMember(member : com.sun.tools.corba.se.idl.TypedefEntry) : Void;
	
	/** This is a vector of TypedefEntry's.  In this context, only the name,
	type, and arrayInfo fields hold any meaning. */
	@:overload @:public public function members() : java.util.Vector<Dynamic>;
	
	@:overload @:public public function addContained(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** This is a vector of SymtabEntry's.  It itemizes any types which
	this struct contains.  It is different than the member list.
	For example:
	<pre>
	struct A
	{
	long x;
	Struct B
	{
	long a;
	long b;
	} y;
	}
	</pre>
	Struct B is contained within struct A.
	The members vector will contain entries for x and y. */
	@:overload @:public public function contained() : java.util.Vector<Dynamic>;
	
	
}
