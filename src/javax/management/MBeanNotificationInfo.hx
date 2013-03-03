package javax.management;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanNotificationInfo extends javax.management.MBeanFeatureInfo implements java.lang.Cloneable
{
	/**
	* Constructs an <CODE>MBeanNotificationInfo</CODE> object.
	*
	* @param notifTypes The array of strings (in dot notation)
	* containing the notification types that the MBean may emit.
	* This may be null with the same effect as a zero-length array.
	* @param name The fully qualified Java class name of the
	* described notifications.
	* @param description A human readable description of the data.
	*/
	@:overload @:public public function new(notifTypes : java.NativeArray<String>, name : String, description : String) : Void;
	
	/**
	* Constructs an <CODE>MBeanNotificationInfo</CODE> object.
	*
	* @param notifTypes The array of strings (in dot notation)
	* containing the notification types that the MBean may emit.
	* This may be null with the same effect as a zero-length array.
	* @param name The fully qualified Java class name of the
	* described notifications.
	* @param description A human readable description of the data.
	* @param descriptor The descriptor for the notifications.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(notifTypes : java.NativeArray<String>, name : String, description : String, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a shallow clone of this instance.
	* The clone is obtained by simply calling <tt>super.clone()</tt>,
	* thus calling the default native shallow cloning mechanism
	* implemented by <tt>Object.clone()</tt>.
	* No deeper cloning of any internal field is made.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the array of strings (in dot notation) containing the
	* notification types that the MBean may emit.
	*
	* @return the array of strings.  Changing the returned array has no
	* effect on this MBeanNotificationInfo.
	*/
	@:overload @:public public function getNotifTypes() : java.NativeArray<String>;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Compare this MBeanNotificationInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanNotificationInfo
	* such that its {@link #getName()}, {@link #getDescription()},
	* {@link #getDescriptor()},
	* and {@link #getNotifTypes()} values are equal (not necessarily
	* identical) to those of this MBeanNotificationInfo.  Two
	* notification type arrays are equal if their corresponding
	* elements are equal.  They are not equal if they have the same
	* elements but in a different order.
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
