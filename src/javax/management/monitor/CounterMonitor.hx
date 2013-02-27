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
* Defines a monitor MBean designed to observe the values of a counter
* attribute.
*
* <P> A counter monitor sends a {@link
* MonitorNotification#THRESHOLD_VALUE_EXCEEDED threshold
* notification} when the value of the counter reaches or exceeds a
* threshold known as the comparison level.  The notify flag must be
* set to <CODE>true</CODE>.
*
* <P> In addition, an offset mechanism enables particular counting
* intervals to be detected.  If the offset value is not zero,
* whenever the threshold is triggered by the counter value reaching a
* comparison level, that comparison level is incremented by the
* offset value.  This is regarded as taking place instantaneously,
* that is, before the count is incremented.  Thus, for each level,
* the threshold triggers an event notification every time the count
* increases by an interval equal to the offset value.
*
* <P> If the counter can wrap around its maximum value, the modulus
* needs to be specified.  The modulus is the value at which the
* counter is reset to zero.
*
* <P> If the counter difference mode is used, the value of the
* derived gauge is calculated as the difference between the observed
* counter values for two successive observations.  If this difference
* is negative, the value of the derived gauge is incremented by the
* value of the modulus.  The derived gauge value (V[t]) is calculated
* using the following method:
*
* <UL>
* <LI>if (counter[t] - counter[t-GP]) is positive then
* V[t] = counter[t] - counter[t-GP]
* <LI>if (counter[t] - counter[t-GP]) is negative then
* V[t] = counter[t] - counter[t-GP] + MODULUS
* </UL>
*
* This implementation of the counter monitor requires the observed
* attribute to be of the type integer (<CODE>Byte</CODE>,
* <CODE>Integer</CODE>, <CODE>Short</CODE>, <CODE>Long</CODE>).
*
*
* @since 1.5
*/
@:require(java5) extern class CounterMonitor extends javax.management.monitor.Monitor implements javax.management.monitor.CounterMonitorMBean
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Starts the counter monitor.
	*/
	@:overload @:synchronized override public function start() : Void;
	
	/**
	* Stops the counter monitor.
	*/
	@:overload @:synchronized override public function stop() : Void;
	
	/**
	* Gets the derived gauge of the specified object, if this object is
	* contained in the set of observed MBeans, or <code>null</code> otherwise.
	*
	* @param object the name of the object whose derived gauge is to
	* be returned.
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
	* Gets the current threshold value of the specified object, if
	* this object is contained in the set of observed MBeans, or
	* <code>null</code> otherwise.
	*
	* @param object the name of the object whose threshold is to be
	* returned.
	*
	* @return The threshold value of the specified object.
	*
	*/
	@:overload @:synchronized public function getThreshold(object : javax.management.ObjectName) : java.lang.Number;
	
	/**
	* Gets the initial threshold value common to all observed objects.
	*
	* @return The initial threshold.
	*
	* @see #setInitThreshold
	*
	*/
	@:overload @:synchronized public function getInitThreshold() : java.lang.Number;
	
	/**
	* Sets the initial threshold value common to all observed objects.
	*
	* <BR>The current threshold of every object in the set of
	* observed MBeans is updated consequently.
	*
	* @param value The initial threshold value.
	*
	* @exception IllegalArgumentException The specified
	* threshold is null or the threshold value is less than zero.
	*
	* @see #getInitThreshold
	*
	*/
	@:overload @:synchronized public function setInitThreshold(value : java.lang.Number) : Void;
	
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
	* Gets the threshold value of the first object in the set of
	* observed MBeans.
	*
	* @return The threshold value.
	*
	* @see #setThreshold
	*
	* @deprecated As of JMX 1.2, replaced by {@link #getThreshold(ObjectName)}
	*/
	@:overload @:synchronized public function getThreshold() : java.lang.Number;
	
	/**
	* Sets the initial threshold value.
	*
	* @param value The initial threshold value.
	*
	* @exception IllegalArgumentException The specified threshold is
	* null or the threshold value is less than zero.
	*
	* @see #getThreshold()
	*
	* @deprecated As of JMX 1.2, replaced by {@link #setInitThreshold}
	*/
	@:overload @:synchronized public function setThreshold(value : java.lang.Number) : Void;
	
	/**
	* Gets the offset value common to all observed MBeans.
	*
	* @return The offset value.
	*
	* @see #setOffset
	*/
	@:overload @:synchronized public function getOffset() : java.lang.Number;
	
	/**
	* Sets the offset value common to all observed MBeans.
	*
	* @param value The offset value.
	*
	* @exception IllegalArgumentException The specified
	* offset is null or the offset value is less than zero.
	*
	* @see #getOffset
	*/
	@:overload @:synchronized public function setOffset(value : java.lang.Number) : Void;
	
	/**
	* Gets the modulus value common to all observed MBeans.
	*
	* @see #setModulus
	*
	* @return The modulus value.
	*/
	@:overload @:synchronized public function getModulus() : java.lang.Number;
	
	/**
	* Sets the modulus value common to all observed MBeans.
	*
	* @param value The modulus value.
	*
	* @exception IllegalArgumentException The specified
	* modulus is null or the modulus value is less than zero.
	*
	* @see #getModulus
	*/
	@:overload @:synchronized public function setModulus(value : java.lang.Number) : Void;
	
	/**
	* Gets the notification's on/off switch value common to all
	* observed MBeans.
	*
	* @return <CODE>true</CODE> if the counter monitor notifies when
	* exceeding the threshold, <CODE>false</CODE> otherwise.
	*
	* @see #setNotify
	*/
	@:overload @:synchronized public function getNotify() : Bool;
	
	/**
	* Sets the notification's on/off switch value common to all
	* observed MBeans.
	*
	* @param value The notification's on/off switch value.
	*
	* @see #getNotify
	*/
	@:overload @:synchronized public function setNotify(value : Bool) : Void;
	
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
	* types sent by the counter monitor.
	*/
	@:overload override public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}
/*
* ------------------------------------------
*  PACKAGE CLASSES
* ------------------------------------------
*/
@:native('javax$management$monitor$CounterMonitor$CounterMonitorObservedObject') @:internal extern class CounterMonitor_CounterMonitorObservedObject extends ObservedObject
{
	@:overload public function new(observedObject : javax.management.ObjectName) : Void;
	
	@:overload @:final @:synchronized public function getThreshold() : java.lang.Number;
	
	@:overload @:final @:synchronized public function setThreshold(threshold : java.lang.Number) : Void;
	
	@:overload @:final @:synchronized public function getPreviousScanCounter() : java.lang.Number;
	
	@:overload @:final @:synchronized public function setPreviousScanCounter(previousScanCounter : java.lang.Number) : Void;
	
	@:overload @:final @:synchronized public function getModulusExceeded() : Bool;
	
	@:overload @:final @:synchronized public function setModulusExceeded(modulusExceeded : Bool) : Void;
	
	@:overload @:final @:synchronized public function getDerivedGaugeExceeded() : java.lang.Number;
	
	@:overload @:final @:synchronized public function setDerivedGaugeExceeded(derivedGaugeExceeded : java.lang.Number) : Void;
	
	@:overload @:final @:synchronized public function getDerivedGaugeValid() : Bool;
	
	@:overload @:final @:synchronized public function setDerivedGaugeValid(derivedGaugeValid : Bool) : Void;
	
	@:overload @:final @:synchronized public function getEventAlreadyNotified() : Bool;
	
	@:overload @:final @:synchronized public function setEventAlreadyNotified(eventAlreadyNotified : Bool) : Void;
	
	@:overload @:final @:synchronized public function getType() : NumericalType;
	
	@:overload @:final @:synchronized public function setType(type : NumericalType) : Void;
	
	
}