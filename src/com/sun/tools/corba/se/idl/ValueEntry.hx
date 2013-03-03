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
extern class ValueEntry extends com.sun.tools.corba.se.idl.InterfaceEntry
{
	/**
* This is the symbol table entry for values.
**/
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(that : com.sun.tools.corba.se.idl.ValueEntry) : Void;
	
	@:overload @:protected private function new(that : com.sun.tools.corba.se.idl.SymtabEntry, clone : com.sun.tools.corba.se.idl.IDLID) : Void;
	
	@:overload @:public override public function clone() : Dynamic;
	
	/** Invoke the interface generator.
	@param symbolTable The symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream The stream to which the generator should sent its output.
	@see SymtabEntry */
	@:overload @:public override public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access the value generator.
	@returns an object which implements the ValueGen interface.
	@see ValueGen */
	@:overload @:public override public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	/** Add an InterfaceEntry to the list of interfaces which this value
	supports.  During parsing, the parameter to this method COULD be a
	ForwardEntry, but when parsing is complete, calling supports will
	return a vector which only contains InterfaceEntry's. */
	@:overload @:public public function addSupport(supports : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** This method returns a vector of InterfaceEntry's. */
	@:overload @:public public function supports() : java.util.Vector<Dynamic>;
	
	/** Add to the list of support names. */
	@:overload @:public public function addSupportName(name : String) : Void;
	
	/** This method returns a vector of Strings, each of which is a fully
	qualified name of an interface. This vector corresponds to the
	supports vector.  The first element of this vector is the name of
	the first element of the supports vector, etc. */
	@:overload @:public public function supportsNames() : java.util.Vector<Dynamic>;
	
	@:overload @:public override public function replaceForwardDecl(oldEntry : com.sun.tools.corba.se.idl.ForwardEntry, newEntry : com.sun.tools.corba.se.idl.InterfaceEntry) : Bool;
	
	@:overload @:public public function initializers() : java.util.Vector<Dynamic>;
	
	/** Tag all methods introduced by the value type as 'value methods' so
	they can be differentiated in the emitters from any interface methods
	that the value type supports. */
	@:overload @:public public function tagMethods() : Void;
	
	/** Get the 'custom' marshaling property. */
	@:overload @:public public function isCustom() : Bool;
	
	/** Set the 'custom' marshaling property. */
	@:overload @:public public function setCustom(isCustom : Bool) : Void;
	
	/** Return whether or not the value type can be "safely" truncated to
	its concrete parent type. */
	@:overload @:public public function isSafe() : Bool;
	
	
}
