package com.sun.jdi.request;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
* Request for notification when a step occurs in the target VM.
* When an enabled StepRequest is satisfied, an
* {@link com.sun.jdi.event.EventSet event set} containing a
* {@link com.sun.jdi.event.StepEvent StepEvent} will be placed on the
* {@link com.sun.jdi.event.EventQueue EventQueue}.
* The collection of existing StepRequests is
* managed by the {@link EventRequestManager}
*
* @see com.sun.jdi.event.StepEvent
* @see com.sun.jdi.event.EventQueue
* @see EventRequestManager
*
* @author Robert Field
* @since  1.3
*/
@:require(java3) extern interface StepRequest extends com.sun.jdi.request.EventRequest
{
	/** Step into any newly pushed frames */
	public var STEP_INTO : Int;
	
	/** Step over any newly pushed frames */
	public var STEP_OVER : Int;
	
	/** Step out of the current frame */
	public var STEP_OUT : Int;
	
	/** Step to the next available location */
	public var STEP_MIN : Int;
	
	/** Step to the next location on a different line */
	public var STEP_LINE : Int;
	
	/**
	* @return the thread on which the step event is being requested.
	*/
	@:overload public function thread() : com.sun.jdi.ThreadReference;
	
	/**
	* @return the step size
	*/
	@:overload public function size() : Int;
	
	/**
	* @return the step depth
	*/
	@:overload public function depth() : Int;
	
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
	@:overload public function addClassFilter(refType : com.sun.jdi.ReferenceType) : Void;
	
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
	@:overload public function addClassFilter(classPattern : String) : Void;
	
	/**
	* Restricts the events generated by this request to those
	* whose location is in a class whose name does <b>not</b> match a
	* restricted regular expression. Regular expressions are limited
	* to exact matches and patterns that begin with '*' or end with '*';
	* for example, "*.Foo" or "java.*".
	*
	* @param classPattern the pattern String to filter against.
	* @throws InvalidRequestStateException if this request is currently
	* enabled or has been deleted.
	* Filters may be added only to disabled requests.
	*/
	@:overload public function addClassExclusionFilter(classPattern : String) : Void;
	
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
	@:require(java4) @:overload public function addInstanceFilter(instance : com.sun.jdi.ObjectReference) : Void;
	
	
}
