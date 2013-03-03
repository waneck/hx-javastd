package com.sun.corba.se.spi.monitoring;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* <p>
*
* @author Hemanth Puttaswamy
* </p>
* <p>
* StatisticsAccumulator accumulates the samples provided by the user and
* computes the value of minimum, maximum, sum and sample square sum. When
* the StatisticMonitoredAttribute calls getValue(), it will compute all
* the statistics for the collected samples (Which are Minimum, Maximum,
* Average, StandardDeviation) and provides a nice printable record as a
* String.
*
* Users can easily extend this class and provide the implementation of
* toString() method to format the stats as desired. By default all the stats
* are printed in a single line.
* </p>
*/
extern class StatisticsAccumulator
{
	@:protected private var max : Float;
	
	@:protected private var min : Float;
	
	@:protected private var unit : String;
	
	/**
	* <p>
	* User will use this method to just register a sample with the
	* StatisticsAccumulator. This is the only method that User will use to
	* expose the statistics, internally the StatisticMonitoredAttribute will
	* collect the information when requested from the ASAdmin.
	* </p>
	* <p>
	*
	* </p>
	* <p>
	*
	* @param value a double value to make it more precise
	* </p>
	*/
	@:overload @:public public function sample(value : Float) : Void;
	
	/**
	*  Computes the Standard Statistic Results based on the samples collected
	*  so far and provides the complete value as a formatted String
	*/
	@:overload @:public public function getValue() : String;
	
	/**
	*  Users can extend StatisticsAccumulator to provide the complete
	*  Stats in the format they prefer, if the default format doesn't suffice.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	*  If users choose to custom format the stats.
	*/
	@:overload @:protected private function computeAverage() : Float;
	
	/**
	* We use a derived Standard Deviation formula to compute SD. This way
	* there is no need to hold on to all the samples provided.
	*
	* The method is protected to let users extend and format the results.
	*/
	@:overload @:protected private function computeStandardDeviation() : Float;
	
	/**
	* <p>
	* Construct the Statistics Accumulator by providing the unit as a String.
	* The examples of units are &quot;Hours&quot;, &quot;Minutes&quot;,
	* &quot;Seconds&quot;, &quot;MilliSeconds&quot;, &quot;Micro Seconds&quot;
	* etc.,
	* </p>
	* <p>
	*
	* @return a StatisticsAccumulator with ...
	* </p>
	* <p>
	* @param unit a String representing the units for the samples collected
	* </p>
	*/
	@:overload @:public public function new(unit : String) : Void;
	
	/**
	*  This is an internal API to test StatisticsAccumulator...
	*/
	@:overload @:public public function unitTestValidate(expectedUnit : String, expectedMin : Float, expectedMax : Float, expectedSampleCount : haxe.Int64, expectedAverage : Float, expectedStandardDeviation : Float) : Void;
	
	
}
