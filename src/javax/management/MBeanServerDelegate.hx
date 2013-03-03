package javax.management;
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
extern class MBeanServerDelegate implements javax.management.MBeanServerDelegateMBean implements javax.management.NotificationEmitter
{
	/**
	* Create a MBeanServerDelegate object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the MBean server agent identity.
	*
	* @return the identity.
	*/
	@:overload @:public @:synchronized public function getMBeanServerId() : String;
	
	/**
	* Returns the full name of the JMX specification implemented
	* by this product.
	*
	* @return the specification name.
	*/
	@:overload @:public public function getSpecificationName() : String;
	
	/**
	* Returns the version of the JMX specification implemented
	* by this product.
	*
	* @return the specification version.
	*/
	@:overload @:public public function getSpecificationVersion() : String;
	
	/**
	* Returns the vendor of the JMX specification implemented
	* by this product.
	*
	* @return the specification vendor.
	*/
	@:overload @:public public function getSpecificationVendor() : String;
	
	/**
	* Returns the JMX implementation name (the name of this product).
	*
	* @return the implementation name.
	*/
	@:overload @:public public function getImplementationName() : String;
	
	/**
	* Returns the JMX implementation version (the version of this product).
	*
	* @return the implementation version.
	*/
	@:overload @:public public function getImplementationVersion() : String;
	
	/**
	* Returns the JMX implementation vendor (the vendor of this product).
	*
	* @return the implementation vendor.
	*/
	@:overload @:public public function getImplementationVendor() : String;
	
	@:overload @:public public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	@:overload @:public @:synchronized public function addNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public @:synchronized public function removeNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public @:synchronized public function removeNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	/**
	* Enables the MBean server to send a notification.
	* If the passed <var>notification</var> has a sequence number lesser
	* or equal to 0, then replace it with the delegate's own sequence
	* number.
	* @param notification The notification to send.
	*
	*/
	@:overload @:public public function sendNotification(notification : javax.management.Notification) : Void;
	
	/**
	* Defines the default ObjectName of the MBeanServerDelegate.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var DELEGATE_NAME(default, null) : javax.management.ObjectName;
	
	
}
