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
extern class SymtabEntry
{
	/**
	* This is the base class for all symbol table entries.
	* @see AttributeEntry
	* @see ConstEntry
	* @see EnumEntry
	* @see ExceptionEntry
	* @see IncludeEntry
	* @see InterfaceEntry
	* @see MethodEntry
	* @see ModuleEntry
	* @see ParameterEntry
	* @see PragmaEntry
	* @see PrimitiveEntry
	* @see SequenceEntry
	* @see StructEntry
	* @see TypedefEntry
	* @see UnionEntry
	**/
	@:overload @:public public function new() : Void;
	
	/** This is a shallow copy clone */
	@:overload @:public public function clone() : Dynamic;
	
	/** @return the concatenation of the module and the name, delimited by '/'. */
	@:overload @:public @:final public function fullName() : String;
	
	/** Get the name of this entry's module.  If there are modules within
	modules, each module name is separated by '/'.
	@returns this entry's module name. */
	@:overload @:public public function module() : String;
	
	/** Set the module for this entry.
	@param newName the new name of the module. */
	@:overload @:public public function module(newName : String) : Void;
	
	/** @return the name of this entry. */
	@:overload @:public public function name() : String;
	
	/** Set the name.
	@param newName the new name. */
	@:overload @:public public function name(newName : String) : Void;
	
	/** @return the type name of this entry. */
	@:overload @:public public function typeName() : String;
	
	@:overload @:protected private function typeName(typeName : String) : Void;
	
	/** @return the type entry of this entry */
	@:overload @:public public function type() : com.sun.tools.corba.se.idl.SymtabEntry;
	
	@:overload @:public public function type(newType : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** The file name in which this entry was defined. */
	@:overload @:public public function sourceFile() : com.sun.tools.corba.se.idl.IncludeEntry;
	
	/** The file name in which this entry was defined. */
	@:overload @:public public function sourceFile(file : com.sun.tools.corba.se.idl.IncludeEntry) : Void;
	
	/** This must be either an InterfaceEntry or a ModuleEntry.
	It can be nothing else. */
	@:overload @:public public function container() : com.sun.tools.corba.se.idl.SymtabEntry;
	
	/** This must be either an InterfaceEntry or a ModuleEntry.
	It can be nothing else. */
	@:overload @:public public function container(newContainer : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** @return the repository ID for this entry. */
	@:overload @:public public function repositoryID() : com.sun.tools.corba.se.idl.RepositoryID;
	
	/** Set the repository ID for this entry.
	@param id the new repository ID. */
	@:overload @:public public function repositoryID(id : com.sun.tools.corba.se.idl.RepositoryID) : Void;
	
	/** Should this type be emitted? */
	@:overload @:public public function emit() : Bool;
	
	@:overload @:public public function emit(emit : Bool) : Void;
	
	/* <21jul1997daz> Accessors for comment */
	@:overload @:public public function comment() : com.sun.tools.corba.se.idl.Comment;
	
	@:overload @:public public function comment(comment : com.sun.tools.corba.se.idl.Comment) : Void;
	
	@:overload @:public public function isReferencable() : Bool;
	
	@:overload @:public public function isReferencable(value : Bool) : Void;
	
	/** Other variables besides the default ones can be dynamically placed
	into SymTabEntry (and therefore on all symbol table entries) by
	extenders.  Before such a variable can exist, its key must be
	obtained by calling getVariableKey. */
	@:overload @:public @:static public static function getVariableKey() : Int;
	
	/** Other variables besides the default ones can be dynamically placed
	into SymTabEntry (and therefore on all symbol table entries) by
	extenders.  This method assigns the value to the variable of the
	given key.  A valid key must be obtained by calling the method
	getVariableKey.  If the key is invalid, NoSuchFieldException is
	thrown. */
	@:overload @:public public function dynamicVariable(key : Int, value : Dynamic) : Void;
	
	/** Other variables besides the default ones can be dynamically placed
	into SymTabEntry (and therefore on all symbol table entries) by
	extenders.  This method gets the value of the variable of the
	given key.  A valid key must be obtained by calling the method
	getVariableKey.  If the key is invalid, NoSuchFieldException is
	thrown. */
	@:overload @:public public function dynamicVariable(key : Int) : Dynamic;
	
	/** Invoke a generator.  A call to this method is only meaningful
	for subclasses of SymtabEntry.  If called on this class, it
	is a no-op.
	@param symbolTable the symbol table is a hash table whose key is
	a fully qualified type name and whose value is a SymtabEntry or
	a subclass of SymtabEntry.
	@param stream the stream to which the generator should sent its output. */
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, stream : java.io.PrintWriter) : Void;
	
	/** Access a generator.  A call to this method is only meaningful
	for subclasses of SymtabEntry.  If called on this class, it
	is a no-op.
	@return an object which implements the Generator interface. */
	@:overload @:public public function generator() : com.sun.tools.corba.se.idl.Generator;
	
	
}
