package com.sun.tools.corba.se.idl;
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
extern class InterfaceEntry extends com.sun.tools.corba.se.idl.SymtabEntry implements com.sun.tools.corba.se.idl.InterfaceType
{
	/**
	* This is the symbol table entry for interfaces.
	**/
	@:overload private function new() : Void;
	
	@:overload private function new(that : InterfaceEntry) : Void;
	
	@:overload private function new(that : com.sun.tools.corba.se.idl.SymtabEntry, clone : com.sun.tools.corba.se.idl.IDLID) : Void;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function isLocal() : Bool;
	
	@:overload public function isLocalServant() : Bool;
	
	@:overload public function isLocalSignature() : Bool;
	
	@:overload override public function clone() : Dynamic;
	
	/** Invoke the interface generator.
	@param symbolTable the symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream the stream to which the generator should sent its output.
	@see SymtabEntry */
	@:overload override public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access the interface generator.
	@returns an object which implements the InterfaceGen interface.
	@see InterfaceGen */
	@:overload override public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	/** Add an InterfaceEntry to the list of interfaces which this interface
	is derivedFrom.  During parsing, the parameter to this method COULD
	be a ForwardEntry, but when parsing is complete, calling derivedFrom
	will return a vector which only contains InterfaceEntry's. */
	@:overload public function addDerivedFrom(derivedFrom : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** This method returns a vector of InterfaceEntry's. */
	@:overload public function derivedFrom() : java.util.Vector<Dynamic>;
	
	/** Add to the list of derivedFrom names. */
	@:overload public function addDerivedFromName(name : String) : Void;
	
	/** This method returns a vector of Strings, each of which is a fully
	qualified name of an interface. This vector corresponds to the
	derivedFrom vector.  The first element of this vector is the name
	of the first element of the derivedFrom vector, etc. */
	@:overload public function derivedFromNames() : java.util.Vector<Dynamic>;
	
	/** Add a method/attribute to the list of methods. */
	@:overload public function addMethod(method : com.sun.tools.corba.se.idl.MethodEntry) : Void;
	
	/** This is a vector of MethodEntry's.  These are the methods and
	attributes contained within this Interface. */
	@:overload public function methods() : java.util.Vector<Dynamic>;
	
	/** Add a symbol table entry to this interface's contained vector. */
	@:overload public function addContained(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** This is a vector of SymtabEntry's.  Valid entries in this vector are:
	AttributeEntry, ConstEntry, EnumEntry, ExceptionEntry, MethodEntry,
	StructEntry, NativeEntry, TypedefEntry, UnionEntry.
	Note that the methods vector is a subset of this vector. */
	@:overload public function contained() : java.util.Vector<Dynamic>;
	
	@:overload public function replaceForwardDecl(oldEntry : com.sun.tools.corba.se.idl.ForwardEntry, newEntry : InterfaceEntry) : Bool;
	
	/** This method returns a vector of the elements in the state block.
	If it is null, this is not a stateful interface.  If it is non-null,
	but of zero length, then it is still stateful; it has no state
	entries itself, but it has an ancestor which does. */
	@:overload public function state() : java.util.Vector<Dynamic>;
	
	@:overload public function initState() : Void;
	
	@:overload public function addStateElement(state : com.sun.tools.corba.se.idl.InterfaceState, scanner : com.sun.tools.corba.se.idl.Scanner) : Void;
	
	@:overload public function getInterfaceType() : Int;
	
	@:overload public function setInterfaceType(type : Int) : Void;
	
	/** Get the allMethods vector. */
	@:overload public function allMethods() : java.util.Vector<Dynamic>;
	
	
}
