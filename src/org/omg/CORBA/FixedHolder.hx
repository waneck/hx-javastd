package org.omg.CORBA;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class FixedHolder implements org.omg.CORBA.portable.Streamable
{
	/**
	* The value held by the FixedHolder
	*/
	@:public public var value : java.math.BigDecimal;
	
	/**
	* Construct the FixedHolder without initializing the contained value.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct the FixedHolder and initialize it with the given value.
	* @param initial the value used to initialize the FixedHolder
	*/
	@:overload @:public public function new(initial : java.math.BigDecimal) : Void;
	
	/**
	* Read a fixed point value from the input stream and store it in
	* the value member.
	*
	* @param input the <code>InputStream</code> to read from.
	*/
	@:overload @:public public function _read(input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Write the fixed point value stored in this holder to an
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
