package org.omg.CORBA;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class IntHolder implements org.omg.CORBA.portable.Streamable
{
	/**
	* The <code>int</code> value held by this <code>IntHolder</code>
	* object in its <code>value</code> field.
	*/
	public var value : Int;
	
	/**
	* Constructs a new <code>IntHolder</code> object with its
	* <code>value</code> field initialized to <code>0</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>IntHolder</code> object with its
	* <code>value</code> field initialized to the given
	* <code>int</code>.
	* @param initial the <code>int</code> with which to initialize
	*                the <code>value</code> field of the newly-created
	*                <code>IntHolder</code> object
	*/
	@:overload public function new(initial : Int) : Void;
	
	/**
	* Reads unmarshalled data from <code>input</code> and assigns it to
	* the <code>value</code> field in this <code>IntHolder</code> object.
	*
	* @param input the <code>InputStream</code> object containing CDR
	*              formatted data from the wire
	*/
	@:overload public function _read(input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Marshals the value in this <code>IntHolder</code> object's
	* <code>value</code> field to the output stream <code>output</code>.
	*
	* @param output the <code>OutputStream</code> object that will contain
	*               the CDR formatted data
	*/
	@:overload public function _write(output : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Retrieves the <code>TypeCode</code> object that corresponds
	* to the value held in this <code>IntHolder</code> object's
	* <code>value</code> field.
	*
	* @return    the type code for the value held in this <code>IntHolder</code>
	*            object
	*/
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
