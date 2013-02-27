package sun.jvmstat.monitor;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Interface provided by Instrumentation Monitoring Objects.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern interface Monitor
{
	/**
	* Returns the name of this instrumentation object.
	*
	* @return String - the name assigned to this instrumentation monitoring
	*                  object
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the base name of this instrumentation object.
	* The base name is the component of the name following the last
	* "." character in the name.
	*
	* @return String - the base name of the name assigned to this
	*                  instrumentation monitoring object.
	*/
	@:overload public function getBaseName() : String;
	
	/**
	* Returns the Units for this instrumentation monitoring object.
	*
	* @return Units - the units of measure attribute
	*/
	@:overload public function getUnits() : sun.jvmstat.monitor.Units;
	
	/**
	* Returns the Variability for this instrumentation object.
	*
	*@return Variability - the variability attribute
	*/
	@:overload public function getVariability() : sun.jvmstat.monitor.Variability;
	
	/**
	* Test if the instrumentation object is a vector type.
	*
	* @return boolean - true if this instrumentation object is a vector type,
	*                   false otherwise.
	*/
	@:overload public function isVector() : Bool;
	
	/**
	* Return the length of the vector.
	* @return int - the length of the vector or zero if this instrumentation
	*               object is a scalar type.
	*/
	@:overload public function getVectorLength() : Int;
	
	/**
	* Test if the instrumentation object is supported.
	*/
	@:overload public function isSupported() : Bool;
	
	/**
	* Return an Object that encapsulates this instrumentation object's
	* current data value.
	*/
	@:overload public function getValue() : Dynamic;
	
	
}
