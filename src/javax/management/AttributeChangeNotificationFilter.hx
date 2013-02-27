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
extern class AttributeChangeNotificationFilter implements javax.management.NotificationFilter
{
	/**
	* Invoked before sending the specified notification to the listener.
	* <BR>This filter compares the attribute name of the specified attribute change notification
	* with each enabled attribute name.
	* If the attribute name equals one of the enabled attribute names,
	* the notification must be sent to the listener and this method returns <CODE>true</CODE>.
	*
	* @param notification The attribute change notification to be sent.
	* @return <CODE>true</CODE> if the notification has to be sent to the listener, <CODE>false</CODE> otherwise.
	*/
	@:overload @:synchronized public function isNotificationEnabled(notification : javax.management.Notification) : Bool;
	
	/**
	* Enables all the attribute change notifications the attribute name of which equals
	* the specified name to be sent to the listener.
	* <BR>If the specified name is already in the list of enabled attribute names,
	* this method has no effect.
	*
	* @param name The attribute name.
	* @exception java.lang.IllegalArgumentException The attribute name parameter is null.
	*/
	@:overload @:synchronized public function enableAttribute(name : String) : Void;
	
	/**
	* Disables all the attribute change notifications the attribute name of which equals
	* the specified attribute name to be sent to the listener.
	* <BR>If the specified name is not in the list of enabled attribute names,
	* this method has no effect.
	*
	* @param name The attribute name.
	*/
	@:overload @:synchronized public function disableAttribute(name : String) : Void;
	
	/**
	* Disables all the attribute names.
	*/
	@:overload @:synchronized public function disableAllAttributes() : Void;
	
	/**
	* Gets all the enabled attribute names for this filter.
	*
	* @return The list containing all the enabled attribute names.
	*/
	@:overload @:synchronized public function getEnabledAttributes() : java.util.Vector<String>;
	
	
}
