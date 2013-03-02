package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeCodeInputStream extends com.sun.corba.se.impl.encoding.EncapsInputStream implements com.sun.corba.se.impl.encoding.TypeCodeReader
{
	@:overload public function new(orb : org.omg.CORBA.ORB, data : java.NativeArray<java.StdTypes.Int8>, size : Int) : Void;
	
	@:overload public function new(orb : org.omg.CORBA.ORB, data : java.NativeArray<java.StdTypes.Int8>, size : Int, littleEndian : Bool, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload public function new(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, size : Int, littleEndian : Bool, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload public function addTypeCodeAtPosition(tc : com.sun.corba.se.impl.corba.TypeCodeImpl, position : Int) : Void;
	
	@:overload public function getTypeCodeAtPosition(position : Int) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload public function setEnclosingInputStream(enclosure : java.io.InputStream) : Void;
	
	@:overload public function getTopLevelStream() : com.sun.corba.se.impl.encoding.TypeCodeReader;
	
	@:overload public function getTopLevelPosition() : Int;
	
	@:overload public static function readEncapsulation(is : java.io.InputStream, _orb : org.omg.CORBA.ORB) : TypeCodeInputStream;
	
	@:overload private function makeEncapsulation() : Void;
	
	@:overload public function printTypeMap() : Void;
	
	
}
