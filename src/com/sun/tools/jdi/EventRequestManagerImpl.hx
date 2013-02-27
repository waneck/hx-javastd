package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* This interface is used to create and remove Breakpoints, Watchpoints,
* etc.
* It include implementations of all the request interfaces..
*/
//// Warnings from List filters and List[] requestLists is  hard to fix.
//// Remove SuppressWarning when we fix the warnings from List filters
//// and List[] requestLists. The generic array is not supported.
@:internal extern class EventRequestManagerImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.request.EventRequestManager
{
	/*
	* Override superclass back to default equality
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function createClassPrepareRequest() : com.sun.jdi.request.ClassPrepareRequest;
	
	@:overload public function createClassUnloadRequest() : com.sun.jdi.request.ClassUnloadRequest;
	
	@:overload public function createExceptionRequest(refType : com.sun.jdi.ReferenceType, notifyCaught : Bool, notifyUncaught : Bool) : com.sun.jdi.request.ExceptionRequest;
	
	@:overload public function createStepRequest(thread : com.sun.jdi.ThreadReference, size : Int, depth : Int) : com.sun.jdi.request.StepRequest;
	
	@:overload public function createThreadDeathRequest() : com.sun.jdi.request.ThreadDeathRequest;
	
	@:overload public function createThreadStartRequest() : com.sun.jdi.request.ThreadStartRequest;
	
	@:overload public function createMethodEntryRequest() : com.sun.jdi.request.MethodEntryRequest;
	
	@:overload public function createMethodExitRequest() : com.sun.jdi.request.MethodExitRequest;
	
	@:overload public function createMonitorContendedEnterRequest() : com.sun.jdi.request.MonitorContendedEnterRequest;
	
	@:overload public function createMonitorContendedEnteredRequest() : com.sun.jdi.request.MonitorContendedEnteredRequest;
	
	@:overload public function createMonitorWaitRequest() : com.sun.jdi.request.MonitorWaitRequest;
	
	@:overload public function createMonitorWaitedRequest() : com.sun.jdi.request.MonitorWaitedRequest;
	
	@:overload public function createBreakpointRequest(location : com.sun.jdi.Location) : com.sun.jdi.request.BreakpointRequest;
	
	@:overload public function createAccessWatchpointRequest(field : com.sun.jdi.Field) : com.sun.jdi.request.AccessWatchpointRequest;
	
	@:overload public function createModificationWatchpointRequest(field : com.sun.jdi.Field) : com.sun.jdi.request.ModificationWatchpointRequest;
	
	@:overload public function createVMDeathRequest() : com.sun.jdi.request.VMDeathRequest;
	
	@:overload public function deleteEventRequest(eventRequest : com.sun.jdi.request.EventRequest) : Void;
	
	@:overload public function deleteEventRequests(eventRequests : java.util.List<com.sun.jdi.request.EventRequest>) : Void;
	
	@:overload public function deleteAllBreakpoints() : Void;
	
	@:overload public function stepRequests() : java.util.List<com.sun.jdi.request.StepRequest>;
	
	@:overload public function classPrepareRequests() : java.util.List<com.sun.jdi.request.ClassPrepareRequest>;
	
	@:overload public function classUnloadRequests() : java.util.List<com.sun.jdi.request.ClassUnloadRequest>;
	
	@:overload public function threadStartRequests() : java.util.List<com.sun.jdi.request.ThreadStartRequest>;
	
	@:overload public function threadDeathRequests() : java.util.List<com.sun.jdi.request.ThreadDeathRequest>;
	
	@:overload public function exceptionRequests() : java.util.List<com.sun.jdi.request.ExceptionRequest>;
	
	@:overload public function breakpointRequests() : java.util.List<com.sun.jdi.request.BreakpointRequest>;
	
	@:overload public function accessWatchpointRequests() : java.util.List<com.sun.jdi.request.AccessWatchpointRequest>;
	
	@:overload public function modificationWatchpointRequests() : java.util.List<com.sun.jdi.request.ModificationWatchpointRequest>;
	
	@:overload public function methodEntryRequests() : java.util.List<com.sun.jdi.request.MethodEntryRequest>;
	
	@:overload public function methodExitRequests() : java.util.List<com.sun.jdi.request.MethodExitRequest>;
	
	@:overload public function monitorContendedEnterRequests() : java.util.List<com.sun.jdi.request.MonitorContendedEnterRequest>;
	
	@:overload public function monitorContendedEnteredRequests() : java.util.List<com.sun.jdi.request.MonitorContendedEnteredRequest>;
	
	@:overload public function monitorWaitRequests() : java.util.List<com.sun.jdi.request.MonitorWaitRequest>;
	
	@:overload public function monitorWaitedRequests() : java.util.List<com.sun.jdi.request.MonitorWaitedRequest>;
	
	@:overload public function vmDeathRequests() : java.util.List<com.sun.jdi.request.VMDeathRequest>;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$EventRequestImpl') @:internal extern class EventRequestManagerImpl_EventRequestImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.request.EventRequest
{
	/*
	* Override superclass back to default equality
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function isEnabled() : Bool;
	
	@:overload public function enable() : Void;
	
	@:overload public function disable() : Void;
	
	@:overload @:synchronized public function setEnabled(val : Bool) : Void;
	
	@:overload @:synchronized public function addCountFilter(count : Int) : Void;
	
	@:overload public function setSuspendPolicy(policy : Int) : Void;
	
	@:overload public function suspendPolicy() : Int;
	
	/**
	* Returns the value of the property with the specified key.  Only
	* properties added with <code>putProperty</code> will return
	* a non-null value.
	*
	* @return the value of this property or null
	* @see #putProperty
	*/
	@:overload @:final public function getProperty(key : Dynamic) : Dynamic;
	
	/**
	* Add an arbitrary key/value "property" to this component.
	*
	* @see #getProperty
	*/
	@:overload @:final public function putProperty(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public @:public @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ThreadVisibleEventRequestImpl') @:internal extern class EventRequestManagerImpl_ThreadVisibleEventRequestImpl extends EventRequestManagerImpl_EventRequestImpl
{
	@:overload @:synchronized public function addThreadFilter(thread : com.sun.jdi.ThreadReference) : Void;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ClassVisibleEventRequestImpl') @:internal extern class EventRequestManagerImpl_ClassVisibleEventRequestImpl extends EventRequestManagerImpl_ThreadVisibleEventRequestImpl
{
	@:overload @:synchronized public function addClassFilter(clazz : com.sun.jdi.ReferenceType) : Void;
	
	@:overload @:synchronized public function addClassFilter(classPattern : String) : Void;
	
	@:overload @:synchronized public function addClassExclusionFilter(classPattern : String) : Void;
	
	@:overload @:synchronized public function addInstanceFilter(instance : com.sun.jdi.ObjectReference) : Void;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$BreakpointRequestImpl') @:internal extern class EventRequestManagerImpl_BreakpointRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.BreakpointRequest
{
	@:overload public function location() : com.sun.jdi.Location;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ClassPrepareRequestImpl') @:internal extern class EventRequestManagerImpl_ClassPrepareRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.ClassPrepareRequest
{
	@:overload @:synchronized public function addSourceNameFilter(sourceNamePattern : String) : Void;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ClassUnloadRequestImpl') @:internal extern class EventRequestManagerImpl_ClassUnloadRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.ClassUnloadRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ExceptionRequestImpl') @:internal extern class EventRequestManagerImpl_ExceptionRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.ExceptionRequest
{
	@:overload public function exception() : com.sun.jdi.ReferenceType;
	
	@:overload public function notifyCaught() : Bool;
	
	@:overload public function notifyUncaught() : Bool;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MethodEntryRequestImpl') @:internal extern class EventRequestManagerImpl_MethodEntryRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MethodEntryRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MethodExitRequestImpl') @:internal extern class EventRequestManagerImpl_MethodExitRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MethodExitRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MonitorContendedEnterRequestImpl') @:internal extern class EventRequestManagerImpl_MonitorContendedEnterRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MonitorContendedEnterRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MonitorContendedEnteredRequestImpl') @:internal extern class EventRequestManagerImpl_MonitorContendedEnteredRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MonitorContendedEnteredRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MonitorWaitRequestImpl') @:internal extern class EventRequestManagerImpl_MonitorWaitRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MonitorWaitRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$MonitorWaitedRequestImpl') @:internal extern class EventRequestManagerImpl_MonitorWaitedRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.MonitorWaitedRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$StepRequestImpl') @:internal extern class EventRequestManagerImpl_StepRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.StepRequest
{
	@:overload public function depth() : Int;
	
	@:overload public function size() : Int;
	
	@:overload public function thread() : com.sun.jdi.ThreadReference;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ThreadDeathRequestImpl') @:internal extern class EventRequestManagerImpl_ThreadDeathRequestImpl extends EventRequestManagerImpl_ThreadVisibleEventRequestImpl implements com.sun.jdi.request.ThreadDeathRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ThreadStartRequestImpl') @:internal extern class EventRequestManagerImpl_ThreadStartRequestImpl extends EventRequestManagerImpl_ThreadVisibleEventRequestImpl implements com.sun.jdi.request.ThreadStartRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$WatchpointRequestImpl') @:internal extern class EventRequestManagerImpl_WatchpointRequestImpl extends EventRequestManagerImpl_ClassVisibleEventRequestImpl implements com.sun.jdi.request.WatchpointRequest
{
	@:overload public function field() : com.sun.jdi.Field;
	
	/**
	* Same as {@link #setEnabled <CODE>setEnabled(false)</CODE>}.
	* @throws InvalidRequestStateException if this request
	* has been deleted.
	*/
	@:overload override public function disable() : Void;
	
	/**
	* Enables or disables this event request. While this event request is
	* disabled, the event request will be ignored and the target VM
	* will not be stopped if any of its threads reaches the
	* event request.  Disabled event requests still exist,
	* and are included in event request lists such as
	* {@link EventRequestManager#breakpointRequests()}.
	*
	* @param val <code>true</code> if the event request is to be enabled;
	* <code>false</code> otherwise.
	* @throws InvalidRequestStateException if this request
	* has been deleted.
	* @throws IllegalThreadStateException if this is a StepRequest,
	* <code>val</code> is <code>true</code>, and the
	* thread named in the request has died.
	*/
	@:overload override public function setEnabled(val : Bool) : Void;
	
	/**
	* Restricts the events generated by this request to those in
	* which the currently executing instance ("this") is the object
	* specified.
	* <P>
	* Not all targets support this operation.
	* Use {@link VirtualMachine#canUseInstanceFilters()}
	* to determine if the operation is supported.
	* @since 1.4
	* @param instance the object which must be the current instance
	* in order to pass this filter.
	* @throws java.lang.UnsupportedOperationException if
	* the target virtual machine does not support this
	* operation.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:require(java4) @:overload override public function addInstanceFilter(instance : com.sun.jdi.ObjectReference) : Void;
	
	/**
	* Same as {@link #setEnabled <CODE>setEnabled(true)</CODE>}.
	* @throws InvalidRequestStateException if this request
	* has been deleted.
	* @throws IllegalThreadStateException if this is a StepRequest
	* and the thread named in the request has died.
	*/
	@:overload override public function enable() : Void;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	/**
	* Returns a value which describes the threads to suspend when the
	* requested event occurs in the target VM.
	* The returned value is  {@link #SUSPEND_ALL},
	* {@link #SUSPEND_EVENT_THREAD}, or {@link #SUSPEND_NONE}.
	*
	* @return the current suspend mode for this request
	*/
	@:overload override public function suspendPolicy() : Int;
	
	/**
	* Determines if this event request is currently enabled.
	*
	* @return <code>true</code> if enabled;
	* <code>false</code> otherwise.
	*/
	@:overload override public function isEnabled() : Bool;
	
	/**
	* Restricts the events generated by this request to those in
	* the given thread.
	* @param thread the thread to filter on.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:overload override public function addThreadFilter(thread : com.sun.jdi.ThreadReference) : Void;
	
	/**
	* Restricts the events generated by this request to those whose
	* location is in the given reference type or any of its subtypes.
	* An event will be generated for any location in a reference type
	* that can be safely cast to the given reference type.
	*
	* @param refType the reference type to filter on.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:overload override public function addClassFilter(refType : com.sun.jdi.ReferenceType) : Void;
	
	/**
	* Determines the threads to suspend when the requested event occurs
	* in the target VM. Use {@link #SUSPEND_ALL} to suspend all
	* threads in the target VM (the default). Use {@link #SUSPEND_EVENT_THREAD}
	* to suspend only the thread which generated the event. Use
	* {@link #SUSPEND_NONE} to suspend no threads.
	* <p>
	* Thread suspensions through events have the same functionality
	* as explicitly requested suspensions. See
	* {@link com.sun.jdi.ThreadReference#suspend} and
	* {@link com.sun.jdi.VirtualMachine#suspend} for details.
	*
	* @param policy the selected suspend policy.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Suspend policy may only be set in disabled requests.
	* @throws IllegalArgumentException if the policy argument
	* contains an illegal value.
	*/
	@:overload override public function setSuspendPolicy(policy : Int) : Void;
	
	/**
	* Add an arbitrary key/value "property" to this request.
	* The property can be used by a client of the JDI to
	* associate application information with the request;
	* These client-set properties are not used internally
	* by the JDI.
	* <p>
	* The <code>get/putProperty</code> methods provide access to
	* a small per-instance map. This is <b>not</b> to be confused
	* with {@link java.util.Properties}.
	* <p>
	* If value is null this method will remove the property.
	*
	* @see #getProperty
	*/
	@:overload override public function putProperty(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Returns the value of the property with the specified key.  Only
	* properties added with {@link #putProperty} will return
	* a non-null value.
	*
	* @return the value of this property or null
	* @see #putProperty
	*/
	@:overload override public function getProperty(key : Dynamic) : Dynamic;
	
	/**
	* Restricts the events generated by this request to those
	* whose location is in a class whose name matches a restricted
	* regular expression. Regular expressions are limited
	* to exact matches and patterns that begin with '*' or end with '*';
	* for example, "*.Foo" or "java.*".
	*
	* @param classPattern the pattern String to filter for.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:overload override public function addClassFilter(classPattern : String) : Void;
	
	/**
	* Restricts the events generated by this request to those
	* whose location is in a class whose name does <b>not</b> match this
	* restricted regular expression. Regular expressions are limited
	* to exact matches and patterns that begin with '*' or end with '*';
	* for example, "*.Foo" or "java.*".
	*
	* @param classPattern the pattern String to filter against.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:overload override public function addClassExclusionFilter(classPattern : String) : Void;
	
	/**
	* Limit the requested event to be reported at most once after a
	* given number of occurrences.  The event is not reported
	* the first <code>count - 1</code> times this filter is reached.
	* To request a one-off event, call this method with a count of 1.
	* <p>
	* Once the count reaches 0, any subsequent filters in this request
	* are applied. If none of those filters cause the event to be
	* suppressed, the event is reported. Otherwise, the event is not
	* reported. In either case subsequent events are never reported for
	* this request.
	*
	* @param count the number of ocurrences before generating an event.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	* @throws IllegalArgumentException if <CODE>count</CODE>
	* is less than one.
	*/
	@:overload override public function addCountFilter(count : Int) : Void;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$AccessWatchpointRequestImpl') @:internal extern class EventRequestManagerImpl_AccessWatchpointRequestImpl extends EventRequestManagerImpl_WatchpointRequestImpl implements com.sun.jdi.request.AccessWatchpointRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$ModificationWatchpointRequestImpl') @:internal extern class EventRequestManagerImpl_ModificationWatchpointRequestImpl extends EventRequestManagerImpl_WatchpointRequestImpl implements com.sun.jdi.request.ModificationWatchpointRequest
{
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$EventRequestManagerImpl$VMDeathRequestImpl') @:internal extern class EventRequestManagerImpl_VMDeathRequestImpl extends EventRequestManagerImpl_EventRequestImpl implements com.sun.jdi.request.VMDeathRequest
{
	@:overload override public function toString() : String;
	
	
}
