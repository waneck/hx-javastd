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
/**
* @author Sreenivas Munnangi
*/
extern class TimeStatisticImpl extends com.sun.org.glassfish.external.statistics.impl.StatisticImpl implements com.sun.org.glassfish.external.statistics.TimeStatistic implements java.lang.reflect.InvocationHandler
{
	@:overload @:synchronized @:final override public function toString() : String;
	
	@:overload public function new(counter : haxe.Int64, maximumTime : haxe.Int64, minimumTime : haxe.Int64, totalTime : haxe.Int64, name : String, unit : String, desc : String, startTime : haxe.Int64, sampleTime : haxe.Int64) : Void;
	
	@:overload @:synchronized public function getStatistic() : com.sun.org.glassfish.external.statistics.TimeStatistic;
	
	@:overload @:synchronized override public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:synchronized public function incrementCount(current : haxe.Int64) : Void;
	
	/**
	* Returns the number of times an operation was invoked
	*/
	@:overload @:synchronized public function getCount() : haxe.Int64;
	
	/**
	* Returns the maximum amount of time that it took for one invocation of an
	* operation, since measurement started.
	*/
	@:overload @:synchronized public function getMaxTime() : haxe.Int64;
	
	/**
	* Returns the minimum amount of time that it took for one invocation of an
	* operation, since measurement started.
	*/
	@:overload @:synchronized public function getMinTime() : haxe.Int64;
	
	/**
	* Returns the amount of time that it took for all invocations,
	* since measurement started.
	*/
	@:overload @:synchronized public function getTotalTime() : haxe.Int64;
	
	@:overload @:synchronized override public function reset() : Void;
	
	@:overload public function invoke(proxy : Dynamic, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
