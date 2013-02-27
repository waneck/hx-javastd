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
extern class MonitorNotification extends javax.management.Notification
{
	/**
	* Notification type denoting that the observed object is not registered in the MBean server.
	* This notification is fired by all kinds of monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.error.mbean</CODE>.
	*/
	public static var OBSERVED_OBJECT_ERROR(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute is not contained in the observed object.
	* This notification is fired by all kinds of monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.error.attribute</CODE>.
	*/
	public static var OBSERVED_ATTRIBUTE_ERROR(default, null) : String;
	
	/**
	* Notification type denoting that the type of the observed attribute is not correct.
	* This notification is fired by all kinds of monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.error.type</CODE>.
	*/
	public static var OBSERVED_ATTRIBUTE_TYPE_ERROR(default, null) : String;
	
	/**
	* Notification type denoting that the type of the thresholds, offset or modulus is not correct.
	* This notification is fired by counter and gauge monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.error.threshold</CODE>.
	*/
	public static var THRESHOLD_ERROR(default, null) : String;
	
	/**
	* Notification type denoting that a non-predefined error type has occurred when trying to get the value of the observed attribute.
	* This notification is fired by all kinds of monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.error.runtime</CODE>.
	*/
	public static var RUNTIME_ERROR(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute has reached the threshold value.
	* This notification is only fired by counter monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.counter.threshold</CODE>.
	*/
	public static var THRESHOLD_VALUE_EXCEEDED(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute has exceeded the threshold high value.
	* This notification is only fired by gauge monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.gauge.high</CODE>.
	*/
	public static var THRESHOLD_HIGH_VALUE_EXCEEDED(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute has exceeded the threshold low value.
	* This notification is only fired by gauge monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.gauge.low</CODE>.
	*/
	public static var THRESHOLD_LOW_VALUE_EXCEEDED(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute has matched the "string to compare" value.
	* This notification is only fired by string monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.string.matches</CODE>.
	*/
	public static var STRING_TO_COMPARE_VALUE_MATCHED(default, null) : String;
	
	/**
	* Notification type denoting that the observed attribute has differed from the "string to compare" value.
	* This notification is only fired by string monitors.
	* <BR>The value of this notification type is <CODE>jmx.monitor.string.differs</CODE>.
	*/
	public static var STRING_TO_COMPARE_VALUE_DIFFERED(default, null) : String;
	
	/**
	* Gets the observed object of this monitor notification.
	*
	* @return The observed object.
	*/
	@:overload public function getObservedObject() : javax.management.ObjectName;
	
	/**
	* Gets the observed attribute of this monitor notification.
	*
	* @return The observed attribute.
	*/
	@:overload public function getObservedAttribute() : String;
	
	/**
	* Gets the derived gauge of this monitor notification.
	*
	* @return The derived gauge.
	*/
	@:overload public function getDerivedGauge() : Dynamic;
	
	/**
	* Gets the threshold/string (depending on the monitor type) that triggered off this monitor notification.
	*
	* @return The trigger.
	*/
	@:overload public function getTrigger() : Dynamic;
	
	
}
