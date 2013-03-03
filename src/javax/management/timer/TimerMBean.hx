package javax.management.timer;
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
//// java imports
////
extern interface TimerMBean
{
	/**
	* Starts the timer.
	* <P>
	* If there is one or more timer notifications before the time in the list of notifications, the notification
	* is sent according to the <CODE>sendPastNotifications</CODE> flag and then, updated
	* according to its period and remaining number of occurrences.
	* If the timer notification date remains earlier than the current date, this notification is just removed
	* from the list of notifications.
	*/
	@:overload @:public public function start() : Void;
	
	/**
	* Stops the timer.
	*/
	@:overload @:public public function stop() : Void;
	
	/**
	* Creates a new timer notification with the specified <CODE>type</CODE>, <CODE>message</CODE>
	* and <CODE>userData</CODE> and inserts it into the list of notifications with a given date,
	* period and number of occurrences.
	* <P>
	* If the timer notification to be inserted has a date that is before the current date,
	* the method behaves as if the specified date were the current date. <BR>
	* For once-off notifications, the notification is delivered immediately. <BR>
	* For periodic notifications, the first notification is delivered immediately and the
	* subsequent ones are spaced as specified by the period parameter.
	* <P>
	* Note that once the timer notification has been added into the list of notifications,
	* its associated date, period and number of occurrences cannot be updated.
	* <P>
	* In the case of a periodic notification, the value of parameter <i>fixedRate</i> is used to
	* specify the execution scheme, as specified in {@link java.util.Timer}.
	*
	* @param type The timer notification type.
	* @param message The timer notification detailed message.
	* @param userData The timer notification user data object.
	* @param date The date when the notification occurs.
	* @param period The period of the timer notification (in milliseconds).
	* @param nbOccurences The total number the timer notification will be emitted.
	* @param fixedRate If <code>true</code> and if the notification is periodic, the notification
	*                  is scheduled with a <i>fixed-rate</i> execution scheme. If
	*                  <code>false</code> and if the notification is periodic, the notification
	*                  is scheduled with a <i>fixed-delay</i> execution scheme. Ignored if the
	*                  notification is not periodic.
	*
	* @return The identifier of the new created timer notification.
	*
	* @exception java.lang.IllegalArgumentException The date is {@code null} or
	* the period or the number of occurrences is negative.
	*
	* @see #addNotification(String, String, Object, Date, long, long)
	*/
	@:overload @:public public function addNotification(type : String, message : String, userData : Dynamic, date : java.util.Date, period : haxe.Int64, nbOccurences : haxe.Int64, fixedRate : Bool) : Null<Int>;
	
	/**
	* Creates a new timer notification with the specified <CODE>type</CODE>, <CODE>message</CODE>
	* and <CODE>userData</CODE> and inserts it into the list of notifications with a given date,
	* period and number of occurrences.
	* <P>
	* If the timer notification to be inserted has a date that is before the current date,
	* the method behaves as if the specified date were the current date. <BR>
	* For once-off notifications, the notification is delivered immediately. <BR>
	* For periodic notifications, the first notification is delivered immediately and the
	* subsequent ones are spaced as specified by the period parameter.
	* <P>
	* Note that once the timer notification has been added into the list of notifications,
	* its associated date, period and number of occurrences cannot be updated.
	* <P>
	* In the case of a periodic notification, uses a <i>fixed-delay</i> execution scheme, as specified in
	* {@link java.util.Timer}. In order to use a <i>fixed-rate</i> execution scheme, use
	* {@link #addNotification(String, String, Object, Date, long, long, boolean)} instead.
	*
	* @param type The timer notification type.
	* @param message The timer notification detailed message.
	* @param userData The timer notification user data object.
	* @param date The date when the notification occurs.
	* @param period The period of the timer notification (in milliseconds).
	* @param nbOccurences The total number the timer notification will be emitted.
	*
	* @return The identifier of the new created timer notification.
	*
	* @exception java.lang.IllegalArgumentException The date is {@code null} or
	* the period or the number of occurrences is negative.
	*
	* @see #addNotification(String, String, Object, Date, long, long, boolean)
	*/
	@:overload @:public public function addNotification(type : String, message : String, userData : Dynamic, date : java.util.Date, period : haxe.Int64, nbOccurences : haxe.Int64) : Null<Int>;
	
	/**
	* Creates a new timer notification with the specified <CODE>type</CODE>, <CODE>message</CODE>
	* and <CODE>userData</CODE> and inserts it into the list of notifications with a given date
	* and period and a null number of occurrences.
	* <P>
	* The timer notification will repeat continuously using the timer period using a <i>fixed-delay</i>
	* execution scheme, as specified in {@link java.util.Timer}. In order to use a <i>fixed-rate</i>
	* execution scheme, use {@link #addNotification(String, String, Object, Date, long, long,
	* boolean)} instead.
	* <P>
	* If the timer notification to be inserted has a date that is before the current date,
	* the method behaves as if the specified date were the current date. The
	* first notification is delivered immediately and the subsequent ones are
	* spaced as specified by the period parameter.
	*
	* @param type The timer notification type.
	* @param message The timer notification detailed message.
	* @param userData The timer notification user data object.
	* @param date The date when the notification occurs.
	* @param period The period of the timer notification (in milliseconds).
	*
	* @return The identifier of the new created timer notification.
	*
	* @exception java.lang.IllegalArgumentException The date is {@code null} or
	* the period is negative.
	*/
	@:overload @:public public function addNotification(type : String, message : String, userData : Dynamic, date : java.util.Date, period : haxe.Int64) : Null<Int>;
	
	/**
	* Creates a new timer notification with the specified <CODE>type</CODE>, <CODE>message</CODE>
	* and <CODE>userData</CODE> and inserts it into the list of notifications with a given date
	* and a null period and number of occurrences.
	* <P>
	* The timer notification will be handled once at the specified date.
	* <P>
	* If the timer notification to be inserted has a date that is before the current date,
	* the method behaves as if the specified date were the current date and the
	* notification is delivered immediately.
	*
	* @param type The timer notification type.
	* @param message The timer notification detailed message.
	* @param userData The timer notification user data object.
	* @param date The date when the notification occurs.
	*
	* @return The identifier of the new created timer notification.
	*
	* @exception java.lang.IllegalArgumentException The date is {@code null}.
	*/
	@:overload @:public public function addNotification(type : String, message : String, userData : Dynamic, date : java.util.Date) : Null<Int>;
	
	/**
	* Removes the timer notification corresponding to the specified identifier from the list of notifications.
	*
	* @param id The timer notification identifier.
	*
	* @exception InstanceNotFoundException The specified identifier does not correspond to any timer notification
	* in the list of notifications of this timer MBean.
	*/
	@:overload @:public public function removeNotification(id : Null<Int>) : Void;
	
	/**
	* Removes all the timer notifications corresponding to the specified type from the list of notifications.
	*
	* @param type The timer notification type.
	*
	* @exception InstanceNotFoundException The specified type does not correspond to any timer notification
	* in the list of notifications of this timer MBean.
	*/
	@:overload @:public public function removeNotifications(type : String) : Void;
	
	/**
	* Removes all the timer notifications from the list of notifications
	* and resets the counter used to update the timer notification identifiers.
	*/
	@:overload @:public public function removeAllNotifications() : Void;
	
	/**
	* Gets the number of timer notifications registered into the list of notifications.
	*
	* @return The number of timer notifications.
	*/
	@:overload @:public public function getNbNotifications() : Int;
	
	/**
	* Gets all timer notification identifiers registered into the list of notifications.
	*
	* @return A vector of <CODE>Integer</CODE> objects containing all the timer notification identifiers.
	* <BR>The vector is empty if there is no timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getAllNotificationIDs() : java.util.Vector<Null<Int>>;
	
	/**
	* Gets all the identifiers of timer notifications corresponding to the specified type.
	*
	* @param type The timer notification type.
	*
	* @return A vector of <CODE>Integer</CODE> objects containing all the identifiers of
	* timer notifications with the specified <CODE>type</CODE>.
	* <BR>The vector is empty if there is no timer notifications registered for this timer MBean
	* with the specified <CODE>type</CODE>.
	*/
	@:overload @:public public function getNotificationIDs(type : String) : java.util.Vector<Null<Int>>;
	
	/**
	* Gets the timer notification type corresponding to the specified identifier.
	*
	* @param id The timer notification identifier.
	*
	* @return The timer notification type or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getNotificationType(id : Null<Int>) : String;
	
	/**
	* Gets the timer notification detailed message corresponding to the specified identifier.
	*
	* @param id The timer notification identifier.
	*
	* @return The timer notification detailed message or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getNotificationMessage(id : Null<Int>) : String;
	
	/**
	* Gets the timer notification user data object corresponding to the specified identifier.
	*
	* @param id The timer notification identifier.
	*
	* @return The timer notification user data object or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getNotificationUserData(id : Null<Int>) : Dynamic;
	
	/**
	* Gets a copy of the date associated to a timer notification.
	*
	* @param id The timer notification identifier.
	*
	* @return A copy of the date or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getDate(id : Null<Int>) : java.util.Date;
	
	/**
	* Gets a copy of the period (in milliseconds) associated to a timer notification.
	*
	* @param id The timer notification identifier.
	*
	* @return A copy of the period or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getPeriod(id : Null<Int>) : Null<haxe.Int64>;
	
	/**
	* Gets a copy of the remaining number of occurrences associated to a timer notification.
	*
	* @param id The timer notification identifier.
	*
	* @return A copy of the remaining number of occurrences or null if the identifier is not mapped to any
	* timer notification registered for this timer MBean.
	*/
	@:overload @:public public function getNbOccurences(id : Null<Int>) : Null<haxe.Int64>;
	
	/**
	* Gets a copy of the flag indicating whether a periodic notification is
	* executed at <i>fixed-delay</i> or at <i>fixed-rate</i>.
	*
	* @param id The timer notification identifier.
	*
	* @return A copy of the flag indicating whether a periodic notification is
	*         executed at <i>fixed-delay</i> or at <i>fixed-rate</i>.
	*/
	@:overload @:public public function getFixedRate(id : Null<Int>) : Null<Bool>;
	
	/**
	* Gets the flag indicating whether or not the timer sends past notifications.
	*
	* @return The past notifications sending on/off flag value.
	*
	* @see #setSendPastNotifications
	*/
	@:overload @:public public function getSendPastNotifications() : Bool;
	
	/**
	* Sets the flag indicating whether the timer sends past notifications or not.
	*
	* @param value The past notifications sending on/off flag value.
	*
	* @see #getSendPastNotifications
	*/
	@:overload @:public public function setSendPastNotifications(value : Bool) : Void;
	
	/**
	* Tests whether the timer MBean is active.
	* A timer MBean is marked active when the {@link #start start} method is called.
	* It becomes inactive when the {@link #stop stop} method is called.
	*
	* @return <CODE>true</CODE> if the timer MBean is active, <CODE>false</CODE> otherwise.
	*/
	@:overload @:public public function isActive() : Bool;
	
	/**
	* Tests whether the list of timer notifications is empty.
	*
	* @return <CODE>true</CODE> if the list of timer notifications is empty, <CODE>false</CODE> otherwise.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	
}
