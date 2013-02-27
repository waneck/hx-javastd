package javax.management.monitor;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// jmx imports
////
extern interface GaugeMonitorMBean extends javax.management.monitor.MonitorMBean
{
	/**
	* Gets the derived gauge.
	*
	* @return The derived gauge.
	* @deprecated As of JMX 1.2, replaced by {@link #getDerivedGauge(ObjectName)}
	*/
	@:overload public function getDerivedGauge() : java.lang.Number;
	
	/**
	* Gets the derived gauge timestamp.
	*
	* @return The derived gauge timestamp.
	* @deprecated As of JMX 1.2, replaced by {@link #getDerivedGaugeTimeStamp(ObjectName)}
	*/
	@:overload public function getDerivedGaugeTimeStamp() : haxe.Int64;
	
	/**
	* Gets the derived gauge for the specified MBean.
	*
	* @param object the MBean for which the derived gauge is to be returned
	* @return The derived gauge for the specified MBean if this MBean is in the
	*         set of observed MBeans, or <code>null</code> otherwise.
	*
	*/
	@:overload public function getDerivedGauge(object : javax.management.ObjectName) : java.lang.Number;
	
	/**
	* Gets the derived gauge timestamp for the specified MBean.
	*
	* @param object the MBean for which the derived gauge timestamp is to be returned
	* @return The derived gauge timestamp for the specified MBean if this MBean
	*         is in the set of observed MBeans, or <code>null</code> otherwise.
	*
	*/
	@:overload public function getDerivedGaugeTimeStamp(object : javax.management.ObjectName) : haxe.Int64;
	
	/**
	* Gets the high threshold value.
	*
	* @return The high threshold value.
	*/
	@:overload public function getHighThreshold() : java.lang.Number;
	
	/**
	* Gets the low threshold value.
	*
	* @return The low threshold value.
	*/
	@:overload public function getLowThreshold() : java.lang.Number;
	
	/**
	* Sets the high and the low threshold values.
	*
	* @param highValue The high threshold value.
	* @param lowValue The low threshold value.
	* @exception java.lang.IllegalArgumentException The specified high/low threshold is null
	* or the low threshold is greater than the high threshold
	* or the high threshold and the low threshold are not of the same type.
	*/
	@:overload public function setThresholds(highValue : java.lang.Number, lowValue : java.lang.Number) : Void;
	
	/**
	* Gets the high notification's on/off switch value.
	*
	* @return <CODE>true</CODE> if the gauge monitor notifies when
	* exceeding the high threshold, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyHigh
	*/
	@:overload public function getNotifyHigh() : Bool;
	
	/**
	* Sets the high notification's on/off switch value.
	*
	* @param value The high notification's on/off switch value.
	*
	* @see #getNotifyHigh
	*/
	@:overload public function setNotifyHigh(value : Bool) : Void;
	
	/**
	* Gets the low notification's on/off switch value.
	*
	* @return <CODE>true</CODE> if the gauge monitor notifies when
	* exceeding the low threshold, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyLow
	*/
	@:overload public function getNotifyLow() : Bool;
	
	/**
	* Sets the low notification's on/off switch value.
	*
	* @param value The low notification's on/off switch value.
	*
	* @see #getNotifyLow
	*/
	@:overload public function setNotifyLow(value : Bool) : Void;
	
	/**
	* Gets the difference mode flag value.
	*
	* @return <CODE>true</CODE> if the difference mode is used,
	* <CODE>false</CODE> otherwise.
	*
	* @see #setDifferenceMode
	*/
	@:overload public function getDifferenceMode() : Bool;
	
	/**
	* Sets the difference mode flag value.
	*
	* @param value The difference mode flag value.
	*
	* @see #getDifferenceMode
	*/
	@:overload public function setDifferenceMode(value : Bool) : Void;
	
	
}
