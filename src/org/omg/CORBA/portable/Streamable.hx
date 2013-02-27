package org.omg.CORBA.portable;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern interface Streamable
{
	/**
	* Reads data from <code>istream</code> and initalizes the
	* <code>value</code> field of the Holder with the unmarshalled data.
	*
	* @param     istream   the InputStream that represents the CDR data from the wire.
	*/
	@:overload public function _read(istream : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Marshals to <code>ostream</code> the value in the
	* <code>value</code> field of the Holder.
	*
	* @param     ostream   the CDR OutputStream
	*/
	@:overload public function _write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Retrieves the <code>TypeCode</code> object corresponding to the value
	* in the <code>value</code> field of the Holder.
	*
	* @return    the <code>TypeCode</code> object for the value held in the holder
	*/
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
