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
* Defines the part common to all monitor MBeans.
* A monitor MBean monitors values of an attribute common to a set of observed
* MBeans. The observed attribute is monitored at intervals specified by the
* granularity period. A gauge value (derived gauge) is derived from the values
* of the observed attribute.
*
*
* @since 1.5
*/
@:require(java5) extern class Monitor extends javax.management.NotificationBroadcasterSupport implements javax.management.monitor.MonitorMBean implements javax.management.MBeanRegistration
{
	/**
	* The amount by which the capacity of the monitor arrays are
	* automatically incremented when their size becomes greater than
	* their capacity.
	*/
	@:protected @:final @:static private static var capacityIncrement(default, null) : Int;
	
	/**
	* The number of valid components in the vector of observed objects.
	*
	*/
	@:protected private var elementCount : Int;
	
	/**
	* Monitor errors that have already been notified.
	* @deprecated equivalent to {@link #alreadyNotifieds}[0].
	*/
	@:protected private var alreadyNotified : Int;
	
	/**
	* <p>Selected monitor errors that have already been notified.</p>
	*
	* <p>Each element in this array corresponds to an observed object
	* in the vector.  It contains a bit mask of the flags {@link
	* #OBSERVED_OBJECT_ERROR_NOTIFIED} etc, indicating whether the
	* corresponding notification has already been sent for the MBean
	* being monitored.</p>
	*
	*/
	@:protected private var alreadyNotifieds : java.NativeArray<Int>;
	
	/**
	* Reference to the MBean server.  This reference is null when the
	* monitor MBean is not registered in an MBean server.  This
	* reference is initialized before the monitor MBean is registered
	* in the MBean server.
	* @see #preRegister(MBeanServer server, ObjectName name)
	*/
	@:protected private var server : javax.management.MBeanServer;
	
	/**
	* This flag is used to reset the {@link #alreadyNotifieds
	* alreadyNotifieds} monitor attribute.
	*/
	@:protected @:static @:final private static var RESET_FLAGS_ALREADY_NOTIFIED(default, null) : Int;
	
	/**
	* Flag denoting that a notification has occurred after changing
	* the observed object.  This flag is used to check that the new
	* observed object is registered in the MBean server at the time
	* of the first notification.
	*/
	@:protected @:static @:final private static var OBSERVED_OBJECT_ERROR_NOTIFIED(default, null) : Int;
	
	/**
	* Flag denoting that a notification has occurred after changing
	* the observed attribute.  This flag is used to check that the
	* new observed attribute belongs to the observed object at the
	* time of the first notification.
	*/
	@:protected @:static @:final private static var OBSERVED_ATTRIBUTE_ERROR_NOTIFIED(default, null) : Int;
	
	/**
	* Flag denoting that a notification has occurred after changing
	* the observed object or the observed attribute.  This flag is
	* used to check that the observed attribute type is correct
	* (depending on the monitor in use) at the time of the first
	* notification.
	*/
	@:protected @:static @:final private static var OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED(default, null) : Int;
	
	/**
	* Flag denoting that a notification has occurred after changing
	* the observed object or the observed attribute.  This flag is
	* used to notify any exception (except the cases described above)
	* when trying to get the value of the observed attribute at the
	* time of the first notification.
	*/
	@:protected @:static @:final private static var RUNTIME_ERROR_NOTIFIED(default, null) : Int;
	
	/**
	* This field is retained for compatibility but should not be referenced.
	*
	* @deprecated No replacement.
	*/
	@:protected private var dbgTag : String;
	
	/**
	* Allows the monitor MBean to perform any operations it needs
	* before being registered in the MBean server.
	* <P>
	* Initializes the reference to the MBean server.
	*
	* @param server The MBean server in which the monitor MBean will
	* be registered.
	* @param name The object name of the monitor MBean.
	*
	* @return The name of the monitor MBean registered.
	*
	* @exception Exception
	*/
	@:overload @:public public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	/**
	* Allows the monitor MBean to perform any operations needed after
	* having been registered in the MBean server or after the
	* registration has failed.
	* <P>
	* Not used in this context.
	*/
	@:overload @:public public function postRegister(registrationDone : Null<Bool>) : Void;
	
	/**
	* Allows the monitor MBean to perform any operations it needs
	* before being unregistered by the MBean server.
	* <P>
	* Stops the monitor.
	*
	* @exception Exception
	*/
	@:overload @:public public function preDeregister() : Void;
	
	/**
	* Allows the monitor MBean to perform any operations needed after
	* having been unregistered by the MBean server.
	* <P>
	* Not used in this context.
	*/
	@:overload @:public public function postDeregister() : Void;
	
	/**
	* Starts the monitor.
	*/
	@:overload @:public @:abstract public function start() : Void;
	
	/**
	* Stops the monitor.
	*/
	@:overload @:public @:abstract public function stop() : Void;
	
	/**
	* Returns the object name of the first object in the set of observed
	* MBeans, or <code>null</code> if there is no such object.
	*
	* @return The object being observed.
	*
	* @see #setObservedObject(ObjectName)
	*
	* @deprecated As of JMX 1.2, replaced by {@link #getObservedObjects}
	*/
	@:overload @:public @:synchronized public function getObservedObject() : javax.management.ObjectName;
	
	/**
	* Removes all objects from the set of observed objects, and then adds the
	* specified object.
	*
	* @param object The object to observe.
	* @exception IllegalArgumentException The specified
	* object is null.
	*
	* @see #getObservedObject()
	*
	* @deprecated As of JMX 1.2, replaced by {@link #addObservedObject}
	*/
	@:overload @:public @:synchronized public function setObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Adds the specified object in the set of observed MBeans, if this object
	* is not already present.
	*
	* @param object The object to observe.
	* @exception IllegalArgumentException The specified object is null.
	*
	*/
	@:overload @:public @:synchronized public function addObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Removes the specified object from the set of observed MBeans.
	*
	* @param object The object to remove.
	*
	*/
	@:overload @:public @:synchronized public function removeObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Tests whether the specified object is in the set of observed MBeans.
	*
	* @param object The object to check.
	* @return <CODE>true</CODE> if the specified object is present,
	* <CODE>false</CODE> otherwise.
	*
	*/
	@:overload @:public @:synchronized public function containsObservedObject(object : javax.management.ObjectName) : Bool;
	
	/**
	* Returns an array containing the objects being observed.
	*
	* @return The objects being observed.
	*
	*/
	@:overload @:public @:synchronized public function getObservedObjects() : java.NativeArray<javax.management.ObjectName>;
	
	/**
	* Gets the attribute being observed.
	* <BR>The observed attribute is not initialized by default (set to null).
	*
	* @return The attribute being observed.
	*
	* @see #setObservedAttribute
	*/
	@:overload @:public @:synchronized public function getObservedAttribute() : String;
	
	/**
	* Sets the attribute to observe.
	* <BR>The observed attribute is not initialized by default (set to null).
	*
	* @param attribute The attribute to observe.
	* @exception IllegalArgumentException The specified
	* attribute is null.
	*
	* @see #getObservedAttribute
	*/
	@:overload @:public public function setObservedAttribute(attribute : String) : Void;
	
	/**
	* Gets the granularity period (in milliseconds).
	* <BR>The default value of the granularity period is 10 seconds.
	*
	* @return The granularity period value.
	*
	* @see #setGranularityPeriod
	*/
	@:overload @:public @:synchronized public function getGranularityPeriod() : haxe.Int64;
	
	/**
	* Sets the granularity period (in milliseconds).
	* <BR>The default value of the granularity period is 10 seconds.
	*
	* @param period The granularity period value.
	* @exception IllegalArgumentException The granularity
	* period is less than or equal to zero.
	*
	* @see #getGranularityPeriod
	*/
	@:overload @:public @:synchronized public function setGranularityPeriod(period : haxe.Int64) : Void;
	
	/* This method must be synchronized so that the monitoring thread will
	correctly see modifications to the isActive variable. See the MonitorTask
	action executed by the Scheduled Executor Service. */
	@:overload @:public @:synchronized public function isActive() : Bool;
	
	
}
/*
* ------------------------------------------
*  PACKAGE CLASSES
* ------------------------------------------
*/
@:native('javax$management$monitor$Monitor$ObservedObject') @:internal extern class Monitor_ObservedObject
{
	@:overload @:public public function new(observedObject : javax.management.ObjectName) : Void;
	
	@:overload @:public @:final public function getObservedObject() : javax.management.ObjectName;
	
	@:overload @:public @:final @:synchronized public function getAlreadyNotified() : Int;
	
	@:overload @:public @:final @:synchronized public function setAlreadyNotified(alreadyNotified : Int) : Void;
	
	@:overload @:public @:final @:synchronized public function getDerivedGauge() : Dynamic;
	
	@:overload @:public @:final @:synchronized public function setDerivedGauge(derivedGauge : Dynamic) : Void;
	
	@:overload @:public @:final @:synchronized public function getDerivedGaugeTimeStamp() : haxe.Int64;
	
	@:overload @:public @:final @:synchronized public function setDerivedGaugeTimeStamp(derivedGaugeTimeStamp : haxe.Int64) : Void;
	
	
}
/**
* Enumeration used to keep trace of the derived gauge type
* in counter and gauge monitors.
*/
@:native('javax$management$monitor$Monitor$NumericalType') extern enum Monitor_NumericalType
{
	BYTE;
	SHORT;
	INTEGER;
	LONG;
	FLOAT;
	DOUBLE;
	
}

/**
* SchedulerTask nested class: This class implements the Runnable interface.
*
* The SchedulerTask is executed periodically with a given fixed delay by
* the Scheduled Executor Service.
*/
@:native('javax$management$monitor$Monitor$SchedulerTask') @:internal extern class Monitor_SchedulerTask implements java.lang.Runnable
{
	/*
	* ------------------------------------------
	*  CONSTRUCTORS
	* ------------------------------------------
	*/
	@:overload @:public public function new() : Void;
	
	/*
	* ------------------------------------------
	*  GETTERS/SETTERS
	* ------------------------------------------
	*/
	@:overload @:public public function setMonitorTask(task : javax.management.monitor.Monitor.Monitor_MonitorTask) : Void;
	
	/*
	* ------------------------------------------
	*  PUBLIC METHODS
	* ------------------------------------------
	*/
	@:overload @:public public function run() : Void;
	
	
}
/**
* MonitorTask nested class: This class implements the Runnable interface.
*
* The MonitorTask is executed periodically with a given fixed delay by the
* Scheduled Executor Service.
*/
@:native('javax$management$monitor$Monitor$MonitorTask') @:internal extern class Monitor_MonitorTask implements java.lang.Runnable
{
	/*
	* ------------------------------------------
	*  CONSTRUCTORS
	* ------------------------------------------
	*/
	@:overload @:public public function new() : Void;
	
	/*
	* ------------------------------------------
	*  PUBLIC METHODS
	* ------------------------------------------
	*/
	@:overload @:public public function submit() : java.util.concurrent.Future<Dynamic>;
	
	@:overload @:public public function run() : Void;
	
	
}
/**
* Daemon thread factory used by the monitor executors.
* <P>
* This factory creates all new threads used by an Executor in
* the same ThreadGroup. If there is a SecurityManager, it uses
* the group of System.getSecurityManager(), else the group of
* the thread instantiating this DaemonThreadFactory. Each new
* thread is created as a daemon thread with priority
* Thread.NORM_PRIORITY. New threads have names accessible via
* Thread.getName() of "JMX Monitor <pool-name> Pool [Thread-M]",
* where M is the sequence number of the thread created by this
* factory.
*/
@:native('javax$management$monitor$Monitor$DaemonThreadFactory') @:internal extern class Monitor_DaemonThreadFactory implements java.util.concurrent.ThreadFactory
{
	@:overload @:public public function new(poolName : String) : Void;
	
	@:overload @:public public function new(poolName : String, threadGroup : java.lang.ThreadGroup) : Void;
	
	@:overload @:public public function getThreadGroup() : java.lang.ThreadGroup;
	
	@:overload @:public public function newThread(r : java.lang.Runnable) : java.lang.Thread;
	
	
}
