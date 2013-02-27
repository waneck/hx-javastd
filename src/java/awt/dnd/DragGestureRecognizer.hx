package java.awt.dnd;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DragGestureRecognizer implements java.io.Serializable
{
	/**
	* Construct a new <code>DragGestureRecognizer</code>
	* given the <code>DragSource</code> to be used
	* in this Drag and Drop operation, the <code>Component</code>
	* this <code>DragGestureRecognizer</code> should "observe"
	* for drag initiating gestures, the action(s) supported
	* for this Drag and Drop operation, and the
	* <code>DragGestureListener</code> to notify
	* once a drag initiating gesture has been detected.
	* <P>
	* @param ds  the <code>DragSource</code> this
	* <code>DragGestureRecognizer</code>
	* will use to process the Drag and Drop operation
	*
	* @param c the <code>Component</code>
	* this <code>DragGestureRecognizer</code>
	* should "observe" the event stream to,
	* in order to detect a drag initiating gesture.
	* If this value is <code>null</code>, the
	* <code>DragGestureRecognizer</code>
	* is not associated with any <code>Component</code>.
	*
	* @param sa  the set (logical OR) of the
	* <code>DnDConstants</code>
	* that this Drag and Drop operation will support
	*
	* @param dgl the <code>DragGestureRecognizer</code>
	* to notify when a drag gesture is detected
	* <P>
	* @throws <code>IllegalArgumentException</code>
	* if ds is <code>null</code>.
	*/
	@:overload private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, sa : Int, dgl : java.awt.dnd.DragGestureListener) : Void;
	
	/**
	* Construct a new <code>DragGestureRecognizer</code>
	* given the <code>DragSource</code> to be used in this
	* Drag and Drop
	* operation, the <code>Component</code> this
	* <code>DragGestureRecognizer</code> should "observe"
	* for drag initiating gestures, and the action(s)
	* supported for this Drag and Drop operation.
	* <P>
	* @param ds  the <code>DragSource</code> this
	* <code>DragGestureRecognizer</code> will use to
	* process the Drag and Drop operation
	*
	* @param c   the <code>Component</code> this
	* <code>DragGestureRecognizer</code> should "observe" the event
	* stream to, in order to detect a drag initiating gesture.
	* If this value is <code>null</code>, the
	* <code>DragGestureRecognizer</code>
	* is not associated with any <code>Component</code>.
	*
	* @param sa the set (logical OR) of the <code>DnDConstants</code>
	* that this Drag and Drop operation will support
	* <P>
	* @throws <code>IllegalArgumentException</code>
	* if ds is <code>null</code>.
	*/
	@:overload private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, sa : Int) : Void;
	
	/**
	* Construct a new <code>DragGestureRecognizer</code>
	* given the <code>DragSource</code> to be used
	* in this Drag and Drop operation, and
	* the <code>Component</code> this
	* <code>DragGestureRecognizer</code>
	* should "observe" for drag initiating gestures.
	* <P>
	* @param ds the <code>DragSource</code> this
	* <code>DragGestureRecognizer</code>
	* will use to process the Drag and Drop operation
	*
	* @param c the <code>Component</code>
	* this <code>DragGestureRecognizer</code>
	* should "observe" the event stream to,
	* in order to detect a drag initiating gesture.
	* If this value is <code>null</code>,
	* the <code>DragGestureRecognizer</code>
	* is not associated with any <code>Component</code>.
	* <P>
	* @throws <code>IllegalArgumentException</code>
	* if ds is <code>null</code>.
	*/
	@:overload private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component) : Void;
	
	/**
	* Construct a new <code>DragGestureRecognizer</code>
	* given the <code>DragSource</code> to be used in this
	* Drag and Drop operation.
	* <P>
	* @param ds the <code>DragSource</code> this
	* <code>DragGestureRecognizer</code> will
	* use to process the Drag and Drop operation
	* <P>
	* @throws <code>IllegalArgumentException</code>
	* if ds is <code>null</code>.
	*/
	@:overload private function new(ds : java.awt.dnd.DragSource) : Void;
	
	/**
	* register this DragGestureRecognizer's Listeners with the Component
	*
	* subclasses must override this method
	*/
	@:overload @:abstract private function registerListeners() : Void;
	
	/**
	* unregister this DragGestureRecognizer's Listeners with the Component
	*
	* subclasses must override this method
	*/
	@:overload @:abstract private function unregisterListeners() : Void;
	
	/**
	* This method returns the <code>DragSource</code>
	* this <code>DragGestureRecognizer</code>
	* will use in order to process the Drag and Drop
	* operation.
	* <P>
	* @return the DragSource
	*/
	@:overload public function getDragSource() : java.awt.dnd.DragSource;
	
	/**
	* This method returns the <code>Component</code>
	* that is to be "observed" by the
	* <code>DragGestureRecognizer</code>
	* for drag initiating gestures.
	* <P>
	* @return The Component this DragGestureRecognizer
	* is associated with
	*/
	@:overload @:synchronized public function getComponent() : java.awt.Component;
	
	/**
	* set the Component that the DragGestureRecognizer is associated with
	*
	* registerListeners() and unregisterListeners() are called as a side
	* effect as appropriate.
	* <P>
	* @param c The <code>Component</code> or <code>null</code>
	*/
	@:overload @:synchronized public function setComponent(c : java.awt.Component) : Void;
	
	/**
	* This method returns an int representing the
	* type of action(s) this Drag and Drop
	* operation will support.
	* <P>
	* @return the currently permitted source action(s)
	*/
	@:overload @:synchronized public function getSourceActions() : Int;
	
	/**
	* This method sets the permitted source drag action(s)
	* for this Drag and Drop operation.
	* <P>
	* @param actions the permitted source drag action(s)
	*/
	@:overload @:synchronized public function setSourceActions(actions : Int) : Void;
	
	/**
	* This method returns the first event in the
	* series of events that initiated
	* the Drag and Drop operation.
	* <P>
	* @return the initial event that triggered the drag gesture
	*/
	@:overload public function getTriggerEvent() : java.awt.event.InputEvent;
	
	/**
	* Reset the Recognizer, if its currently recognizing a gesture, ignore
	* it.
	*/
	@:overload public function resetRecognizer() : Void;
	
	/**
	* Register a new <code>DragGestureListener</code>.
	* <P>
	* @param dgl the <code>DragGestureListener</code> to register
	* with this <code>DragGestureRecognizer</code>.
	* <P>
	* @throws java.util.TooManyListenersException if a
	* <code>DragGestureListener</code> has already been added.
	*/
	@:overload @:synchronized public function addDragGestureListener(dgl : java.awt.dnd.DragGestureListener) : Void;
	
	/**
	* unregister the current DragGestureListener
	* <P>
	* @param dgl the <code>DragGestureListener</code> to unregister
	* from this <code>DragGestureRecognizer</code>
	* <P>
	* @throws <code>IllegalArgumentException</code> if
	* dgl is not (equal to) the currently registered <code>DragGestureListener</code>.
	*/
	@:overload @:synchronized public function removeDragGestureListener(dgl : java.awt.dnd.DragGestureListener) : Void;
	
	/**
	* Notify the DragGestureListener that a Drag and Drop initiating
	* gesture has occurred. Then reset the state of the Recognizer.
	* <P>
	* @param dragAction The action initially selected by the users gesture
	* @param p          The point (in Component coords) where the gesture originated
	*/
	@:overload @:synchronized private function fireDragGestureRecognized(dragAction : Int, p : java.awt.Point) : Void;
	
	/**
	* Listeners registered on the Component by this Recognizer shall record
	* all Events that are recognized as part of the series of Events that go
	* to comprise a Drag and Drop initiating gesture via this API.
	*<P>
	* This method is used by a <code>DragGestureRecognizer</code>
	* implementation to add an <code>InputEvent</code>
	* subclass (that it believes is one in a series
	* of events that comprise a Drag and Drop operation)
	* to the array of events that this
	* <code>DragGestureRecognizer</code> maintains internally.
	* <P>
	* @param awtie the <code>InputEvent</code>
	* to add to this <code>DragGestureRecognizer</code>'s
	* internal array of events. Note that <code>null</code>
	* is not a valid value, and will be ignored.
	*/
	@:overload @:synchronized private function appendEvent(awtie : java.awt.event.InputEvent) : Void;
	
	/**
	* The <code>DragSource</code>
	* associated with this
	* <code>DragGestureRecognizer</code>.
	*
	* @serial
	*/
	private var dragSource : java.awt.dnd.DragSource;
	
	/**
	* The <code>Component</code>
	* associated with this <code>DragGestureRecognizer</code>.
	*
	* @serial
	*/
	private var component : java.awt.Component;
	
	/**
	* The <code>DragGestureListener</code>
	* associated with this <code>DragGestureRecognizer</code>.
	*/
	@:transient private var dragGestureListener : java.awt.dnd.DragGestureListener;
	
	/**
	* An <code>int</code> representing
	* the type(s) of action(s) used
	* in this Drag and Drop operation.
	*
	* @serial
	*/
	private var sourceActions : Int;
	
	/**
	* The list of events (in order) that
	* the <code>DragGestureRecognizer</code>
	* "recognized" as a "gesture" that triggers a drag.
	*
	* @serial
	*/
	private var events : java.util.ArrayList<java.awt.event.InputEvent>;
	
	
}
