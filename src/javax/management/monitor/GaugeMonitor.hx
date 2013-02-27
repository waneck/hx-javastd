package javax.management.monitor;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Defines a monitor MBean designed to observe the values of a gauge attribute.
*
* <P> A gauge monitor observes an attribute that is continuously
* variable with time. A gauge monitor sends notifications as
* follows:
*
* <UL>
*
* <LI> if the attribute value is increasing and becomes equal to or
* greater than the high threshold value, a {@link
* MonitorNotification#THRESHOLD_HIGH_VALUE_EXCEEDED threshold high
* notification} is sent. The notify high flag must be set to
* <CODE>true</CODE>.
*
* <BR>Subsequent crossings of the high threshold value do not cause
* further notifications unless the attribute value becomes equal to
* or less than the low threshold value.</LI>
*
* <LI> if the attribute value is decreasing and becomes equal to or
* less than the low threshold value, a {@link
* MonitorNotification#THRESHOLD_LOW_VALUE_EXCEEDED threshold low
* notification} is sent. The notify low flag must be set to
* <CODE>true</CODE>.
*
* <BR>Subsequent crossings of the low threshold value do not cause
* further notifications unless the attribute value becomes equal to
* or greater than the high threshold value.</LI>
*
* </UL>
*
* This provides a hysteresis mechanism to avoid repeated triggering
* of notifications when the attribute value makes small oscillations
* around the high or low threshold value.
*
* <P> If the gauge difference mode is used, the value of the derived
* gauge is calculated as the difference between the observed gauge
* values for two successive observations.
*
* <BR>The derived gauge value (V[t]) is calculated using the following method:
* <UL>
* <LI>V[t] = gauge[t] - gauge[t-GP]</LI>
* </UL>
*
* This implementation of the gauge monitor requires the observed
* attribute to be of the type integer or floating-point
* (<CODE>Byte</CODE>, <CODE>Integer</CODE>, <CODE>Short</CODE>,
* <CODE>Long</CODE>, <CODE>Float</CODE>, <CODE>Double</CODE>).
*
*
* @since 1.5
*/
@:require(java5) extern class GaugeMonitor extends javax.management.monitor.Monitor implements javax.management.monitor.GaugeMonitorMBean
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Starts the gauge monitor.
	*/
	@:overload @:synchronized override public function start() : Void;
	
	/**
	* Stops the gauge monitor.
	*/
	@:overload @:synchronized override public function stop() : Void;
	
	/**
	* Gets the derived gauge of the specified object, if this object is
	* contained in the set of observed MBeans, or <code>null</code> otherwise.
	*
	* @param object the name of the MBean.
	*
	* @return The derived gauge of the specified object.
	*
	*/
	@:overload @:synchronized override public function getDerivedGauge(object : javax.management.ObjectName) : java.lang.Number;
	
	/**
	* Gets the derived gauge timestamp of the specified object, if
	* this object is contained in the set of observed MBeans, or
	* <code>0</code> otherwise.
	*
	* @param object the name of the object whose derived gauge
	* timestamp is to be returned.
	*
	* @return The derived gauge timestamp of the specified object.
	*
	*/
	@:overload @:synchronized override public function getDerivedGaugeTimeStamp(object : javax.management.ObjectName) : haxe.Int64;
	
	/**
	* Returns the derived gauge of the first object in the set of
	* observed MBeans.
	*
	* @return The derived gauge.
	*
	* @deprecated As of JMX 1.2, replaced by
	* {@link #getDerivedGauge(ObjectName)}
	*/
	@:overload @:synchronized public function getDerivedGauge() : java.lang.Number;
	
	/**
	* Gets the derived gauge timestamp of the first object in the set
	* of observed MBeans.
	*
	* @return The derived gauge timestamp.
	*
	* @deprecated As of JMX 1.2, replaced by
	* {@link #getDerivedGaugeTimeStamp(ObjectName)}
	*/
	@:overload @:synchronized public function getDerivedGaugeTimeStamp() : haxe.Int64;
	
	/**
	* Gets the high threshold value common to all observed MBeans.
	*
	* @return The high threshold value.
	*
	* @see #setThresholds
	*/
	@:overload @:synchronized public function getHighThreshold() : java.lang.Number;
	
	/**
	* Gets the low threshold value common to all observed MBeans.
	*
	* @return The low threshold value.
	*
	* @see #setThresholds
	*/
	@:overload @:synchronized public function getLowThreshold() : java.lang.Number;
	
	/**
	* Sets the high and the low threshold values common to all
	* observed MBeans.
	*
	* @param highValue The high threshold value.
	* @param lowValue The low threshold value.
	*
	* @exception IllegalArgumentException The specified high/low
	* threshold is null or the low threshold is greater than the high
	* threshold or the high threshold and the low threshold are not
	* of the same type.
	*
	* @see #getHighThreshold
	* @see #getLowThreshold
	*/
	@:overload @:synchronized public function setThresholds(highValue : java.lang.Number, lowValue : java.lang.Number) : Void;
	
	/**
	* Gets the high notification's on/off switch value common to all
	* observed MBeans.
	*
	* @return <CODE>true</CODE> if the gauge monitor notifies when
	* exceeding the high threshold, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyHigh
	*/
	@:overload @:synchronized public function getNotifyHigh() : Bool;
	
	/**
	* Sets the high notification's on/off switch value common to all
	* observed MBeans.
	*
	* @param value The high notification's on/off switch value.
	*
	* @see #getNotifyHigh
	*/
	@:overload @:synchronized public function setNotifyHigh(value : Bool) : Void;
	
	/**
	* Gets the low notification's on/off switch value common to all
	* observed MBeans.
	*
	* @return <CODE>true</CODE> if the gauge monitor notifies when
	* exceeding the low threshold, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyLow
	*/
	@:overload @:synchronized public function getNotifyLow() : Bool;
	
	/**
	* Sets the low notification's on/off switch value common to all
	* observed MBeans.
	*
	* @param value The low notification's on/off switch value.
	*
	* @see #getNotifyLow
	*/
	@:overload @:synchronized public function setNotifyLow(value : Bool) : Void;
	
	/**
	* Gets the difference mode flag value common to all observed MBeans.
	*
	* @return <CODE>true</CODE> if the difference mode is used,
	* <CODE>false</CODE> otherwise.
	*
	* @see #setDifferenceMode
	*/
	@:overload @:synchronized public function getDifferenceMode() : Bool;
	
	/**
	* Sets the difference mode flag value common to all observed MBeans.
	*
	* @param value The difference mode flag value.
	*
	* @see #getDifferenceMode
	*/
	@:overload @:synchronized public function setDifferenceMode(value : Bool) : Void;
	
	/**
	* Returns a <CODE>NotificationInfo</CODE> object containing the
	* name of the Java class of the notification and the notification
	* types sent by the gauge monitor.
	*/
	@:overload override public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}
/*
* ------------------------------------------
*  PACKAGE CLASSES
* ------------------------------------------
*/
@:native('javax$management$monitor$GaugeMonitor$GaugeMonitorObservedObject') @:internal extern class GaugeMonitor_GaugeMonitorObservedObject extends ObservedObject
{
	@:overload public function new(observedObject : javax.management.ObjectName) : Void;
	
	@:overload @:final @:synchronized public function getDerivedGaugeValid() : Bool;
	
	@:overload @:final @:synchronized public function setDerivedGaugeValid(derivedGaugeValid : Bool) : Void;
	
	@:overload @:final @:synchronized public function getType() : NumericalType;
	
	@:overload @:final @:synchronized public function setType(type : NumericalType) : Void;
	
	@:overload @:final @:synchronized public function getPreviousScanGauge() : java.lang.Number;
	
	@:overload @:final @:synchronized public function setPreviousScanGauge(previousScanGauge : java.lang.Number) : Void;
	
	@:overload @:final @:synchronized public function getStatus() : Int;
	
	@:overload @:final @:synchronized public function setStatus(status : Int) : Void;
	
	
}
