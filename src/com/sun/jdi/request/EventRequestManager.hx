package com.sun.jdi.request;
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
extern interface EventRequestManager extends com.sun.jdi.Mirror
{
	/**
	* Creates a new disabled {@link ClassPrepareRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link ClassPrepareRequest}
	*/
	@:overload public function createClassPrepareRequest() : com.sun.jdi.request.ClassPrepareRequest;
	
	/**
	* Creates a new disabled {@link ClassUnloadRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link ClassUnloadRequest}
	*/
	@:overload public function createClassUnloadRequest() : com.sun.jdi.request.ClassUnloadRequest;
	
	/**
	* Creates a new disabled {@link ThreadStartRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link ThreadStartRequest}
	*/
	@:overload public function createThreadStartRequest() : com.sun.jdi.request.ThreadStartRequest;
	
	/**
	* Creates a new disabled {@link ThreadDeathRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link ThreadDeathRequest}
	*/
	@:overload public function createThreadDeathRequest() : com.sun.jdi.request.ThreadDeathRequest;
	
	/**
	* Creates a new disabled {@link ExceptionRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	* <P>
	* A specific exception type and its subclasses can be selected
	* for exception events. Caught exceptions,  uncaught exceptions,
	* or both can be selected. Note, however, that
	* at the time an exception is thrown, it is not always
	* possible to determine whether it is truly caught. See
	* {@link com.sun.jdi.event.ExceptionEvent#catchLocation} for
	* details.
	* @param refType If non-null, specifies that exceptions which are
	*                instances of refType will be reported. Note: this
	*                will include instances of sub-types.  If null,
	*                all instances will be reported
	* @param notifyCaught If true, caught exceptions will be reported.
	* @param notifyUncaught If true, uncaught exceptions will be reported.
	*
	* @return the created {@link ExceptionRequest}
	*/
	@:overload public function createExceptionRequest(refType : com.sun.jdi.ReferenceType, notifyCaught : Bool, notifyUncaught : Bool) : com.sun.jdi.request.ExceptionRequest;
	
	/**
	* Creates a new disabled {@link MethodEntryRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link MethodEntryRequest}
	*/
	@:overload public function createMethodEntryRequest() : com.sun.jdi.request.MethodEntryRequest;
	
	/**
	* Creates a new disabled {@link MethodExitRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @return the created {@link MethodExitRequest}
	*/
	@:overload public function createMethodExitRequest() : com.sun.jdi.request.MethodExitRequest;
	
	/**
	* Creates a new disabled {@link MonitorContendedEnterRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canRequestMonitorEvents()}
	* to determine if the operation is supported.
	*
	* @return the created {@link MonitorContendedEnterRequest}
	* @throws java.lang.UnsupportedOperationException if
	* the target VM does not support this
	* operation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function createMonitorContendedEnterRequest() : com.sun.jdi.request.MonitorContendedEnterRequest;
	
	/**
	* Creates a new disabled {@link MonitorContendedEnteredRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canRequestMonitorEvents()}
	* to determine if the operation is supported.
	*
	* @return the created {@link MonitorContendedEnteredRequest}
	* @throws java.lang.UnsupportedOperationException if
	* the target VM does not support this
	* operation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function createMonitorContendedEnteredRequest() : com.sun.jdi.request.MonitorContendedEnteredRequest;
	
	/**
	* Creates a new disabled {@link MonitorWaitRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canRequestMonitorEvents()}
	* to determine if the operation is supported.
	*
	* @return the created {@link MonitorWaitRequest}
	* @throws java.lang.UnsupportedOperationException if
	* the target VM does not support this
	* operation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function createMonitorWaitRequest() : com.sun.jdi.request.MonitorWaitRequest;
	
	/**
	* Creates a new disabled {@link MonitorWaitedRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canRequestMonitorEvents()}
	* to determine if the operation is supported.
	*
	* @return the created {@link MonitorWaitedRequest}
	* @throws java.lang.UnsupportedOperationException if
	* the target VM does not support this
	* operation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function createMonitorWaitedRequest() : com.sun.jdi.request.MonitorWaitedRequest;
	
	/**
	* Creates a new disabled {@link StepRequest}.
	* The new event request is added to the list managed by this
	* EventRequestManager. Use {@link EventRequest#enable()} to
	* activate this event request.
	* <p>
	* The returned request will control stepping only in the specified
	* <code>thread</code>; all other threads will be unaffected.
	* A <code>size</code>value of {@link com.sun.jdi.request.StepRequest#STEP_MIN} will generate a
	* step event each time the code index changes. It represents the
	* smallest step size available and often maps to the instruction
	* level.
	* A <code>size</code> value of {@link com.sun.jdi.request.StepRequest#STEP_LINE} will generate a
	* step event each time the source line changes unless line number information is not available,
	* in which case a STEP_MIN will be done instead.  For example, no line number information is
	* available during the execution of a method that has been rendered obsolete by
	* by a {@link com.sun.jdi.VirtualMachine#redefineClasses} operation.
	* A <code>depth</code> value of {@link com.sun.jdi.request.StepRequest#STEP_INTO} will generate
	* step events in any called methods.  A <code>depth</code> value
	* of {@link com.sun.jdi.request.StepRequest#STEP_OVER} restricts step events to the current frame
	* or caller frames. A <code>depth</code> value of {@link com.sun.jdi.request.StepRequest#STEP_OUT}
	* restricts step events to caller frames only. All depth
	* restrictions are relative to the call stack immediately before the
	* step takes place.
	* <p>
	* Only one pending step request is allowed per thread.
	* <p>
	* Note that a typical debugger will want to cancel stepping
	* after the first step is detected.  Thus a next line method
	* would do the following:
	* <code>
	* <pre>
	*     EventRequestManager mgr = myVM.{@link VirtualMachine#eventRequestManager eventRequestManager}();
	*     StepRequest request = mgr.createStepRequest(myThread,
	*                                                 StepRequest.{@link StepRequest#STEP_LINE STEP_LINE},
	*                                                 StepRequest.{@link StepRequest#STEP_OVER STEP_OVER});
	*     request.{@link EventRequest#addCountFilter addCountFilter}(1);  // next step only
	*     request.enable();
	*     myVM.{@link VirtualMachine#resume resume}();
	* </pre>
	* </code>
	*
	* @param thread the thread in which to step
	* @param depth the step depth
	* @param size the step size
	* @return the created {@link StepRequest}
	* @throws DuplicateRequestException if there is already a pending
	* step request for the specified thread.
	* @throws IllegalArgumentException if the size or depth arguments
	* contain illegal values.
	*/
	@:overload public function createStepRequest(thread : com.sun.jdi.ThreadReference, size : Int, depth : Int) : com.sun.jdi.request.StepRequest;
	
	/**
	* Creates a new disabled {@link BreakpointRequest}.
	* The given {@link Location} must have a valid
	* (that is, non-negative) code index. The new
	* breakpoint is added to the list managed by this
	* EventRequestManager. Multiple breakpoints at the
	* same location are permitted. Use {@link EventRequest#enable()} to
	* activate this event request.
	*
	* @param location the location of the new breakpoint.
	* @return the created {@link BreakpointRequest}
	* @throws NativeMethodException if location is within a native method.
	*/
	@:overload public function createBreakpointRequest(location : com.sun.jdi.Location) : com.sun.jdi.request.BreakpointRequest;
	
	/**
	* Creates a new disabled watchpoint which watches accesses to the
	* specified field. The new
	* watchpoint is added to the list managed by this
	* EventRequestManager. Multiple watchpoints on the
	* same field are permitted.
	* Use {@link EventRequest#enable()} to
	* activate this event request.
	* <P>
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canWatchFieldAccess()}
	* to determine if the operation is supported.
	*
	* @param field the field to watch
	* @return the created watchpoint
	* @throws java.lang.UnsupportedOperationException if
	* the target virtual machine does not support this
	* operation.
	*/
	@:overload public function createAccessWatchpointRequest(field : com.sun.jdi.Field) : com.sun.jdi.request.AccessWatchpointRequest;
	
	/**
	* Creates a new disabled watchpoint which watches accesses to the
	* specified field. The new
	* watchpoint is added to the list managed by this
	* EventRequestManager. Multiple watchpoints on the
	* same field are permitted.
	* Use {@link EventRequest#enable()} to
	* activate this event request.
	* <P>
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canWatchFieldModification()}
	* to determine if the operation is supported.
	*
	* @param field the field to watch
	* @return the created watchpoint
	* @throws java.lang.UnsupportedOperationException if
	* the target virtual machine does not support this
	* operation.
	*/
	@:overload public function createModificationWatchpointRequest(field : com.sun.jdi.Field) : com.sun.jdi.request.ModificationWatchpointRequest;
	
	/**
	* Creates a new disabled {@link VMDeathRequest}.
	* The new request is added to the list managed by this
	* EventRequestManager.
	* Use {@link EventRequest#enable()} to
	* activate this event request.
	* <P>
	* This request (if enabled) will cause a
	* {@link com.sun.jdi.event.VMDeathEvent}
	* to be sent on termination of the target VM.
	* <P>
	* A VMDeathRequest with a suspend policy of
	* {@link EventRequest#SUSPEND_ALL SUSPEND_ALL}
	* can be used to assure processing of incoming
	* {@link EventRequest#SUSPEND_NONE SUSPEND_NONE} or
	* {@link EventRequest#SUSPEND_EVENT_THREAD SUSPEND_EVENT_THREAD}
	* events before VM death.  If all event processing is being
	* done in the same thread as event sets are being read,
	* enabling the request is all that is needed since the VM
	* will be suspended until the {@link com.sun.jdi.event.EventSet}
	* containing the {@link com.sun.jdi.event.VMDeathEvent}
	* is resumed.
	* <P>
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canRequestVMDeathEvent()}
	* to determine if the operation is supported.
	*
	* @return the created request
	* @throws java.lang.UnsupportedOperationException if
	* the target VM does not support this
	* operation.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function createVMDeathRequest() : com.sun.jdi.request.VMDeathRequest;
	
	/**
	* Removes an eventRequest. The eventRequest is disabled and
	* the removed from the requests managed by this
	* EventRequestManager. Once the eventRequest is deleted, no
	* operations (for example, {@link EventRequest#setEnabled})
	* are permitted - attempts to do so will generally cause an
	* {@link InvalidRequestStateException}.
	* No other eventRequests are effected.
	* <P>
	* Because this method changes the underlying lists of event
	* requests, attempting to directly delete from a list returned
	* by a request accessor (e.g. below):
	* <PRE>
	*   Iterator iter = requestManager.stepRequests().iterator();
	*   while (iter.hasNext()) {
	*      requestManager.deleteEventRequest(iter.next());
	*  }
	* </PRE>
	* may cause a {@link java.util.ConcurrentModificationException}.
	* Instead use
	* {@link #deleteEventRequests(List) deleteEventRequests(List)}
	* or copy the list before iterating.
	*
	* @param eventRequest the eventRequest to remove
	*/
	@:overload public function deleteEventRequest(eventRequest : com.sun.jdi.request.EventRequest) : Void;
	
	/**
	* Removes a list of {@link EventRequest}s.
	*
	* @see #deleteEventRequest(EventRequest)
	*
	* @param eventRequests the list of eventRequests to remove
	*/
	@:overload public function deleteEventRequests(eventRequests : java.util.List<com.sun.jdi.request.EventRequest>) : Void;
	
	/**
	* Remove all breakpoints managed by this EventRequestManager.
	*
	* @see #deleteEventRequest(EventRequest)
	*/
	@:overload public function deleteAllBreakpoints() : Void;
	
	/**
	* Return an unmodifiable list of the enabled and disabled step requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link StepRequest} objects.
	*/
	@:overload public function stepRequests() : java.util.List<com.sun.jdi.request.StepRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled class prepare requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ClassPrepareRequest} objects.
	*/
	@:overload public function classPrepareRequests() : java.util.List<com.sun.jdi.request.ClassPrepareRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled class unload requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ClassUnloadRequest} objects.
	*/
	@:overload public function classUnloadRequests() : java.util.List<com.sun.jdi.request.ClassUnloadRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled thread start requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ThreadStartRequest} objects.
	*/
	@:overload public function threadStartRequests() : java.util.List<com.sun.jdi.request.ThreadStartRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled thread death requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ThreadDeathRequest} objects.
	*/
	@:overload public function threadDeathRequests() : java.util.List<com.sun.jdi.request.ThreadDeathRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled exception requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ExceptionRequest} objects.
	*/
	@:overload public function exceptionRequests() : java.util.List<com.sun.jdi.request.ExceptionRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled breakpoint requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link BreakpointRequest} objects.
	*/
	@:overload public function breakpointRequests() : java.util.List<com.sun.jdi.request.BreakpointRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled access
	* watchpoint requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link AccessWatchpointRequest} objects.
	*/
	@:overload public function accessWatchpointRequests() : java.util.List<com.sun.jdi.request.AccessWatchpointRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled modification
	* watchpoint requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the all {@link ModificationWatchpointRequest} objects.
	*/
	@:overload public function modificationWatchpointRequests() : java.util.List<com.sun.jdi.request.ModificationWatchpointRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled method entry requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MethodEntryRequest} objects.
	*/
	@:overload public function methodEntryRequests() : java.util.List<com.sun.jdi.request.MethodEntryRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled method exit requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MethodExitRequest} objects.
	*/
	@:overload public function methodExitRequests() : java.util.List<com.sun.jdi.request.MethodExitRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled monitor contended enter requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MonitorContendedEnterRequest} objects.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function monitorContendedEnterRequests() : java.util.List<com.sun.jdi.request.MonitorContendedEnterRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled monitor contended entered requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MonitorContendedEnteredRequest} objects.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function monitorContendedEnteredRequests() : java.util.List<com.sun.jdi.request.MonitorContendedEnteredRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled monitor wait requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MonitorWaitRequest} objects.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function monitorWaitRequests() : java.util.List<com.sun.jdi.request.MonitorWaitRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled monitor waited requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* @return the list of all {@link MonitorWaitedRequest} objects.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function monitorWaitedRequests() : java.util.List<com.sun.jdi.request.MonitorWaitedRequest>;
	
	/**
	* Return an unmodifiable list of the enabled and disabled VM death requests.
	* This list is a live view of these requests and thus changes as requests
	* are added and deleted.
	* Note: the unsolicited VMDeathEvent does not have a
	* corresponding request.
	* @return the list of all {@link VMDeathRequest} objects.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function vmDeathRequests() : java.util.List<com.sun.jdi.request.VMDeathRequest>;
	
	
}
