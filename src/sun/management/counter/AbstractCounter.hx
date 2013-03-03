package sun.management.counter;
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
extern class AbstractCounter implements sun.management.counter.Counter
{
	@:overload @:protected private function new(name : String, units : sun.management.counter.Units, variability : sun.management.counter.Variability, flags : Int, vectorLength : Int) : Void;
	
	@:overload @:protected private function new(name : String, units : sun.management.counter.Units, variability : sun.management.counter.Variability, flags : Int) : Void;
	
	/**
	* Returns the name of the Performance Counter
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the Units for this Performance Counter
	*/
	@:overload @:public public function getUnits() : sun.management.counter.Units;
	
	/**
	* Returns the Variability for this performance Object
	*/
	@:overload @:public public function getVariability() : sun.management.counter.Variability;
	
	/**
	* Return true if this performance counter is a vector
	*/
	@:overload @:public public function isVector() : Bool;
	
	/**
	* return the length of the vector
	*/
	@:overload @:public public function getVectorLength() : Int;
	
	@:overload @:public public function isInternal() : Bool;
	
	/**
	* return the flags associated with the counter.
	*/
	@:overload @:public public function getFlags() : Int;
	
	@:overload @:public @:abstract public function getValue() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$management$counter$AbstractCounter$Flags') @:internal extern class AbstractCounter_Flags
{
	
}
