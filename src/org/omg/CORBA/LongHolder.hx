package org.omg.CORBA;
/*
* Copyright (c) 1995, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class LongHolder implements org.omg.CORBA.portable.Streamable
{
	/**
	* The <code>long</code> value held by this <code>LongHolder</code>
	* object.
	*/
	@:public public var value : haxe.Int64;
	
	/**
	* Constructs a new <code>LongHolder</code> object with its
	* <code>value</code> field initialized to <code>0</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>LongHolder</code> object with its
	* <code>value</code> field initialized to the given
	* <code>long</code>.
	* @param initial the <code>long</code> with which to initialize
	*                the <code>value</code> field of the newly-created
	*                <code>LongHolder</code> object
	*/
	@:overload @:public public function new(initial : haxe.Int64) : Void;
	
	/**
	* Reads from <code>input</code> and initalizes the value in the Holder
	* with the unmarshalled data.
	*
	* @param input the InputStream containing CDR formatted data from the wire
	*/
	@:overload @:public public function _read(input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Marshals to <code>output</code> the value in the Holder.
	*
	* @param output the OutputStream which will contain the CDR formatted data
	*/
	@:overload @:public public function _write(output : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Returns the <code>TypeCode</code> object
	* corresponding to the value held in the Holder.
	*
	* @return    the TypeCode of the value held in the holder
	*/
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
