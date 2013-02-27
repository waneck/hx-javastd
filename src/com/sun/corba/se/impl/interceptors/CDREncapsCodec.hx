package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CDREncapsCodec extends org.omg.CORBA.LocalObject implements org.omg.IOP.Codec
{
	/**
	* Creates a new codec implementation.  Uses the given ORB to create
	* CDRInputStreams when necessary.
	*
	* @param orb The ORB to use to create a CDRInputStream or CDROutputStream
	* @param major The major version of GIOP we are encoding for
	* @param minor The minor version of GIOP we are encoding for
	*/
	@:overload public function new(orb : org.omg.CORBA.ORB, major : Int, minor : Int) : Void;
	
	/**
	* Convert the given any into a CDR encapsulated octet sequence
	*/
	@:overload public function encode(data : org.omg.CORBA.Any) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decode the given octet sequence into an any based on a CDR
	* encapsulated octet sequence.
	*/
	@:overload public function decode(data : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Any;
	
	/**
	* Convert the given any into a CDR encapsulated octet sequence.  Only
	* the data is stored.  The type code is not.
	*/
	@:overload public function encode_value(data : org.omg.CORBA.Any) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decode the given octet sequence into an any based on a CDR
	* encapsulated octet sequence.  The type code is expected not to appear
	* in the octet sequence, and the given type code is used instead.
	*/
	@:overload public function decode_value(data : java.NativeArray<java.StdTypes.Int8>, tc : org.omg.CORBA.TypeCode) : org.omg.CORBA.Any;
	
	
}
