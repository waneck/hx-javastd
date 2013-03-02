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
* StatisticsMonitoredAttribute is provided as a convenience to collect the
* Statistics of any entity. The getValue() call will be delegated to the
* StatisticsAccumulator set by the user.
* </p>
*/
extern class StatisticMonitoredAttribute extends com.sun.corba.se.spi.monitoring.MonitoredAttributeBase
{
	/**
	* <p>
	* Constructs the StaisticMonitoredAttribute, builds the required
	* MonitoredAttributeInfo with Long as the class type and is always
	* readonly attribute.
	* </p>
	* <p>
	*
	* @param name Of this attribute
	* </p>
	* <p>
	* @return a StatisticMonitoredAttribute
	* </p>
	* <p>
	* @param desc should provide a good description on the kind of statistics
	* collected, a good example is "Connection Response Time Stats will Provide the
	* detailed stats based on the samples provided from every request completion
	* time"
	* </p>
	* <p>
	* @param s is the StatisticsAcumulator that user will use to accumulate the
	* samples and this Attribute Object will get the computed statistics values
	* from.
	* </p>
	* <p>
	* @param mutex using which clearState() and getValue() calls need to be locked.
	* </p>
	*/
	@:overload public function new(name : String, desc : String, s : com.sun.corba.se.spi.monitoring.StatisticsAccumulator, mutex : Dynamic) : Void;
	
	/**
	*  Gets the value from the StatisticsAccumulator, the value will be a formatted
	*  String with the computed statistics based on the samples accumulated in the
	*  Statistics Accumulator.
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	*  Clears the state on Statistics Accumulator, After this call all samples are
	*  treated fresh and the old sample computations are disregarded.
	*/
	@:overload public function clearState() : Void;
	
	/**
	*  Gets the statistics accumulator associated with StatisticMonitoredAttribute.
	*  Usually, the user don't need to use this method as they can keep the handle
	*  to Accumulator to collect the samples.
	*/
	@:overload public function getStatisticsAccumulator() : com.sun.corba.se.spi.monitoring.StatisticsAccumulator;
	
	
}
