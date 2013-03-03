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
extern class ValueRepositoryId
{
	@:overload @:public public function new() : Void;
	
	/**Add a value to the hashcode being computed.
	@param value the value to be added to the value RepositoryID. */
	@:overload @:public public function addValue(value : Int) : Void;
	
	/** Add a type to the list of types which have already been included.
	Note that the type should be added prior to its value.
	@param entry the type to be added to the value RepositoryID. */
	@:overload @:public public function addType(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/** Check to see if a specified type has already been processed. If so,
	add the appropriate 'previously processed' code (0xFFFFFFFF) and
	sequence offset, and return false; otherwise add the symbol table entry
	and current offset to the hashtable and return false.
	@param entry the type to be checked
	@return true if the symbol table entry has not been previously added;
	and false otherwise. */
	@:overload @:public public function isNewType(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Bool;
	
	/** Get the hashcode computed for the value type. This method MUST not be
	called until all fields have been added, since it computes the hash
	code from the values entered for each field.
	@return the 64 bit hashcode for the value type represented as a
	16 character hexadecimal string. */
	@:overload @:public public function getHashcode() : String;
	
	
}
