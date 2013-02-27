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
extern class NotificationFilterSupport implements javax.management.NotificationFilter
{
	/**
	* Invoked before sending the specified notification to the listener.
	* <BR>This filter compares the type of the specified notification with each enabled type.
	* If the notification type matches one of the enabled types,
	* the notification should be sent to the listener and this method returns <CODE>true</CODE>.
	*
	* @param notification The notification to be sent.
	* @return <CODE>true</CODE> if the notification should be sent to the listener, <CODE>false</CODE> otherwise.
	*/
	@:overload @:synchronized public function isNotificationEnabled(notification : javax.management.Notification) : Bool;
	
	/**
	* Enables all the notifications the type of which starts with the specified prefix
	* to be sent to the listener.
	* <BR>If the specified prefix is already in the list of enabled notification types,
	* this method has no effect.
	* <P>
	* Example:
	* <BLOCKQUOTE>
	* <PRE>
	* // Enables all notifications the type of which starts with "my_example" to be sent.
	* myFilter.enableType("my_example");
	* // Enables all notifications the type of which is "my_example.my_type" to be sent.
	* myFilter.enableType("my_example.my_type");
	* </PRE>
	* </BLOCKQUOTE>
	*
	* Note that:
	* <BLOCKQUOTE><CODE>
	* myFilter.enableType("my_example.*");
	* </CODE></BLOCKQUOTE>
	* will no match any notification type.
	*
	* @param prefix The prefix.
	* @exception java.lang.IllegalArgumentException The prefix parameter is null.
	*/
	@:overload @:synchronized public function enableType(prefix : String) : Void;
	
	/**
	* Removes the given prefix from the prefix list.
	* <BR>If the specified prefix is not in the list of enabled notification types,
	* this method has no effect.
	*
	* @param prefix The prefix.
	*/
	@:overload @:synchronized public function disableType(prefix : String) : Void;
	
	/**
	* Disables all notification types.
	*/
	@:overload @:synchronized public function disableAllTypes() : Void;
	
	/**
	* Gets all the enabled notification types for this filter.
	*
	* @return The list containing all the enabled notification types.
	*/
	@:overload @:synchronized public function getEnabledTypes() : java.util.Vector<String>;
	
	
}
