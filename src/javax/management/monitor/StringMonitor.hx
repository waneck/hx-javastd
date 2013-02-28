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
/**
* Defines a monitor MBean designed to observe the values of a string
* attribute.
* <P>
* A string monitor sends notifications as follows:
* <UL>
* <LI> if the attribute value matches the string to compare value,
*      a {@link MonitorNotification#STRING_TO_COMPARE_VALUE_MATCHED
*      match notification} is sent.
*      The notify match flag must be set to <CODE>true</CODE>.
*      <BR>Subsequent matchings of the string to compare values do not
*      cause further notifications unless
*      the attribute value differs from the string to compare value.
* <LI> if the attribute value differs from the string to compare value,
*      a {@link MonitorNotification#STRING_TO_COMPARE_VALUE_DIFFERED
*      differ notification} is sent.
*      The notify differ flag must be set to <CODE>true</CODE>.
*      <BR>Subsequent differences from the string to compare value do
*      not cause further notifications unless
*      the attribute value matches the string to compare value.
* </UL>
*
*
* @since 1.5
*/
@:require(java5) extern class StringMonitor extends javax.management.monitor.Monitor implements javax.management.monitor.StringMonitorMBean
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Starts the string monitor.
	*/
	@:overload @:synchronized override public function start() : Void;
	
	/**
	* Stops the string monitor.
	*/
	@:overload @:synchronized override public function stop() : Void;
	
	/**
	* Gets the derived gauge of the specified object, if this object is
	* contained in the set of observed MBeans, or <code>null</code> otherwise.
	*
	* @param object the name of the MBean whose derived gauge is required.
	*
	* @return The derived gauge of the specified object.
	*
	*/
	@:overload @:synchronized override public function getDerivedGauge(object : javax.management.ObjectName) : String;
	
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
	@:overload @:synchronized public function getDerivedGauge() : String;
	
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
	* Gets the string to compare with the observed attribute common
	* to all observed MBeans.
	*
	* @return The string value.
	*
	* @see #setStringToCompare
	*/
	@:overload @:synchronized public function getStringToCompare() : String;
	
	/**
	* Sets the string to compare with the observed attribute common
	* to all observed MBeans.
	*
	* @param value The string value.
	*
	* @exception IllegalArgumentException The specified
	* string to compare is null.
	*
	* @see #getStringToCompare
	*/
	@:overload @:synchronized public function setStringToCompare(value : String) : Void;
	
	/**
	* Gets the matching notification's on/off switch value common to
	* all observed MBeans.
	*
	* @return <CODE>true</CODE> if the string monitor notifies when
	* matching the string to compare, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyMatch
	*/
	@:overload @:synchronized public function getNotifyMatch() : Bool;
	
	/**
	* Sets the matching notification's on/off switch value common to
	* all observed MBeans.
	*
	* @param value The matching notification's on/off switch value.
	*
	* @see #getNotifyMatch
	*/
	@:overload @:synchronized public function setNotifyMatch(value : Bool) : Void;
	
	/**
	* Gets the differing notification's on/off switch value common to
	* all observed MBeans.
	*
	* @return <CODE>true</CODE> if the string monitor notifies when
	* differing from the string to compare, <CODE>false</CODE> otherwise.
	*
	* @see #setNotifyDiffer
	*/
	@:overload @:synchronized public function getNotifyDiffer() : Bool;
	
	/**
	* Sets the differing notification's on/off switch value common to
	* all observed MBeans.
	*
	* @param value The differing notification's on/off switch value.
	*
	* @see #getNotifyDiffer
	*/
	@:overload @:synchronized public function setNotifyDiffer(value : Bool) : Void;
	
	/**
	* Returns a <CODE>NotificationInfo</CODE> object containing the name of
	* the Java class of the notification and the notification types sent by
	* the string monitor.
	*/
	@:overload override public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}
/*
* ------------------------------------------
*  PACKAGE CLASSES
* ------------------------------------------
*/
@:native('javax$management$monitor$StringMonitor$StringMonitorObservedObject') @:internal extern class StringMonitor_StringMonitorObservedObject extends javax.management.monitor.Monitor.Monitor_ObservedObject
{
	@:overload public function new(observedObject : javax.management.ObjectName) : Void;
	
	@:overload @:final @:synchronized public function getStatus() : Int;
	
	@:overload @:final @:synchronized public function setStatus(status : Int) : Void;
	
	
}
