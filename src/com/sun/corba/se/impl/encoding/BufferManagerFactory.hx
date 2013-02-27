package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferManagerFactory
{
	/**
	* Creates read/write buffer managers to handle over/under flow
	* in CDR*putStream.
	*/
	public static var GROW(default, null) : Int;
	
	public static var COLLECT(default, null) : Int;
	
	public static var STREAM(default, null) : Int;
	
	@:overload public static function newBufferManagerRead(version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:overload public static function newBufferManagerRead(strategy : Int, encodingVersion : java.StdTypes.Int8, orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:overload public static function newBufferManagerWrite(strategy : Int, encodingVersion : java.StdTypes.Int8, orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload public static function newBufferManagerWrite(version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload public static function defaultBufferManagerRead(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	
}
