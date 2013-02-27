package sun.management.counter.perf;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PerfDataType
{
	public static var BOOLEAN(default, null) : PerfDataType;
	
	public static var CHAR(default, null) : PerfDataType;
	
	public static var FLOAT(default, null) : PerfDataType;
	
	public static var DOUBLE(default, null) : PerfDataType;
	
	public static var BYTE(default, null) : PerfDataType;
	
	public static var SHORT(default, null) : PerfDataType;
	
	public static var INT(default, null) : PerfDataType;
	
	public static var LONG(default, null) : PerfDataType;
	
	public static var ILLEGAL(default, null) : PerfDataType;
	
	@:overload public function toString() : String;
	
	@:overload public function byteValue() : java.StdTypes.Int8;
	
	@:overload public function size() : Int;
	
	/**
	* Maps an integer PerfDataType value to its corresponding PerfDataType
	* object.
	*
	* @param   i  an integer representation of a PerfDataType
	* @return     The PerfDataType object for <code>i</code>
	*/
	@:overload public static function toPerfDataType(type : java.StdTypes.Int8) : PerfDataType;
	
	
}
