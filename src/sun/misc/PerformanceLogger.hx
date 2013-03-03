package sun.misc;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class PerformanceLogger
{
	/**
	* Returns status of whether logging is enabled or not.  This is
	* provided as a convenience method so that users do not have to
	* perform the same GetPropertyAction check as above to determine whether
	* to enable performance logging.
	*/
	@:overload @:public @:static public static function loggingEnabled() : Bool;
	
	/**
	* Sets the start time.  Ideally, this is the earliest time available
	* during the startup of a Java applet or application.  This time is
	* later used to analyze the difference between the initial startup
	* time and other events in the system (such as an applet's init time).
	*/
	@:overload @:public @:static public static function setStartTime(message : String) : Void;
	
	/**
	* Sets the base time, output can then
	* be displayed as offsets from the base time;.
	*/
	@:overload @:public @:static public static function setBaseTime(time : haxe.Int64) : Void;
	
	/**
	* Sets the start time.
	* This version of the method is
	* given the time to log, instead of expecting this method to
	* get the time itself.  This is done in case the time was
	* recorded much earlier than this method was called.
	*/
	@:overload @:public @:static public static function setStartTime(message : String, time : haxe.Int64) : Void;
	
	/**
	* Gets the start time, which should be the time when
	* the java process started, prior to the VM actually being
	* loaded.
	*/
	@:overload @:public @:static public static function getStartTime() : haxe.Int64;
	
	/**
	* Sets the value of a given time and returns the index of the
	* slot that that time was stored in.
	*/
	@:overload @:public @:static public static function setTime(message : String) : Int;
	
	/**
	* Sets the value of a given time and returns the index of the
	* slot that that time was stored in.
	* This version of the method is
	* given the time to log, instead of expecting this method to
	* get the time itself.  This is done in case the time was
	* recorded much earlier than this method was called.
	*/
	@:overload @:public @:static public static function setTime(message : String, time : haxe.Int64) : Int;
	
	/**
	* Returns time at given index.
	*/
	@:overload @:public @:static public static function getTimeAtIndex(index : Int) : haxe.Int64;
	
	/**
	* Returns message at given index.
	*/
	@:overload @:public @:static public static function getMessageAtIndex(index : Int) : String;
	
	/**
	* Outputs all data to parameter-specified Writer object
	*/
	@:overload @:public @:static public static function outputLog(writer : java.io.Writer) : Void;
	
	/**
	* Outputs all data to whatever location the user specified
	* via sun.perflog command-line parameter.
	*/
	@:overload @:public @:static public static function outputLog() : Void;
	
	
}
/**
* Internal class used to store time/message data together.
*/
@:native('sun$misc$PerformanceLogger$TimeData') @:internal extern class PerformanceLogger_TimeData
{
	
}
