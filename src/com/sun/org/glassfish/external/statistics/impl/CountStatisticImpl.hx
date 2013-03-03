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
extern class CountStatisticImpl extends com.sun.org.glassfish.external.statistics.impl.StatisticImpl implements com.sun.org.glassfish.external.statistics.CountStatistic implements java.lang.reflect.InvocationHandler
{
	@:overload @:public public function new(countVal : haxe.Int64, name : String, unit : String, desc : String, sampleTime : haxe.Int64, startTime : haxe.Int64) : Void;
	
	@:overload @:public public function new(name : String, unit : String, desc : String) : Void;
	
	@:overload @:public @:synchronized public function getStatistic() : com.sun.org.glassfish.external.statistics.CountStatistic;
	
	@:overload @:public @:synchronized override public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public @:synchronized override public function toString() : String;
	
	@:overload @:public @:synchronized public function getCount() : haxe.Int64;
	
	@:overload @:public @:synchronized public function setCount(countVal : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function increment() : Void;
	
	@:overload @:public @:synchronized public function increment(delta : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function decrement() : Void;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	@:overload @:public public function invoke(proxy : Dynamic, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
