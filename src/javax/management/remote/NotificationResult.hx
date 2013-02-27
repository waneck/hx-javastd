package javax.management.remote;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class NotificationResult implements java.io.Serializable
{
	/**
	* <p>Constructs a notification query result.</p>
	*
	* @param earliestSequenceNumber the sequence number of the
	* earliest notification still in the buffer.
	* @param nextSequenceNumber the sequence number of the next
	* notification available for querying.
	* @param targetedNotifications the notifications resulting from
	* the query, and the listeners they correspond to.  This array
	* can be empty.
	*
	* @exception IllegalArgumentException if
	* <code>targetedNotifications</code> is null or if
	* <code>earliestSequenceNumber</code> or
	* <code>nextSequenceNumber</code> is negative.
	*/
	@:overload public function new(earliestSequenceNumber : haxe.Int64, nextSequenceNumber : haxe.Int64, targetedNotifications : java.NativeArray<javax.management.remote.TargetedNotification>) : Void;
	
	/**
	* Returns the sequence number of the earliest notification still
	* in the buffer.
	*
	* @return the sequence number of the earliest notification still
	* in the buffer.
	*/
	@:overload public function getEarliestSequenceNumber() : haxe.Int64;
	
	/**
	* Returns the sequence number of the next notification available
	* for querying.
	*
	* @return the sequence number of the next notification available
	* for querying.
	*/
	@:overload public function getNextSequenceNumber() : haxe.Int64;
	
	/**
	* Returns the notifications resulting from the query, and the
	* listeners they correspond to.
	*
	* @return the notifications resulting from the query, and the
	* listeners they correspond to.  This array can be empty.
	*/
	@:overload public function getTargetedNotifications() : java.NativeArray<javax.management.remote.TargetedNotification>;
	
	/**
	* Returns a string representation of the object.  The result
	* should be a concise but informative representation that is easy
	* for a person to read.
	*
	* @return a string representation of the object.
	*/
	@:overload public function toString() : String;
	
	
}
