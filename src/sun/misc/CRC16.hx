package sun.misc;
/*
* Copyright (c) 1994, 1995, Oracle and/or its affiliates. All rights reserved.
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
* The CRC-16 class calculates a 16 bit cyclic redundancy check of a set
* of bytes. This error detecting code is used to determine if bit rot
* has occured in a byte stream.
*/
extern class CRC16
{
	/** value contains the currently computed CRC, set it to 0 initally */
	@:public public var value : Int;
	
	@:overload @:public public function new() : Void;
	
	/** update CRC with byte b */
	@:overload @:public public function update(aByte : java.StdTypes.Int8) : Void;
	
	/** reset CRC value to 0 */
	@:overload @:public public function reset() : Void;
	
	
}
