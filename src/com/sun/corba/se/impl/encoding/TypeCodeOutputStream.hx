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
extern class TypeCodeOutputStream extends com.sun.corba.se.impl.encoding.EncapsOutputStream
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, littleEndian : Bool) : Void;
	
	@:overload override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload public function setEnclosingOutputStream(enclosure : java.io.OutputStream) : Void;
	
	/*
	public boolean isEncapsulatedIn(TypeCodeOutputStream outerEnclosure) {
	if (outerEnclosure == this)
	return true;
	if (enclosure == null)
	return false;
	if (enclosure instanceof TypeCodeOutputStream)
	return ((TypeCodeOutputStream)enclosure).isEncapsulatedIn(outerEnclosure);
	// Last chance! Recursion ends with first non TypeCodeOutputStream.
	return (enclosure == outerEnclosure);
	}
	*/
	@:overload public function getTopLevelStream() : com.sun.corba.se.impl.encoding.TypeCodeOutputStream;
	
	@:overload public function getTopLevelPosition() : Int;
	
	@:overload public function addIDAtPosition(id : String, position : Int) : Void;
	
	@:overload public function getPositionForID(id : String) : Int;
	
	@:overload public function writeRawBuffer(s : org.omg.CORBA.portable.OutputStream, firstLong : Int) : Void;
	
	@:overload public function createEncapsulation(_orb : org.omg.CORBA.ORB) : com.sun.corba.se.impl.encoding.TypeCodeOutputStream;
	
	@:overload private function makeEncapsulation() : Void;
	
	@:overload public static function wrapOutputStream(os : java.io.OutputStream) : com.sun.corba.se.impl.encoding.TypeCodeOutputStream;
	
	@:overload public function getPosition() : Int;
	
	@:overload public function getRealIndex(index : Int) : Int;
	
	/*
	protected void printBuffer() {
	super.printBuffer();
	}
*/
	@:overload public function getTypeCodeBuffer() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function printTypeMap() : Void;
	
	
}
