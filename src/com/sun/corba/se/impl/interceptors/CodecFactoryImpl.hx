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
extern class CodecFactoryImpl extends org.omg.CORBA.LocalObject implements org.omg.IOP.CodecFactory
{
	/**
	* Creates a new CodecFactory implementation.  Stores the ORB that
	* created this factory, for later use by the Codec.
	*/
	@:overload public function new(orb : org.omg.CORBA.ORB) : Void;
	
	/**
	* Creates a codec of the given encoding.  The only format recognized
	* by this factory is ENCODING_CDR_ENCAPS, versions 1.0 through
	* 1.(MAX_MINOR_VERSION_SUPPORTED).
	*
	* @exception UnknownEncoding Thrown if this factory cannot create a
	*   Codec of the given encoding.
	*/
	@:overload public function create_codec(enc : org.omg.IOP.Encoding) : org.omg.IOP.Codec;
	
	
}
