package com.sun.org.glassfish.external.statistics;
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
* The Statistic model and its sub-models specify the data models which are requried to be used to provide the performance data described by the specific attributes in the Stats models.
*/
extern interface Statistic
{
	/**
	* The name of this Statistic.
	*/
	@:overload public function getName() : String;
	
	/**
	* The unit of measurement for this Statistic.
	* Valid values for TimeStatistic measurements are "HOUR", "MINUTE", "SECOND", "MILLISECOND", "MICROSECOND" and "NANOSECOND".
	*/
	@:overload public function getUnit() : String;
	
	/**
	* A human-readable description of the Statistic.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* The time of the first measurement represented as a long, whose value is the number of milliseconds since January 1, 1970, 00:00:00.
	*/
	@:overload public function getStartTime() : haxe.Int64;
	
	/**
	* The time of the last measurement represented as a long, whose value is the number of milliseconds since January 1, 1970, 00:00:00.
	*/
	@:overload public function getLastSampleTime() : haxe.Int64;
	
	
}
