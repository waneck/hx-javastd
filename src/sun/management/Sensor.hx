package sun.management;
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
extern class Sensor
{
	/**
	* Constructs a <tt>Sensor</tt> object.
	*
	* @param name The name of this sensor.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Returns the name of this sensor.
	*
	* @return the name of this sensor.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the total number of times that this sensor has been triggered.
	*
	* @return the total number of times that this sensor has been triggered.
	*/
	@:overload @:public public function getCount() : haxe.Int64;
	
	/**
	* Tests if this sensor is currently on.
	*
	* @return <tt>true</tt> if the sensor is currently on;
	*         <tt>false</tt> otherwise.
	*
	*/
	@:overload @:public public function isOn() : Bool;
	
	/**
	* Triggers this sensor. This method first sets this sensor on
	* and increments its sensor count.
	*/
	@:overload @:public public function trigger() : Void;
	
	/**
	* Triggers this sensor. This method sets this sensor on
	* and increments the count with the input <tt>increment</tt>.
	*/
	@:overload @:public public function trigger(increment : Int) : Void;
	
	/**
	* Triggers this sensor piggybacking a memory usage object.
	* This method sets this sensor on
	* and increments the count with the input <tt>increment</tt>.
	*/
	@:overload @:public public function trigger(increment : Int, usage : java.lang.management.MemoryUsage) : Void;
	
	/**
	* Clears this sensor.
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* Clears this sensor
	* and increments the count with the input <tt>increment</tt>.
	*/
	@:overload @:public public function clear(increment : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
