package com.sun.org.glassfish.external.statistics.impl;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class StatisticImpl implements com.sun.org.glassfish.external.statistics.Statistic
{
	@:protected private var sampleTime : haxe.Int64;
	
	@:public @:static @:final public static var UNIT_COUNT(default, null) : String;
	
	@:public @:static @:final public static var UNIT_SECOND(default, null) : String;
	
	@:public @:static @:final public static var UNIT_MILLISECOND(default, null) : String;
	
	@:public @:static @:final public static var UNIT_MICROSECOND(default, null) : String;
	
	@:public @:static @:final public static var UNIT_NANOSECOND(default, null) : String;
	
	@:public @:static @:final public static var START_TIME(default, null) : String;
	
	@:public @:static @:final public static var LAST_SAMPLE_TIME(default, null) : String;
	
	@:protected @:final private var statMap(default, null) : java.util.Map<String, Dynamic>;
	
	@:protected @:static @:final private static var NEWLINE(default, null) : String;
	
	@:overload @:protected private function new(name : String, unit : String, desc : String, start_time : haxe.Int64, sample_time : haxe.Int64) : Void;
	
	@:overload @:protected private function new(name : String, unit : String, desc : String) : Void;
	
	@:overload @:public @:synchronized public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getDescription() : String;
	
	@:overload @:public public function getUnit() : String;
	
	@:overload @:public @:synchronized public function getLastSampleTime() : haxe.Int64;
	
	@:overload @:public @:synchronized public function getStartTime() : haxe.Int64;
	
	@:overload @:public @:synchronized public function reset() : Void;
	
	@:overload @:public @:synchronized public function toString() : String;
	
	@:overload @:protected @:static private static function isValidString(str : String) : Bool;
	
	
}
