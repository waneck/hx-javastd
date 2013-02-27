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
/**
* The base class for a performance counter.
*
* @author   Brian Doherty
*/
extern interface Counter extends java.io.Serializable
{
	/**
	* Returns the name of this performance counter
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the Units for this performance counter
	*/
	@:overload public function getUnits() : sun.management.counter.Units;
	
	/**
	* Returns the Variability for this performance counter
	*/
	@:overload public function getVariability() : sun.management.counter.Variability;
	
	/**
	* Returns true if this performance counter is a vector
	*/
	@:overload public function isVector() : Bool;
	
	/**
	* Returns the length of the vector
	*/
	@:overload public function getVectorLength() : Int;
	
	/**
	* Returns an Object that encapsulates the data value of this counter
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Returns <tt>true</tt> if this counter is an internal counter.
	*/
	@:overload public function isInternal() : Bool;
	
	/**
	* Return the flags associated with the counter.
	*/
	@:overload public function getFlags() : Int;
	
	
}
