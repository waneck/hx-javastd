package sun.jvmstat.perfdata.monitor;
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
extern class PerfStringMonitor extends sun.jvmstat.perfdata.monitor.PerfByteArrayMonitor implements sun.jvmstat.monitor.StringMonitor
{
	/**
	* Constructor to create a StringMonitor object for the string instrument
	* represented by the data in the given buffer.
	*
	* @param name the name of the string instrument
	* @param v the variability attribute
	* @param supported support level indicator
	* @param bb the buffer containing the string instrument data.
	*/
	@:overload public function new(name : String, v : sun.jvmstat.monitor.Variability, supported : Bool, bb : java.nio.ByteBuffer) : Void;
	
	/**
	* Constructor to create a StringMonitor object for the string instrument
	* represented by the data in the given buffer.
	*
	* @param name the name of the string instrument
	* @param v the variability attribute
	* @param supported support level indicator
	* @param bb the buffer containing the string instrument data.
	* @param maxLength the maximum length of the string data.
	*/
	@:overload public function new(name : String, v : sun.jvmstat.monitor.Variability, supported : Bool, bb : java.nio.ByteBuffer, maxLength : Int) : Void;
	
	/**
	* {@inheritDoc}
	* The object returned contains a String with a copy of the current
	* value of the StringInstrument.
	*
	* @return Object - a copy of the current value of the StringInstrument.
	*                  The return value is guaranteed to be of type String.
	*/
	@:overload override public function getValue() : Dynamic;
	
	/**
	* Return the current value of the StringInstrument as a String.
	*
	* @return String - a copy of the current value of the StringInstrument.
	*/
	@:overload public function stringValue() : String;
	
	
}