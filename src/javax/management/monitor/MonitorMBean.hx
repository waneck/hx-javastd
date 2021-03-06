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
extern interface MonitorMBean
{
	/**
	* Starts the monitor.
	*/
	@:overload @:public public function start() : Void;
	
	/**
	* Stops the monitor.
	*/
	@:overload @:public public function stop() : Void;
	
	/**
	* Adds the specified object in the set of observed MBeans.
	*
	* @param object The object to observe.
	* @exception java.lang.IllegalArgumentException the specified object is null.
	*
	*/
	@:overload @:public public function addObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Removes the specified object from the set of observed MBeans.
	*
	* @param object The object to remove.
	*
	*/
	@:overload @:public public function removeObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Tests whether the specified object is in the set of observed MBeans.
	*
	* @param object The object to check.
	* @return <CODE>true</CODE> if the specified object is in the set, <CODE>false</CODE> otherwise.
	*
	*/
	@:overload @:public public function containsObservedObject(object : javax.management.ObjectName) : Bool;
	
	/**
	* Returns an array containing the objects being observed.
	*
	* @return The objects being observed.
	*
	*/
	@:overload @:public public function getObservedObjects() : java.NativeArray<javax.management.ObjectName>;
	
	/**
	* Gets the object name of the object being observed.
	*
	* @return The object being observed.
	*
	* @see #setObservedObject
	*
	* @deprecated As of JMX 1.2, replaced by {@link #getObservedObjects}
	*/
	@:overload @:public public function getObservedObject() : javax.management.ObjectName;
	
	/**
	* Sets the object to observe identified by its object name.
	*
	* @param object The object to observe.
	*
	* @see #getObservedObject
	*
	* @deprecated As of JMX 1.2, replaced by {@link #addObservedObject}
	*/
	@:overload @:public public function setObservedObject(object : javax.management.ObjectName) : Void;
	
	/**
	* Gets the attribute being observed.
	*
	* @return The attribute being observed.
	*
	* @see #setObservedAttribute
	*/
	@:overload @:public public function getObservedAttribute() : String;
	
	/**
	* Sets the attribute to observe.
	*
	* @param attribute The attribute to observe.
	*
	* @see #getObservedAttribute
	*/
	@:overload @:public public function setObservedAttribute(attribute : String) : Void;
	
	/**
	* Gets the granularity period (in milliseconds).
	*
	* @return The granularity period.
	*
	* @see #setGranularityPeriod
	*/
	@:overload @:public public function getGranularityPeriod() : haxe.Int64;
	
	/**
	* Sets the granularity period (in milliseconds).
	*
	* @param period The granularity period.
	* @exception java.lang.IllegalArgumentException The granularity
	* period is less than or equal to zero.
	*
	* @see #getGranularityPeriod
	*/
	@:overload @:public public function setGranularityPeriod(period : haxe.Int64) : Void;
	
	/**
	* Tests if the monitor MBean is active.
	* A monitor MBean is marked active when the {@link #start start} method is called.
	* It becomes inactive when the {@link #stop stop} method is called.
	*
	* @return <CODE>true</CODE> if the monitor MBean is active, <CODE>false</CODE> otherwise.
	*/
	@:overload @:public public function isActive() : Bool;
	
	
}
