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
extern class PerfByteArrayCounter extends sun.management.counter.AbstractCounter implements sun.management.counter.ByteArrayCounter
{
	@:overload @:public override public function getValue() : Dynamic;
	
	/**
	* Get a copy of the elements of the ByteArrayCounter.
	*/
	@:overload @:public public function byteArrayValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get the value of an element of the ByteArrayCounter object.
	*/
	@:overload @:public public function byteAt(index : Int) : java.StdTypes.Int8;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Serialize as a snapshot object.
	*/
	@:overload @:protected private function writeReplace() : Dynamic;
	
	
}
