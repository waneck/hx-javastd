package sun.misc;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class PerfCounter
{
	/**
	* Returns the current value of the perf counter.
	*/
	@:overload @:public @:synchronized public function get() : haxe.Int64;
	
	/**
	* Sets the value of the perf counter to the given newValue.
	*/
	@:overload @:public @:synchronized public function set(newValue : haxe.Int64) : Void;
	
	/**
	* Adds the given value to the perf counter.
	*/
	@:overload @:public @:synchronized public function add(value : haxe.Int64) : Void;
	
	/**
	* Increments the perf counter with 1.
	*/
	@:overload @:public public function increment() : Void;
	
	/**
	* Adds the given interval to the perf counter.
	*/
	@:overload @:public public function addTime(interval : haxe.Int64) : Void;
	
	/**
	* Adds the elapsed time from the given start time (ns) to the perf counter.
	*/
	@:overload @:public public function addElapsedTimeFrom(startTime : haxe.Int64) : Void;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Number of findClass calls
	*/
	@:overload @:public @:static public static function getFindClasses() : sun.misc.PerfCounter;
	
	/**
	* Time (ns) spent in finding classes that includes
	* lookup and read class bytes and defineClass
	*/
	@:overload @:public @:static public static function getFindClassTime() : sun.misc.PerfCounter;
	
	/**
	* Time (ns) spent in finding classes
	*/
	@:overload @:public @:static public static function getReadClassBytesTime() : sun.misc.PerfCounter;
	
	/**
	* Time (ns) spent in the parent delegation to
	* the parent of the defining class loader
	*/
	@:overload @:public @:static public static function getParentDelegationTime() : sun.misc.PerfCounter;
	
	/**
	* Number of zip files opened.
	*/
	@:overload @:public @:static public static function getZipFileCount() : sun.misc.PerfCounter;
	
	/**
	* Time (ns) spent in opening the zip files that
	* includes building the entries hash table
	*/
	@:overload @:public @:static public static function getZipFileOpenTime() : sun.misc.PerfCounter;
	
	/**
	* D3D graphic pipeline available
	*/
	@:overload @:public @:static public static function getD3DAvailable() : sun.misc.PerfCounter;
	
	
}
@:native('sun$misc$PerfCounter$CoreCounters') @:internal extern class PerfCounter_CoreCounters
{
	
}
@:native('sun$misc$PerfCounter$WindowsClientCounters') @:internal extern class PerfCounter_WindowsClientCounters
{
	
}
