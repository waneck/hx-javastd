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
extern class AverageRangeStatisticImpl extends com.sun.org.glassfish.external.statistics.impl.StatisticImpl implements com.sun.org.glassfish.external.statistics.AverageRangeStatistic implements java.lang.reflect.InvocationHandler
{
	@:overload public function new(curVal : haxe.Int64, highMark : haxe.Int64, lowMark : haxe.Int64, name : String, unit : String, desc : String, startTime : haxe.Int64, sampleTime : haxe.Int64) : Void;
	
	@:overload @:synchronized public function getStatistic() : com.sun.org.glassfish.external.statistics.AverageRangeStatistic;
	
	@:overload @:synchronized override public function toString() : String;
	
	@:overload @:synchronized override public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:synchronized override public function reset() : Void;
	
	@:overload @:synchronized public function getAverage() : haxe.Int64;
	
	@:overload @:synchronized public function getCurrent() : haxe.Int64;
	
	@:overload @:synchronized public function setCurrent(curVal : haxe.Int64) : Void;
	
	@:overload @:synchronized public function getHighWaterMark() : haxe.Int64;
	
	@:overload @:synchronized public function getLowWaterMark() : haxe.Int64;
	
	@:overload public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
