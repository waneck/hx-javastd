package sun.misc;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class GC
{
	/**
	* Returns the maximum <em>object-inspection age</em>, which is the number
	* of real-time milliseconds that have elapsed since the
	* least-recently-inspected heap object was last inspected by the garbage
	* collector.
	*
	* <p> For simple stop-the-world collectors this value is just the time
	* since the most recent collection.  For generational collectors it is the
	* time since the oldest generation was most recently collected.  Other
	* collectors are free to return a pessimistic estimate of the elapsed
	* time, or simply the time since the last full collection was performed.
	*
	* <p> Note that in the presence of reference objects, a given object that
	* is no longer strongly reachable may have to be inspected multiple times
	* before it can be reclaimed.
	*/
	@:overload @:native public static function maxObjectInspectionAge() : haxe.Int64;
	
	/**
	* Makes a new request for a garbage-collection latency of the given
	* number of real-time milliseconds.  A low-priority daemon thread makes a
	* best effort to ensure that the maximum object-inspection age never
	* exceeds the smallest of the currently active requests.
	*
	* @param   latency
	*          The requested latency
	*
	* @throws  IllegalArgumentException
	*          If the given <code>latency</code> is non-positive
	*/
	@:overload public static function requestLatency(latency : haxe.Int64) : GC_LatencyRequest;
	
	/**
	* Returns the current smallest garbage-collection latency request, or zero
	* if there are no active requests.
	*/
	@:overload public static function currentLatencyTarget() : haxe.Int64;
	
	
}
/* The lock object for the latencyTarget and daemon fields.  The daemon
* thread, if it exists, waits on this lock for notification that the
* latency target has changed.
*/
@:native('sun$misc$GC$LatencyLock') @:internal extern class GC_LatencyLock extends Dynamic
{
	
}
@:native('sun$misc$GC$Daemon') @:internal extern class GC_Daemon extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	/* Create a new daemon thread in the root thread group */
	@:overload public static function create() : Void;
	
	
}
/**
* Represents an active garbage-collection latency request.  Instances of
* this class are created by the <code>{@link #requestLatency}</code>
* method.  Given a request, the only interesting operation is that of
* cancellation.
*/
@:native('sun$misc$GC$LatencyRequest') extern class GC_LatencyRequest implements java.lang.Comparable<GC_LatencyRequest>
{
	/**
	* Cancels this latency request.
	*
	* @throws  IllegalStateException
	*          If this request has already been cancelled
	*/
	@:overload public function cancel() : Void;
	
	@:overload public function compareTo(r : GC_LatencyRequest) : Int;
	
	@:overload public function toString() : String;
	
	
}
