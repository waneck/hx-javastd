package sun.java2d;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
* This class provides a basic pre-packaged implementation of the
* complete {@link StateTrackable} interface with implementations
* of the required methods in the interface and methods to manage
* transitions in the state of the object.
* Classes which wish to implement StateTrackable could create an
* instance of this class and delegate all of their implementations
* for {@code StateTrackable} methods to the corresponding methods
* of this class.
*/
extern class StateTrackableDelegate implements sun.java2d.StateTrackable
{
	/**
	* The {@code UNTRACKABLE_DELEGATE} provides an implementation
	* of the StateTrackable interface that is permanently in the
	* {@link State#UNTRACKABLE UNTRACKABLE} state.
	*/
	public static var UNTRACKABLE_DELEGATE(default, null) : StateTrackableDelegate;
	
	/**
	* The {@code IMMUTABLE_DELEGATE} provides an implementation
	* of the StateTrackable interface that is permanently in the
	* {@link State#IMMUTABLE IMMUTABLE} state.
	*/
	public static var IMMUTABLE_DELEGATE(default, null) : StateTrackableDelegate;
	
	/**
	* Returns a {@code StateTrackableDelegate} instance with the
	* specified initial {@link State State}.
	* If the specified {@code State} is
	* {@link State#UNTRACKABLE UNTRACKABLE} or
	* {@link State#IMMUTABLE IMMUTABLE}
	* then the approprirate static instance
	* {@link #UNTRACKABLE_DELEGATE} or {@link #IMMUTABLE_DELEGATE}
	* is returned.
	*/
	@:overload public static function createInstance(state : sun.java2d.StateTrackable.StateTrackable_State) : StateTrackableDelegate;
	
	/**
	* @inheritDoc
	* @since 1.7
	*/
	@:require(java7) @:overload public function getState() : sun.java2d.StateTrackable.StateTrackable_State;
	
	/**
	* @inheritDoc
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized public function getStateTracker() : sun.java2d.StateTracker;
	
	/**
	* This method provides an easy way for delegating classes to
	* change the overall {@link State State} of the delegate to
	* {@link State#IMMUTABLE IMMUTABLE}.
	* @throws IllegalStateException if the current state is
	*         {@link State#UNTRACKABLE UNTRACKABLE}
	* @see #setUntrackable
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized public function setImmutable() : Void;
	
	/**
	* This method provides an easy way for delegating classes to
	* change the overall {@link State State} of the delegate to
	* {@link State#UNTRACKABLE UNTRACKABLE}.
	* This method is typically called when references to the
	* internal data buffers have been made public.
	* @throws IllegalStateException if the current state is
	*         {@link State#IMMUTABLE IMMUTABLE}
	* @see #setImmutable
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized public function setUntrackable() : Void;
	
	/**
	* This method provides an easy way for delegating classes to
	* manage temporarily setting the overall {@link State State}
	* of the delegate to {@link State#DYNAMIC DYNAMIC}
	* during well-defined time frames of dynamic pixel updating.
	* This method should be called once before each flow of control
	* that might dynamically update the pixels in an uncontrolled
	* or unpredictable fashion.
	* <p>
	* The companion method {@link #removeDynamicAgent} method should
	* also be called once after each such flow of control has ended.
	* Failing to call the remove method will result in this object
	* permanently becoming {@link State#DYNAMIC DYNAMIC}
	* and therefore effectively untrackable.
	* <p>
	* This method will only change the {@link State State} of the
	* delegate if it is currently {@link State#STABLE STABLE}.
	*
	* @throws IllegalStateException if the current state is
	*         {@link State#IMMUTABLE IMMUTABLE}
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized public function addDynamicAgent() : Void;
	
	/**
	* This method provides an easy way for delegating classes to
	* manage restoring the overall {@link State State} of the
	* delegate back to {@link State#STABLE STABLE}
	* after a well-defined time frame of dynamic pixel updating.
	* This method should be called once after each flow of control
	* that might dynamically update the pixels in an uncontrolled
	* or unpredictable fashion has ended.
	* <p>
	* The companion method {@link #addDynamicAgent} method should
	* have been called at some point before each such flow of
	* control began.
	* If this method is called without having previously called
	* the add method, the {@link State State} of this object
	* will become unreliable.
	* <p>
	* This method will only change the {@link State State} of the
	* delegate if the number of outstanding dynamic agents has
	* gone to 0 and it is currently
	* {@link State#DYNAMIC DYNAMIC}.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized private function removeDynamicAgent() : Void;
	
	/**
	* This method provides an easy way for delegating classes to
	* indicate that the contents have changed.
	* This method will invalidate outstanding StateTracker objects
	* so that any other agents which maintain cached information
	* about the pixels will know to refresh their cached copies.
	* This method should be called after every modification to
	* the data, such as any calls to any of the setElem methods.
	* <p>
	* Note that, for efficiency, this method does not check the
	* {@link State State} of the object to see if it is compatible
	* with being marked dirty
	* (i.e. not {@link State#IMMUTABLE IMMUTABLE}).
	* It is up to the callers to enforce the fact that an
	* {@code IMMUTABLE} delegate is never modified.
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function markDirty() : Void;
	
	
}
