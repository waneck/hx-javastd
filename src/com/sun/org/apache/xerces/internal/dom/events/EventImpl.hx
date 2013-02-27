package com.sun.org.apache.xerces.internal.dom.events;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class EventImpl implements org.w3c.dom.events.Event
{
	/**
	* EventImpl is an implementation of the basic "generic" DOM Level 2 Event
	* object. It may be subclassed by more specialized event sets.
	* Note that in our implementation, events are re-dispatchable (dispatch
	* clears the stopPropagation and preventDefault flags before it starts);
	* I believe that is the DOM's intent but I don't see an explicit statement
	* to this effect.
	*
	* @xerces.internal
	*
	*/
	public var type : String;
	
	public var target : org.w3c.dom.events.EventTarget;
	
	public var currentTarget : org.w3c.dom.events.EventTarget;
	
	public var eventPhase : java.StdTypes.Int16;
	
	public var initialized : Bool;
	
	private var timeStamp : haxe.Int64;
	
	/** The DOM doesn't deal with constructors, so instead we have an
	initializer call to set most of the read-only fields. The
	others are set, and reset, by the event subsystem during dispatch.
	<p>
	Note that init() -- and the subclass-specific initWhatever() calls --
	may be reinvoked. At least one initialization is required; repeated
	initializations overwrite the event with new values of their
	parameters.
	*/
	@:overload public function initEvent(eventTypeArg : String, canBubbleArg : Bool, cancelableArg : Bool) : Void;
	
	/** @return true iff this Event is of a class and type which supports
	bubbling. In the generic case, this is True.
	*/
	@:overload public function getBubbles() : Bool;
	
	/** @return true iff this Event is of a class and type which (a) has a
	Default Behavior in this DOM, and (b)allows cancellation (blocking)
	of that behavior. In the generic case, this is False.
	*/
	@:overload public function getCancelable() : Bool;
	
	/** @return the Node (EventTarget) whose EventListeners are currently
	being processed. During capture and bubble phases, this may not be
	the target node. */
	@:overload public function getCurrentTarget() : org.w3c.dom.events.EventTarget;
	
	/** @return the current processing phase for this event --
	CAPTURING_PHASE, AT_TARGET, BUBBLING_PHASE. (There may be
	an internal DEFAULT_PHASE as well, but the users won't see it.) */
	@:overload public function getEventPhase() : java.StdTypes.Int16;
	
	/** @return the EventTarget (Node) to which the event was originally
	dispatched.
	*/
	@:overload public function getTarget() : org.w3c.dom.events.EventTarget;
	
	/** @return event name as a string
	*/
	@:overload public function getType() : String;
	
	@:overload public function getTimeStamp() : haxe.Int64;
	
	/** Causes exit from in-progress event dispatch before the next
	currentTarget is selected. Replaces the preventBubble() and
	preventCapture() methods which were present in early drafts;
	they may be reintroduced in future levels of the DOM. */
	@:overload public function stopPropagation() : Void;
	
	/** Prevents any default processing built into the target node from
	occurring.
	*/
	@:overload public function preventDefault() : Void;
	
	
}
