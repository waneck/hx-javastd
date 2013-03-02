package com.sun.tools.jdi;
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
extern enum EventDestination
{
	UNKNOWN_EVENT;
	INTERNAL_EVENT;
	CLIENT_EVENT;
	
}

extern class EventSetImpl extends java.util.ArrayList<com.sun.jdi.event.Event> implements com.sun.jdi.event.EventSet
{
	@:overload public function toString() : String;
	
	@:overload public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	@:overload public function suspendPolicy() : Int;
	
	@:overload public function resume() : Void;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.jdi.event.Event>;
	
	@:overload public function eventIterator() : com.sun.jdi.event.EventIterator;
	
	/* below make this unmodifiable */
	@:overload public function add(o : com.sun.jdi.event.Event) : Bool;
	
	@:overload public function remove(o : Dynamic) : Bool;
	
	@:overload public function addAll(coll : java.util.Collection<com.sun.jdi.event.Event>) : Bool;
	
	@:overload public function removeAll(coll : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function retainAll(coll : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function clear() : Void;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$EventImpl') @:internal extern class EventSetImpl_EventImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.event.Event
{
	/**
	* Constructor for events.
	*/
	@:overload private function new(evt : com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon, requestID : Int) : Void;
	
	/*
	* Override superclass back to default equality
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	/**
	* Constructor for VM disconnected events.
	*/
	@:overload private function new(eventCmd : java.StdTypes.Int8) : Void;
	
	@:overload public function request() : com.sun.jdi.request.EventRequest;
	
	@:overload override public function toString() : String;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ThreadedEventImpl') @:internal extern class EventSetImpl_ThreadedEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_EventImpl
{
	@:overload public function thread() : com.sun.jdi.ThreadReference;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$LocatableEventImpl') @:internal extern class EventSetImpl_LocatableEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_ThreadedEventImpl implements com.sun.jdi.Locatable
{
	@:overload public function location() : com.sun.jdi.Location;
	
	/**
	* For MethodEntry and MethodExit
	*/
	@:overload public function method() : com.sun.jdi.Method;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$BreakpointEventImpl') @:internal extern class EventSetImpl_BreakpointEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.BreakpointEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$StepEventImpl') @:internal extern class EventSetImpl_StepEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.StepEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MethodEntryEventImpl') @:internal extern class EventSetImpl_MethodEntryEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MethodEntryEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MethodExitEventImpl') @:internal extern class EventSetImpl_MethodExitEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MethodExitEvent
{
	@:overload public function returnValue() : com.sun.jdi.Value;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MonitorContendedEnterEventImpl') @:internal extern class EventSetImpl_MonitorContendedEnterEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MonitorContendedEnterEvent
{
	@:overload public function monitor() : com.sun.jdi.ObjectReference;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MonitorContendedEnteredEventImpl') @:internal extern class EventSetImpl_MonitorContendedEnteredEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MonitorContendedEnteredEvent
{
	@:overload public function monitor() : com.sun.jdi.ObjectReference;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MonitorWaitEventImpl') @:internal extern class EventSetImpl_MonitorWaitEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MonitorWaitEvent
{
	@:overload public function monitor() : com.sun.jdi.ObjectReference;
	
	@:overload public function timeout() : haxe.Int64;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$MonitorWaitedEventImpl') @:internal extern class EventSetImpl_MonitorWaitedEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.MonitorWaitedEvent
{
	@:overload public function monitor() : com.sun.jdi.ObjectReference;
	
	@:overload public function timedout() : Bool;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ClassPrepareEventImpl') @:internal extern class EventSetImpl_ClassPrepareEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_ThreadedEventImpl implements com.sun.jdi.event.ClassPrepareEvent
{
	@:overload public function referenceType() : com.sun.jdi.ReferenceType;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ClassUnloadEventImpl') @:internal extern class EventSetImpl_ClassUnloadEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_EventImpl implements com.sun.jdi.event.ClassUnloadEvent
{
	@:overload public function className() : String;
	
	@:overload public function classSignature() : String;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ExceptionEventImpl') @:internal extern class EventSetImpl_ExceptionEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.ExceptionEvent
{
	@:overload public function exception() : com.sun.jdi.ObjectReference;
	
	@:overload public function catchLocation() : com.sun.jdi.Location;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ThreadDeathEventImpl') @:internal extern class EventSetImpl_ThreadDeathEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_ThreadedEventImpl implements com.sun.jdi.event.ThreadDeathEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ThreadStartEventImpl') @:internal extern class EventSetImpl_ThreadStartEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_ThreadedEventImpl implements com.sun.jdi.event.ThreadStartEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$VMStartEventImpl') @:internal extern class EventSetImpl_VMStartEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_ThreadedEventImpl implements com.sun.jdi.event.VMStartEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$VMDeathEventImpl') @:internal extern class EventSetImpl_VMDeathEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_EventImpl implements com.sun.jdi.event.VMDeathEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$VMDisconnectEventImpl') @:internal extern class EventSetImpl_VMDisconnectEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_EventImpl implements com.sun.jdi.event.VMDisconnectEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$WatchpointEventImpl') @:internal extern class EventSetImpl_WatchpointEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_LocatableEventImpl implements com.sun.jdi.event.WatchpointEvent
{
	@:overload public function field() : com.sun.jdi.Field;
	
	@:overload public function object() : com.sun.jdi.ObjectReference;
	
	@:overload public function valueCurrent() : com.sun.jdi.Value;
	
	/**
	* @return The {@link EventRequest} that requested this event.
	* Some events (eg. {@link VMDeathEvent}) may not have
	* a cooresponding request and thus will return null.
	*/
	@:overload override public function request() : com.sun.jdi.request.EventRequest;
	
	/**
	* Returns the {@link Location} of this mirror, if there
	* is executable code associated with it. Note that both
	* Java<SUP><FONT SIZE="-2">TM</FONT></SUP> programming
	* language methods and native methods have executable code.
	* Returns null for abstract methods, since abstract methods
	* have no executable code.
	*
	* @return the {@link Location} of this mirror, or null if
	* there is no executable code associated with it.
	*/
	@:overload override public function location() : com.sun.jdi.Location;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	/**
	* Returns the thread in which this event has occurred.
	*
	* @return a {@link ThreadReference} which mirrors the event's thread in
	* the target VM.
	*/
	@:overload override public function thread() : com.sun.jdi.ThreadReference;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$AccessWatchpointEventImpl') @:internal extern class EventSetImpl_AccessWatchpointEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_WatchpointEventImpl implements com.sun.jdi.event.AccessWatchpointEvent
{
	
}
@:native('com$sun$tools$jdi$EventSetImpl$ModificationWatchpointEventImpl') @:internal extern class EventSetImpl_ModificationWatchpointEventImpl extends com.sun.tools.jdi.EventDestination.EventSetImpl_WatchpointEventImpl implements com.sun.jdi.event.ModificationWatchpointEvent
{
	@:overload public function valueToBe() : com.sun.jdi.Value;
	
	
}
@:native('com$sun$tools$jdi$EventSetImpl$Itr') extern class EventSetImpl_Itr implements com.sun.jdi.event.EventIterator
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : com.sun.jdi.event.Event;
	
	@:overload public function nextEvent() : com.sun.jdi.event.Event;
	
	@:overload public function remove() : Void;
	
	
}
