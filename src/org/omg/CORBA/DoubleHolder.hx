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
extern class DoubleHolder implements org.omg.CORBA.portable.Streamable
{
	/**
	* The <code>double</code> value held by this <code>DoubleHolder</code>
	* object.
	*/
	@:public public var value : Float;
	
	/**
	* Constructs a new <code>DoubleHolder</code> object with its
	* <code>value</code> field initialized to 0.0.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>DoubleHolder</code> object for the given
	* <code>double</code>.
	* @param initial the <code>double</code> with which to initialize
	*                the <code>value</code> field of the new
	*                <code>DoubleHolder</code> object
	*/
	@:overload @:public public function new(initial : Float) : Void;
	
	/**
	* Read a double value from the input stream and store it in the
	* value member.
	*
	* @param input the <code>InputStream</code> to read from.
	*/
	@:overload @:public public function _read(input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Write the double value stored in this holder to an
	* <code>OutputStream</code>.
	*
	* @param output the <code>OutputStream</code> to write into.
	*/
	@:overload @:public public function _write(output : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Return the <code>TypeCode</code> of this holder object.
	*
	* @return the <code>TypeCode</code> object.
	*/
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
