package sun.management.counter.perf;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PerfDataEntry
{
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function type() : sun.management.counter.perf.PerfDataType;
	
	@:overload @:public public function units() : sun.management.counter.Units;
	
	@:overload @:public public function flags() : Int;
	
	/**
	* Returns the number of elements in the data.
	*/
	@:overload @:public public function vectorLength() : Int;
	
	@:overload @:public public function variability() : sun.management.counter.Variability;
	
	@:overload @:public public function byteData() : java.nio.ByteBuffer;
	
	@:overload @:public public function longData() : java.nio.LongBuffer;
	
	
}
@:native('sun$management$counter$perf$PerfDataEntry$EntryFieldOffset') @:internal extern class PerfDataEntry_EntryFieldOffset
{
	
}
