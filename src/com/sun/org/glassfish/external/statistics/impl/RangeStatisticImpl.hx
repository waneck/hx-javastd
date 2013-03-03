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
extern class RangeStatisticImpl extends com.sun.org.glassfish.external.statistics.impl.StatisticImpl implements com.sun.org.glassfish.external.statistics.RangeStatistic implements java.lang.reflect.InvocationHandler
{
	@:overload @:public public function new(curVal : haxe.Int64, highMark : haxe.Int64, lowMark : haxe.Int64, name : String, unit : String, desc : String, startTime : haxe.Int64, sampleTime : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function getStatistic() : com.sun.org.glassfish.external.statistics.RangeStatistic;
	
	@:overload @:public @:synchronized override public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public @:synchronized public function getCurrent() : haxe.Int64;
	
	@:overload @:public @:synchronized public function setCurrent(curVal : haxe.Int64) : Void;
	
	/**
	* Returns the highest value of this statistic, since measurement started.
	*/
	@:overload @:public @:synchronized public function getHighWaterMark() : haxe.Int64;
	
	@:overload @:public @:synchronized public function setHighWaterMark(hwm : haxe.Int64) : Void;
	
	/**
	* Returns the lowest value of this statistic, since measurement started.
	*/
	@:overload @:public @:synchronized public function getLowWaterMark() : haxe.Int64;
	
	@:overload @:public @:synchronized public function setLowWaterMark(lwm : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	@:overload @:public @:synchronized override public function toString() : String;
	
	@:overload @:public public function invoke(proxy : Dynamic, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
