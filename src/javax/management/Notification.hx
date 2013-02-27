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
extern class Notification extends java.util.EventObject
{
	/**
	* <p>This field hides the {@link EventObject#source} field in the
	* parent class to make it non-transient and therefore part of the
	* serialized form.</p>
	*
	* @serial The object on which the notification initially occurred.
	*/
	private var source : Dynamic;
	
	/**
	* Creates a Notification object.
	* The notification timeStamp is set to the current date.
	*
	* @param type The notification type.
	* @param source The notification source.
	* @param sequenceNumber The notification sequence number within the source object.
	*
	*/
	@:overload public function new(type : String, source : Dynamic, sequenceNumber : haxe.Int64) : Void;
	
	/**
	* Creates a Notification object.
	* The notification timeStamp is set to the current date.
	*
	* @param type The notification type.
	* @param source The notification source.
	* @param sequenceNumber The notification sequence number within the source object.
	* @param message The detailed message.
	*
	*/
	@:overload public function new(type : String, source : Dynamic, sequenceNumber : haxe.Int64, message : String) : Void;
	
	/**
	* Creates a Notification object.
	*
	* @param type The notification type.
	* @param source The notification source.
	* @param sequenceNumber The notification sequence number within the source object.
	* @param timeStamp The notification emission date.
	*
	*/
	@:overload public function new(type : String, source : Dynamic, sequenceNumber : haxe.Int64, timeStamp : haxe.Int64) : Void;
	
	/**
	* Creates a Notification object.
	*
	* @param type The notification type.
	* @param source The notification source.
	* @param sequenceNumber The notification sequence number within the source object.
	* @param timeStamp The notification emission date.
	* @param message The detailed message.
	*
	*/
	@:overload public function new(type : String, source : Dynamic, sequenceNumber : haxe.Int64, timeStamp : haxe.Int64, message : String) : Void;
	
	/**
	* Sets the source.
	*
	* @param source the new source for this object.
	*
	* @see EventObject#getSource
	*/
	@:overload public function setSource(source : Dynamic) : Void;
	
	/**
	* Get the notification sequence number.
	*
	* @return The notification sequence number within the source object. It's a serial number
	* identifying a particular instance of notification in the context of the notification source.
	* The notification model does not assume that notifications will be received in the same order
	* that they are sent. The sequence number helps listeners to sort received notifications.
	*
	* @see #setSequenceNumber
	*/
	@:overload public function getSequenceNumber() : haxe.Int64;
	
	/**
	* Set the notification sequence number.
	*
	* @param sequenceNumber The notification sequence number within the source object. It is
	* a serial number identifying a particular instance of notification in the
	* context of the notification source.
	*
	* @see #getSequenceNumber
	*/
	@:overload public function setSequenceNumber(sequenceNumber : haxe.Int64) : Void;
	
	/**
	* Get the notification type.
	*
	* @return The notification type. It's a string expressed in a dot notation
	* similar to Java properties. It is recommended that the notification type
	* should follow the reverse-domain-name convention used by Java package
	* names.  An example of a notification type is com.example.alarm.router.
	*/
	@:overload public function getType() : String;
	
	/**
	* Get the notification timestamp.
	*
	* @return The notification timestamp.
	*
	* @see #setTimeStamp
	*/
	@:overload public function getTimeStamp() : haxe.Int64;
	
	/**
	* Set the notification timestamp.
	*
	* @param timeStamp The notification timestamp. It indicates when the notification was generated.
	*
	* @see #getTimeStamp
	*/
	@:overload public function setTimeStamp(timeStamp : haxe.Int64) : Void;
	
	/**
	* Get the notification message.
	*
	* @return The message string of this notification object.
	*
	*/
	@:overload public function getMessage() : String;
	
	/**
	* Get the user data.
	*
	* @return The user data object. It is used for whatever data
	* the notification source wishes to communicate to its consumers.
	*
	* @see #setUserData
	*/
	@:overload public function getUserData() : Dynamic;
	
	/**
	* Set the user data.
	*
	* @param userData The user data object. It is used for whatever data
	* the notification source wishes to communicate to its consumers.
	*
	* @see #getUserData
	*/
	@:overload public function setUserData(userData : Dynamic) : Void;
	
	/**
	* Returns a String representation of this notification.
	*
	* @return A String representation of this notification.
	*/
	@:overload override public function toString() : String;
	
	
}
