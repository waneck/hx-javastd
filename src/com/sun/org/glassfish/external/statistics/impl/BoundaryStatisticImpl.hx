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
extern class BoundaryStatisticImpl extends com.sun.org.glassfish.external.statistics.impl.StatisticImpl implements com.sun.org.glassfish.external.statistics.BoundaryStatistic implements java.lang.reflect.InvocationHandler
{
	@:overload public function new(lower : haxe.Int64, upper : haxe.Int64, name : String, unit : String, desc : String, startTime : haxe.Int64, sampleTime : haxe.Int64) : Void;
	
	@:overload @:synchronized public function getStatistic() : com.sun.org.glassfish.external.statistics.BoundaryStatistic;
	
	@:overload @:synchronized override public function getStaticAsMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:synchronized public function getLowerBound() : haxe.Int64;
	
	@:overload @:synchronized public function getUpperBound() : haxe.Int64;
	
	@:overload @:synchronized override public function reset() : Void;
	
	@:overload public function invoke(proxy : Dynamic, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
