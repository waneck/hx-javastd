package java.util.zip;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* A class that can be used to compute the CRC-32 of a data stream.
*
* @see         Checksum
* @author      David Connelly
*/
extern class CRC32 implements java.util.zip.Checksum
{
	/**
	* Creates a new CRC32 object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Updates the CRC-32 checksum with the specified byte (the low
	* eight bits of the argument b).
	*
	* @param b the byte to update the checksum with
	*/
	@:overload @:public public function update(b : Int) : Void;
	
	/**
	* Updates the CRC-32 checksum with the specified array of bytes.
	*/
	@:overload @:public public function update(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Updates the CRC-32 checksum with the specified array of bytes.
	*
	* @param b the array of bytes to update the checksum with
	*/
	@:overload @:public public function update(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Resets CRC-32 to initial value.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Returns CRC-32 value.
	*/
	@:overload @:public public function getValue() : haxe.Int64;
	
	
}
