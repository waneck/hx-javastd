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
/**
* Each entry must have three ways in which it can be instantiated:
* <ul>
* <li>with no parameters;
* <li>cloned from a copy of itself;
* <li>the normal-use instantiation (usually with 2 parameters:  the container and the id of the container).
* </ul>
**/
extern interface SymtabFactory
{
	@:overload public function attributeEntry() : com.sun.tools.corba.se.idl.AttributeEntry;
	
	@:overload public function attributeEntry(container : com.sun.tools.corba.se.idl.InterfaceEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.AttributeEntry;
	
	@:overload public function constEntry() : com.sun.tools.corba.se.idl.ConstEntry;
	
	@:overload public function constEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ConstEntry;
	
	@:overload public function nativeEntry() : com.sun.tools.corba.se.idl.NativeEntry;
	
	@:overload public function nativeEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.NativeEntry;
	
	@:overload public function enumEntry() : com.sun.tools.corba.se.idl.EnumEntry;
	
	@:overload public function enumEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.EnumEntry;
	
	@:overload public function exceptionEntry() : com.sun.tools.corba.se.idl.ExceptionEntry;
	
	@:overload public function exceptionEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ExceptionEntry;
	
	@:overload public function forwardEntry() : com.sun.tools.corba.se.idl.ForwardEntry;
	
	@:overload public function forwardEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ForwardEntry;
	
	@:overload public function forwardValueEntry() : com.sun.tools.corba.se.idl.ForwardValueEntry;
	
	@:overload public function forwardValueEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ForwardValueEntry;
	
	@:overload public function includeEntry() : com.sun.tools.corba.se.idl.IncludeEntry;
	
	@:overload public function includeEntry(container : com.sun.tools.corba.se.idl.SymtabEntry) : com.sun.tools.corba.se.idl.IncludeEntry;
	
	@:overload public function interfaceEntry() : com.sun.tools.corba.se.idl.InterfaceEntry;
	
	@:overload public function interfaceEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.InterfaceEntry;
	
	@:overload public function valueEntry() : com.sun.tools.corba.se.idl.ValueEntry;
	
	@:overload public function valueEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ValueEntry;
	
	@:overload public function valueBoxEntry() : com.sun.tools.corba.se.idl.ValueBoxEntry;
	
	@:overload public function valueBoxEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ValueBoxEntry;
	
	@:overload public function methodEntry() : com.sun.tools.corba.se.idl.MethodEntry;
	
	@:overload public function methodEntry(container : com.sun.tools.corba.se.idl.InterfaceEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.MethodEntry;
	
	@:overload public function moduleEntry() : com.sun.tools.corba.se.idl.ModuleEntry;
	
	@:overload public function moduleEntry(container : com.sun.tools.corba.se.idl.ModuleEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ModuleEntry;
	
	@:overload public function parameterEntry() : com.sun.tools.corba.se.idl.ParameterEntry;
	
	@:overload public function parameterEntry(container : com.sun.tools.corba.se.idl.MethodEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.ParameterEntry;
	
	@:overload public function pragmaEntry() : com.sun.tools.corba.se.idl.PragmaEntry;
	
	@:overload public function pragmaEntry(container : com.sun.tools.corba.se.idl.SymtabEntry) : com.sun.tools.corba.se.idl.PragmaEntry;
	
	@:overload public function primitiveEntry() : com.sun.tools.corba.se.idl.PrimitiveEntry;
	
	/** name can be, but is not limited to, the primitive idl type names:
	char, octet, short, long, etc.  The reason it is not limited to
	these is that, as an extender, you may wish to override these names.
	For instance, when generating Java code, octet translates to byte,
	so there is an entry in Compile.overrideNames:  <"octet", "byte">
	and a PrimitiveEntry in the symbol table for "byte". */
	@:overload public function primitiveEntry(name : String) : com.sun.tools.corba.se.idl.PrimitiveEntry;
	
	@:overload public function sequenceEntry() : com.sun.tools.corba.se.idl.SequenceEntry;
	
	@:overload public function sequenceEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.SequenceEntry;
	
	@:overload public function stringEntry() : com.sun.tools.corba.se.idl.StringEntry;
	
	@:overload public function structEntry() : com.sun.tools.corba.se.idl.StructEntry;
	
	@:overload public function structEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.StructEntry;
	
	@:overload public function typedefEntry() : com.sun.tools.corba.se.idl.TypedefEntry;
	
	@:overload public function typedefEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.TypedefEntry;
	
	@:overload public function unionEntry() : com.sun.tools.corba.se.idl.UnionEntry;
	
	@:overload public function unionEntry(container : com.sun.tools.corba.se.idl.SymtabEntry, id : com.sun.tools.corba.se.idl.IDLID) : com.sun.tools.corba.se.idl.UnionEntry;
	
	
}
